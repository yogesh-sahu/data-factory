# Lender Transfer — Effective Date Reassignment Proposal

## The problem

When we transfer a loan from **Lender A** to **Lender B**, the transfer takes effect **today** in TMO — but the business **effective date** is usually earlier (e.g. 20 Feb while we post on 5 Mar). Any payments that came in between the effective date and the adjustment date were paid to Lender A, even though the loan was really Lender B's. Lender B is owed that money.

## How ownership transfer works today

1. A row is inserted into `fund_adjustment_detail` with `adjustment_type = 'T'`, old lender in `account_code`, new lender in `portfolio_account_code`, and the transfer amount.
2. `PL_POST_ADD_FUNDINGS` reads `vw_post_fund_adjustment` and, via `vw_post_fund_adjustment_base`, builds a **2-leg JSON body**:
   - `+amount` on old lender
   - `-amount` on new lender
3. It POSTs to TMO's `AddFundings` endpoint.
4. `PL_LOAD_FUND_ADJUSTMENT_LENDER_PORTFOLIO` re-reads the affected lenders' portfolios from TMO so Azure SQL reflects the new ownership.

**Gap:** The transfer is booked on the run date (e.g. 5 Mar). Anything received on the loan between the real effective date and the run date stays with Lender A.

## What we will do

1. **Capture two dates per transfer request:**
   - `effective_date` — when ownership really moves (business input).
   - `adjustment_date` — when we post to TMO (defaults to today).
2. **Call TMO's `search-lender-history` API** for Lender A on the loan, window = `(effective_date, adjustment_date]` (exclusive on effective date, inclusive on adjustment date).
3. **For every payment in that window**, auto-generate a catch-up `T` row in `fund_adjustment_detail`:
   - Move the payment's amount from Lender A to Lender B.
   - Dated on the day the payment happened (`PmtDateRec`), so TMO's ledger is accurate.
4. **Post everything in one batch** to TMO — the primary ownership transfer plus all catch-up entries ride the existing `PL_POST_ADD_FUNDINGS` flow.

## Window rule (confirmed with business)

Payments landing **on** the effective date stay with Lender A.
Window = `(effective_date, adjustment_date]`, so `from = effective_date + 1 day`, `to = adjustment_date`.

## Components to build

| Component | Purpose |
|---|---|
| `api_master` row `SEARCH_LENDER_HISTORY` | Registers the new GET endpoint |
| `effective_date`, `adjustment_date`, `source_rec_id` columns on `fund_adjustment_detail` | Capture window + idempotency key |
| `stg_lender_history_window` table | Lands the TMO response |
| `PL_CHILD_FETCH_LENDER_HISTORY` | Calls TMO, stages the response |
| `PL_EXPAND_TRANSFER_REASSIGNMENT` | Orchestrates: fetch → expand → hand back to existing flow |
| `sp_expand_transfer_reassignment` | For each staged payment, inserts a catch-up `T` row |
| Tweak to `vw_post_fund_adjustment_base` | Use `adjustment_date` for `TransDate` instead of `getdate()` |
| Hook in `PL_POST_ADD_FUNDINGS` | Run expansion **before** the existing ForEach |

No new pipeline is needed for posting — the catch-up rows ride the existing `AddFundings` call per loan, since `STRING_AGG` already groups legs by `account_no`.

## Outcome

- Lender B owns the loan going forward.
- Lender B is credited every payment that arrived after the effective date.
- Lender A is made whole — no money they weren't entitled to.
- Payments on the effective date stay with Lender A.
- Single audit trail per transfer, all flowing through the existing pipeline.

## Open questions for business

1. **Which payment buckets count?** Default assumption: move `ToInterest + ToPrincipal + ToLateCharge + ToOtherPayments + ToPrepay + ToChargesInt + ToChargesPrin + ToOtherTaxable + ToOtherTaxFree + ToServiceFee + ToDefaultInterest`. Exclude `ToTrust` and `ToGST`.
2. **Effective date source** — operator-entered, or derived from the Salesforce transfer record?
3. **Granularity** — one catch-up row per TMO `RecID` (best audit), or one aggregated amount per loan (fewer rows)?
4. **Partial transfers** — if only X% of ownership moves, does the catch-up scale to X% of Lender A's receipts in the window?
