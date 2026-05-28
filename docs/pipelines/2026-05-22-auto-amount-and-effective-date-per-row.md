# Design: auto-computed ad-funding amount + per-row effective date
Date: 2026-05-22
Status: planned
Builds on: 2026-05-20-loan-history-replay-adfunding.md

## What changes

Stop asking the user for the dollar amount of the ad-funding. Auto-compute it from the loan's reversal-adjusted balance × the fund percentage. Also let the user supply a per-row effective date in the Excel.

Only the new `_WITH_HISTORY_` flow changes. The original `PL_LOAD_ADD_FUNDINGS_DEV` stays as-is for backwards compatibility.

## Excel

| Column | Before | After |
|---|---|---|
| `AccountNo` | required | required |
| `LenderCode` | required | required |
| `AdjustmentType` | required | required |
| `FundPercentage` | required | required |
| `FundValue` | required (manual $) | **removed** |
| `EffectiveDate` | — | **added — per row** |

## Amount formula

`adjustment_amt = balance_after_reversal × FundPercentage`

where `balance_after_reversal = current_principal_balance + Σ(to_principal in [effective_date .. today])`.

## SQL changes (`sql/loan_history_replay.sql`)

- `fund_adjustment_detail` already has `adjustment_amt`. Nothing structural to add there.
- **New proc** `pr_compute_adfund_amount(@loan_account, @effective_date, @principal_balance, @fund_percentage, @loan_response NVARCHAR(MAX) = NULL)`:
  - Resolves `@principal_balance` from `@loan_response` (GetLoan JSON) if not supplied.
  - Sums `to_principal` from `loan_history_replay_stage` for `(loan, replay_batch_id, date_rec ∈ [effective_date, today])`.
  - Computes `adjustment_amt` and UPDATEs `fund_adjustment_detail.adjustment_amt` for that loan.
- **Modify** `pr_preview_load_loan_history`:
  - Drop `@adfunding_amount` parameter (still accept but ignore if passed, for now).
  - Add `@fund_percentage decimal(9,4)`, `@lender_code varchar(50)`.
  - Compute the ad-funding amount internally = `balance_after_reversal × @fund_percentage`.
  - Persist `lender_code`, `fund_percentage`, `adfunding_principal_share`, `adfunding_interest_share`, `adfunding_late_charge_share`, `adfunding_lender_fee_share`, `adfunding_impound_share`, `adfunding_other_share` in `loan_history_preview_summary`.
  - HTML report — Phase 2 expanded (see below).

## Pipeline changes

### `PL_CHILD_LOAD_LOAN_HISTORY_DEV` (extended)

Currently does GetLoanHistory + stage. Add two new activities at the end:

1. `CALL_GET_LOAN` — WebActivity GET `/LSS.svc/GetLoan/{loan_account}` (read-only).
2. `SET_VARIABLE_LOAN_RESPONSE` — stringify the loan response.
3. `SCR_COMPUTE_ADFUND_AMOUNT` — Script → `pr_compute_adfund_amount(@loan_account, @effective_date, NULL, @fund_percentage, @loan_response)`. The proc reads the staged history sum, the principal from `@loan_response`, multiplies, and UPDATEs `fund_adjustment_detail.adjustment_amt` for that loan.

New child params: `effective_date`, `fund_percentage`.

### `PL_LOAD_LOAN_HISTORY_DEV` (parent)

The outer Lookup now also returns `effective_date` and `fund_percentage` from `fund_adjustment_detail` (or `vw_loans_to_process_history` extended). Passes them to the child.

### `PL_LOAD_ADD_FUNDINGS_WITH_HISTORY_DEV` (entry point)

Excel column mapping updated:
- Remove the `FundValue → fund_value` mapping.
- Add `EffectiveDate → effective_date date` mapping.

`fund_adjustment_detail` already has the columns. (`effective_date` may need to be added if absent — verify in DDL; if absent, ALTER TABLE.)

### `PL_PREVIEW_REVERSE_REPLAY_DEV`

Parameters:
- Remove: `adfunding_amount`
- Add: `lender_code` (string, required), `fund_percentage` (string, e.g. `"1.00"` for 100%)
- Keep: `loan_account`, `effective_date`

`SCR_BUILD_PREVIEW` passes the new params. Proc auto-computes the dollar amount.

## HTML report — Phase 2 redesign

Section 7 (currently "Balance the ad-funding will see") and section 8 ("Ad-funding") merge into a richer block:

```
7 · Ad-funding the lender
  Lender getting the funding:  <code> — <name from DW>
  Fund percentage:             <pct>
  Balance the ad-funding sees: <balance_after_reversal>
  ────────────────────────────────────────────────
  Ad-funding amount (auto):    <balance × pct>     [big]

8 · What the ad-funding represents (window × pct)
  ┌──────────────┬──────────────┬─────────────┬──────────────┐
  │ Allocation   │ Window total │ × Pct       │ Funded share │
  ├──────────────┼──────────────┼─────────────┼──────────────┤
  │ Principal    │ Σ to_prin    │ × pct       │ ...          │
  │ Interest     │ Σ to_int     │ × pct       │ ...          │
  │ Late charge  │ ...          │             │              │
  │ Lender fee   │ ...          │             │              │
  │ Impound      │ ...          │             │              │
  │ Other        │ ...          │             │              │
  │ TOTAL        │              │             │ = ad-funding │
  └──────────────┴──────────────┴─────────────┴──────────────┘
```

## Lenders (read-only investigation, no code change)

`dim_lender_portfolio` + `dim_lender` are the only practical source. Confirmed:

- GetLoan API has no structured lender list (only rate-percentage fields).
- GetLenderPortfolio is lender → loans; not useful for loan → lenders without iterating all lenders.

The DW tables are loaded by:

| Table | Pipeline | TMO API |
|---|---|---|
| `dim_lender` | `PL_LOAD_LENDER_DETAIL_DEV` | `GetLendersByTimestamp` |
| `dim_lender_portfolio` | `PL_LOAD_LENDER_PORTFOLIO_DEV` → `PL_CHILD_LOAD_LENDER_PORTFOLIO_DETAIL_DEV` | `GetLenderPortfolio` (per lender) |

If the preview shows no lenders for a loan you know has lenders, the fix is to refresh the DW by running `PL_LOAD_LENDER_PORTFOLIO_DEV` — not a code change here.

## Re-import checklist

| What changes | Re-import? |
|---|---|
| `sql/loan_history_replay.sql` | re-run only |
| `PL_CHILD_LOAD_LOAN_HISTORY_DEV` | yes |
| `PL_LOAD_LOAN_HISTORY_DEV` | yes (param wiring) |
| `PL_LOAD_ADD_FUNDINGS_WITH_HISTORY_DEV` | yes (Excel mapping) |
| `PL_PREVIEW_REVERSE_REPLAY_DEV` | yes (param swap) |
| Existing add-funding pipeline | no |
| Datasets | no |

## Out of scope

- Original `PL_LOAD_ADD_FUNDINGS_DEV` is unchanged.
- Refreshing `dim_lender_portfolio` is a separate operator action.
- PROD variants come after DEV is clean.
