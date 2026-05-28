LOAN-HISTORY REVERSE-REPLAY · IMPORT BUNDLE (DEV)
==================================================

Contents
--------
sql/loan_history_replay.sql   <- run this FIRST on cal_bi_analytics_dev
sql/dry_run_preview.sql       <- optional pure-SQL preview (no pipeline needed)
pipeline/*.json (x6)          <- import in ADF Studio AFTER the SQL is in place
test-addfunding-sample.xlsx   <- sample Excel for the real run


Pipelines (import in this order -- children before their parents)
-----------------------------------------------------------------
  1. PL_CHILD_LOAD_LOAN_HISTORY_DEV
  2. PL_LOAD_LOAN_HISTORY_DEV
  3. PL_CHILD_REVERSE_REPLAY_DEV
  4. PL_POST_ADD_FUNDINGS_WITH_HISTORY_DEV
  5. PL_LOAD_ADD_FUNDINGS_WITH_HISTORY_DEV   (top-level real run)
  6. PL_PREVIEW_REVERSE_REPLAY_DEV           (dry-run preview -- standalone)

These two are referenced but NOT included (they already exist in the factory):
  - PL_CHILD_POST_ADD_FUNDINGS_DEV
  - PL_LOAD_FUND_ADJUSTMENT_LENDER_PORTFOLIO_DEV
Verify they exist before importing, or import will fail with a broken reference.


How to import a pipeline JSON into ADF Studio
---------------------------------------------
1. Author tab -> "+" -> Pipeline -> New pipeline.
2. In the Properties pane, set the pipeline Name to match the JSON file name.
3. Click the "{}" (Code view) icon at the top-right.
4. Paste the entire JSON file contents. Click OK, then Save.
5. Repeat for each file, then click "Publish all".


SQL deployment
--------------
Run sql/loan_history_replay.sql against cal_bi_analytics_dev (SSMS / Azure Data
Studio / sqlcmd). It drops & recreates the staging + preview tables and is safe
to re-run.


DRY-RUN PREVIEW  --  PL_PREVIEW_REVERSE_REPLAY_DEV
--------------------------------------------------
The easy way to test WITHOUT uploading an Excel.

Needs one extra dataset: import dataset/DS_PREVIEW_REPORT_DEV.json the same
way as a pipeline (Author -> "+" -> Dataset, or paste in Code view).

1. Import DS_PREVIEW_REPORT_DEV (dataset) and PL_PREVIEW_REVERSE_REPLAY_DEV.
2. Open the pipeline -> Debug.
3. Enter the parameters:
      loan_account     e.g. 115084
      effective_date   e.g. 2025-05-15   (window start; preview covers this date to today)
      adfunding_amount e.g. 25000        (the amount ad-funding would post)
4. It does TWO read-only GETs (GetLoanHistory + GetLoan) and ZERO POST calls
   -- nothing is reversed, replayed, or ad-funded.
5. See the results, three ways:
   a. An HTML report is written to the dev-add-funding-processed blob
      container as loan_preview_<loan>_<timestamp>.html -- open it in a
      browser, and "Save as PDF" if you want a PDF.
   b. SELECT * FROM loan_history_preview_summary WHERE loan_account = '115084';
      SELECT * FROM loan_history_preview WHERE loan_account = '115084'
        ORDER BY date_rec;
   c. Click LOOKUP_PREVIEW_SUMMARY / LOOKUP_PREVIEW_DETAIL in the Debug output.

The report / summary shows: the loan amount and current balance, how many
history records were fetched, how many transactions fall in the month, the
reversal breakdown (negative vs positive + amounts), the indicative balance
the ad-funding will see, the ad-funding amount, and the replay breakdown.


REAL RUN  --  PL_LOAD_ADD_FUNDINGS_WITH_HISTORY_DEV
---------------------------------------------------
1. Drop the Excel into the dev-add-funding-input blob container as
   Fund_Adjustment.xlsx.
2. Debug PL_LOAD_ADD_FUNDINGS_WITH_HISTORY_DEV.
3. Check loan_history_replay_stage for the reversal / adfund / replay statuses.


Questions
---------
Yogesh Sahu
