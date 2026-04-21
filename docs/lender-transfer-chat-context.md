# Lender Transfer — Chat Context Export

Export of the conversation on lender ownership transfer and backdated payment reallocation.

---

## 1. Original Question

> Is there any pipeline that calls an API to change the lender of a loan account?

**Answer:** No dedicated pipeline. The only write-to-TMO pipelines are `PL_POST_ADD_FUNDINGS` / `PL_CHILD_POST_ADD_FUNDINGS` (and `_DEV` variants), which POST fund adjustments, not lender changes.

---

## 2. How Lender Change Works Today

Lender change is modeled as a **fund-transfer adjustment** posted through TMO's `AddFundings` endpoint. TMO has no dedicated "change lender" API — ownership is implicit from whoever holds the funded balance.

### Flow

1. A row is inserted into `fund_adjustment_detail` with:
   - `account_no` = loan
   - `account_code` = source lender
   - `portfolio_account_code` = destination lender
   - `adjustment_type = 'T'` (Transfer)
   - `adjustment_amt`, `is_processed = 0`

2. `vw_post_fund_adjustment_base` (`sql/ddl.sql:15063`) builds a two-leg JSON body per `T` row:
   - Leg 1: `LenderAccount = account_code`, `Amount = +adjustment_amt`
   - Leg 2 (T only): `LenderAccount = portfolio_account_code`, `Amount = -adjustment_amt`

3. `vw_post_fund_adjustment` aggregates legs per `account_no` with `STRING_AGG`.

4. `PL_POST_ADD_FUNDINGS` pipeline:
   - `LOOKUP_POST_FUND_ADJUSTMENT` → reads view
   - `ForEach1` → per loan, calls `PL_CHILD_POST_ADD_FUNDINGS`
   - Child does `WebActivity` POST to TMO's `AddFundings`, then updates `fund_adjustment_detail.is_processed = 1`
   - After loop: `PL_LOAD_FUND_ADJUSTMENT_LENDER_PORTFOLIO` refreshes affected lenders' portfolios from TMO

### Sample POST Body

```json
[
  {"LoanAccount": "L-123","LenderAccount": " LENDER-A","TransDate": " 04/15/2026","Amount": " 100000.00"},
  {"LoanAccount": "L-123","LenderAccount": " LENDER-B","TransDate": " 04/15/2026","Amount": " -100000.00"}
]
```

---

## 3. The Problem

When we transfer a loan from Lender A to Lender B:

- Transfer is **posted** on the run date (e.g. 5th March).
- Business **effective date** is earlier (e.g. 28th February).
- Payments received between 1st–5th March were allocated by TMO to Lender A, but should belong to Lender B.
- The transfer amount should reflect Lender A's funded balance **as of 28th February**, not 5th March.

### Window Rule (Confirmed with Business)

- Window = `(effective_date, adjustment_date]`
- Payments on the effective date stay with Lender A.
- Payments on or after `effective_date + 1` up to and including `adjustment_date` move to Lender B.

---

## 4. Key API Discovery

### TMO endpoints that matter

| API | Use |
|---|---|
| `AddFundings` | POST — moves funded capital per lender (+/− entries). Used for both ownership transfer and compensating catch-up. |
| `search-lender-history` | GET — returns per-lender transactions for a date window (`LoanAccount`, `PmtDateRec`, `ToInterest`, `ToPrincipal`, `ToLateCharge`, `ToOtherPayments`, etc.). Source of truth for "what Lender A received in the window". |

### What AddFundings does *not* do

- Does **not** move received payments. It moves funded capital (ownership stake) only.
- Does **not** retroactively re-run payment allocation when back-dated.

---

## 5. TMO Team Response (Andrei)

> "TMO won't allow you to post funding prior interest paid to date (or billed through) on the loan. The only way around this is deleting any payments that were posted or deleting billing statement and then posting funding and re-entering payments.
>
> It will allow to update funding if you are posting payment as other cash from borrower, but it won't retroactively revert and re-apply the payment. You will have to do it manually if there is a need to re-run the payment distribution based on updated funding."

### Implications

| Path | Status |
|---|---|
| Back-dated `AddFundings` + TMO auto-reallocation | **Blocked.** |
| Delete payments → post back-dated funding → re-enter | Destructive; breaks audit trail. |
| Compensating `AddFundings` entries dated today | **Feasible.** No deletion, just offsetting entries. |

---

## 6. Proposed Approach — Compensating Entries

**Principle:** Don't delete anything. Post new `AddFundings` entries today that offset the problem. Original payment records remain intact for audit; net funded positions land correctly.

### What gets posted per loan

One `AddFundings` call containing:

1. **Ownership transfer pair** — amount = Lender A's funded balance as of `effective_date`:
   - Lender A: −X
   - Lender B: +X

2. **Payment catch-up pairs** — one per payment received in the window, amount = payment total:
   - Lender A: −Y
   - Lender B: +Y

### Example body

```json
[
  {"LoanAccount":"L-123","LenderAccount":"LenderA","Amount":"-500000","TransDate":"03/05/2026"},
  {"LoanAccount":"L-123","LenderAccount":"LenderB","Amount":"500000","TransDate":"03/05/2026"},

  {"LoanAccount":"L-123","LenderAccount":"LenderA","Amount":"-1500","TransDate":"03/05/2026"},
  {"LoanAccount":"L-123","LenderAccount":"LenderB","Amount":"1500","TransDate":"03/05/2026"},

  {"LoanAccount":"L-123","LenderAccount":"LenderA","Amount":"-2000","TransDate":"03/05/2026"},
  {"LoanAccount":"L-123","LenderAccount":"LenderB","Amount":"2000","TransDate":"03/05/2026"}
]
```

All legs fold into one POST because `STRING_AGG` in `vw_post_fund_adjustment` already groups by `account_no`.

---

## 7. Build Plan

### Components

| Component | Purpose |
|---|---|
| New `api_master` row `SEARCH_LENDER_HISTORY` | Registers GET endpoint |
| New columns on `fund_adjustment_detail`: `effective_date`, `adjustment_date`, `source_rec_id` | Window + idempotency key |
| New `stg_lender_history_window` table | Lands TMO response |
| New `PL_CHILD_FETCH_LENDER_HISTORY` pipeline | Calls TMO, stages response |
| New `PL_EXPAND_TRANSFER_REASSIGNMENT` pipeline | Orchestrates fetch → expand |
| New `sp_expand_transfer_reassignment` stored proc | Inserts catch-up `T` rows per payment |
| Tweak to `vw_post_fund_adjustment_base` (`sql/ddl.sql:15063`) | Use `adjustment_date` for `TransDate` instead of `getdate()` |
| Hook in `PL_POST_ADD_FUNDINGS` | Run expansion **before** existing ForEach |

No new pipeline needed for posting — existing `PL_POST_ADD_FUNDINGS` handles the batched call.

### Stored proc logic

For each pending `T` row + each staged payment matching (`LoanAccount = account_no` AND `LenderAccount = old_lender` AND `PmtDateRec BETWEEN effective_date + 1 AND adjustment_date`):

- Compute `reassign_amt = ToInterest + ToPrincipal + ToLateCharge + ToOtherPayments + ToPrepay + ToChargesInt + ToChargesPrin + ToOtherTaxable + ToOtherTaxFree + ToServiceFee + ToDefaultInterest` (exclude `ToTrust`, `ToGST`).
- Skip rows where `reassign_amt = 0`.
- Insert `T` row into `fund_adjustment_detail` with:
  - `account_no = LoanAccount`
  - `account_code = old lender`
  - `portfolio_account_code = new lender`
  - `adjustment_amt = reassign_amt`
  - `adjustment_date = PmtDateRec`
  - `source_rec_id = TMO RecID` (for idempotency)
  - same `batch_id` as primary transfer

---

## 8. Open Questions

Pending confirmation from TMO team and business:

1. **TMO confirmation** — is the compensating entries approach supported, with no side effects? (Email sent to Andrei.)
2. **Which payment buckets count** as "received amount"? Default: exclude `ToTrust` and `ToGST`.
3. **Effective date source** — operator-entered or derived from Salesforce?
4. **Granularity** — one catch-up row per TMO `RecID` (audit) vs one aggregated per loan (fewer rows).
5. **Partial transfers** — if only X% of ownership moves, does catch-up scale to X% of Lender A's receipts?

---

## 9. Referenced Files

- `pipeline/PL_POST_ADD_FUNDINGS.json` — parent pipeline, reads `vw_post_fund_adjustment`, ForEach child per loan
- `pipeline/PL_CHILD_POST_ADD_FUNDINGS.json` — WebActivity POST to TMO, then UPDATE `fund_adjustment_detail`
- `pipeline/PL_LOAD_FUND_ADJUSTMENT_LENDER_PORTFOLIO.json` — post-transfer portfolio refresh
- `sql/ddl.sql:6466` — `fund_adjustment_detail` table definition
- `sql/ddl.sql:15030` — `vw_post_fund_adjustment` view
- `sql/ddl.sql:15063` — `vw_post_fund_adjustment_base` view (builds JSON legs)
- `sql/ddl.sql:14305` — `vw_latest_fund_adjusted_lender` view (drives post-POST portfolio refresh)
- `sql/ddl.sql:15489` — `vw_unprocessed_fund_adjustment_detail` view
- `sql/ddl.sql:5931` — `fct_loan_history` table (loan transaction ledger)
- `TMO API.postman_collection.json` — TMO API documentation
- `docs/lender-transfer-effective-date-proposal.md` — proposal doc pushed earlier

---

## 10. Draft Email to TMO (Sent)

Subject: *Follow-up — Confirming Compensating AddFundings Approach*

Asking Andrei to confirm:
- Posting compensating `AddFundings` entries (negative on old lender, positive on new) dated today is supported.
- Each lender's funded balance updates correctly.
- No side effects to watch for.

---

*Exported on 2026-04-21.*
