/* ==============================================================================
   DRY RUN  —  Loan-History Reverse-Replay preview
   ------------------------------------------------------------------------------
   Loan 115084  (real TMO sandbox history baked in below).

   This is a PREVIEW ONLY:
     * makes NO API calls
     * writes NOTHING to any table
     * just shows what the reverse / ad-funding / replay would do.

   HOW TO USE
     1. Edit the two values in the SETTINGS block below.
     2. Run the whole script (F5 in SSMS / Azure Data Studio).
     3. Read the three result grids that come back.
   ============================================================================== */

------------------------------------------------------------------------------
--  SETTINGS  — edit these two, then run
------------------------------------------------------------------------------
DECLARE @effective_date   DATE          = '2025-05-15';   -- window start; preview covers this date through today
DECLARE @adfunding_amount DECIMAL(18,4) = 25000.00;       -- amount the ad-funding API would post (from the Excel)
------------------------------------------------------------------------------

DECLARE @loan_account VARCHAR(50) = '115084';   -- loan is fixed: the history below belongs to it

/* ---- real loan history for 115084 (GetLoanHistory response, parsed) ---- */
DECLARE @txns TABLE (
    src_recid           varchar(64),
    date_due            date,
    date_rec            date,
    paid_to             date,
    pay_method          varchar(10),
    source_app          varchar(50),
    source_typ          varchar(50),
    late_charge         decimal(18,4),
    loan_balance        decimal(18,4),
    to_broker_fee       decimal(18,4),
    to_charges_int      decimal(18,4),
    to_charges_prin     decimal(18,4),
    to_current_bill     decimal(18,4),
    to_default_interest decimal(18,4),
    to_impound          decimal(18,4),
    to_interest         decimal(18,4),
    to_late_charge      decimal(18,4),
    to_lender_fee       decimal(18,4),
    to_other_payments   decimal(18,4),
    to_other_tax_free   decimal(18,4),
    to_other_taxable    decimal(18,4),
    to_past_due         decimal(18,4),
    to_prepay           decimal(18,4),
    to_principal        decimal(18,4),
    to_reserve          decimal(18,4),
    to_unearned_discount decimal(18,4),
    to_unpaid_interest  decimal(18,4),
    total_amount        decimal(18,4)
);

INSERT INTO @txns
( src_recid, date_due, date_rec, paid_to, pay_method, source_app, source_typ,
  late_charge, loan_balance,
  to_broker_fee, to_charges_int, to_charges_prin, to_current_bill, to_default_interest,
  to_impound, to_interest, to_late_charge, to_lender_fee, to_other_payments, to_other_tax_free,
  to_other_taxable, to_past_due, to_prepay, to_principal, to_reserve, to_unearned_discount,
  to_unpaid_interest, total_amount )
VALUES
('4C8B65870F8646EA945D85DF200F48DC', '2024-11-28', '2024-11-28', '2024-11-28', '0', 'TDS-FUNDING', 'Fundin', 0.0000, 664000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -664000.0000, 0.0000, 0.0000, 0.0000, -664000.0000),
('7DF5B38B154F4750989C3C08B2F2203E', '2024-11-28', '2024-11-28', '2024-12-01', '2', 'TDS-OTHERCASH-B', 'Oth', 0.0000, 664000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 438.7800, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -438.7800, 0.0000, 0.0000, 0.0000),
('695F78F68A464F11AF92F5ACE0ED687C', '2025-01-01', '2025-01-01', '2024-12-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 663306.3300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4448.8000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 693.6700, 0.0000, 0.0000, 0.0000, 5142.4700),
('ECB39CE8841F45C7AD63134CC49CA530', '2025-02-01', '2025-02-03', '2025-01-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 662608.0100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4444.1500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 698.3200, 0.0000, 0.0000, 0.0000, 5142.4700),
('A7EED4237AE946329060A696F8B58F07', '2025-02-01', '2025-02-04', '2025-01-01', '7', 'TDS-NSF', 'NSF', 0.0000, 663306.3300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4444.1500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -698.3200, 0.0000, 0.0000, 0.0000, -5142.4700),
('E152D6E884B0462B87FDFE84DED423F5', '2025-02-01', '2025-02-14', '2025-01-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 662608.0100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4444.1500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 698.3200, 0.0000, 0.0000, 0.0000, 5142.4700),
('EE0AEC4064EB46619832A8464506D60B', '2025-03-01', '2025-03-03', '2025-02-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 661905.0100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4439.4700, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 703.0000, 0.0000, 0.0000, 0.0000, 5142.4700),
('E34A66FA76EB4055A04717210B9BF9B5', '2025-04-01', '2025-04-01', '2025-03-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 661197.3000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4434.7600, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 707.7100, 0.0000, 0.0000, 0.0000, 5142.4700),
('0FA550F8067941D69832756631B3A8E8', '2025-04-01', '2025-04-02', '2025-03-01', '7', 'TDS-NSF', 'NSF', 0.0000, 661905.0100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4434.7600, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -707.7100, 0.0000, 0.0000, 0.0000, -5142.4700),
('CDF6A891EEA6444FA52622CA2CC8BCF3', '2025-04-01', '2025-04-28', '2025-03-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 661197.3000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4434.7600, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 707.7100, 0.0000, 0.0000, 0.0000, 5142.4700),
('36102525DB3742B397E4324E762AC050', '2025-04-01', '2025-04-29', '2025-03-01', '7', 'TDS-NSF', 'NSF', 0.0000, 661905.0100, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4434.7600, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -707.7100, 0.0000, 0.0000, 0.0000, -5142.4700),
('30E2D9C63CED4EAD80DFD5CFE91F7882', '2025-04-01', '2025-05-05', '2025-03-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 661197.3000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4434.7600, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 707.7100, 0.0000, 0.0000, 0.0000, 5142.4700),
('260AC527F4C94B7B90FFFBBC2D0DD7F1', '2025-05-01', '2025-05-12', '2025-04-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 660484.8500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4430.0200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 712.4500, 0.0000, 0.0000, 0.0000, 5142.4700),
('37BEF13F45A54A1BAE4041F6935235F3', '2025-05-01', '2025-05-13', '2025-04-01', '7', 'TDS-NSF', 'NSF', 0.0000, 661197.3000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4430.0200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -712.4500, 0.0000, 0.0000, 0.0000, -5142.4700),
('FE0E123E0E594ABAB491916ABDE99707', '2025-05-01', '2025-05-26', '2025-04-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 660484.8500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4430.0200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 712.4500, 0.0000, 0.0000, 0.0000, 5142.4700),
('46B9EF79B9064BFD90416043585F2162', '2025-05-01', '2025-05-27', '2025-04-01', '7', 'TDS-NSF', 'NSF', 0.0000, 660480.0800, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4430.0200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -712.4500, 0.0000, 0.0000, 0.0000, -5142.4700),
('6742855B8AD448FFB9F7B1FE05AC197C', '2025-05-01', '2025-05-29', '2025-04-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 660484.8500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4430.0200, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 712.4500, 0.0000, 0.0000, 0.0000, 5142.4700),
('FC0E486EF96542DDAFFAB9B4F79ED294', '2025-06-01', '2025-05-29', '2025-05-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 659767.6300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 717.2200, 0.0000, 0.0000, 0.0000, 5142.4700),
('932E456CE7264DECBE9A2BF97FFF34CD', '2025-06-01', '2025-05-29', '2025-05-01', '2', 'TDS-REV', 'RegPmt', 0.0000, 661197.3000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -717.2200, 0.0000, 0.0000, 0.0000, -5142.4700),
('E46EDC9255354F1BB8B736DC00792F91', '2025-06-01', '2025-07-01', '2025-05-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 659767.6300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 717.2200, 0.0000, 0.0000, 0.0000, 5142.4700),
('2332183AF42F45D19DB16036FFCF5553', '2025-06-01', '2025-07-03', '2025-05-01', '7', 'TDS-NSF', 'NSF', 0.0000, 660484.8500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -717.2200, 0.0000, 0.0000, 0.0000, -5142.4700),
('C3C155970FFE4B21B9D649F49B2E6C56', '2025-06-01', '2025-07-14', '2025-05-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 659767.6300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 717.2200, 0.0000, 0.0000, 0.0000, 5142.4700),
('AAA74CB68F5C41F4A1F16631AB54AB57', '2025-06-01', '2025-07-15', '2025-05-01', '7', 'TDS-NSF', 'NSF', 0.0000, 660484.8500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -717.2200, 0.0000, 0.0000, 0.0000, -5142.4700),
('EB7BF4CF93CB4081918B81FB4FA8DD90', '2025-06-01', '2025-07-18', '2025-05-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 659767.6300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4425.2500, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 717.2200, 0.0000, 0.0000, 0.0000, 5142.4700),
('19A715DB3F1542B8A865B075F8438286', '2025-07-01', '2025-07-28', '2025-06-01', '7', 'TDS-BORRACH', 'RegPmt', 0.0000, 658885.1900, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3568.2400, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 882.4400, 0.0000, 0.0000, 0.0000, 4450.6800),
('26CF8D5C1D41497B88E228B0F912FCEB', '2025-07-01', '2025-07-29', '2025-06-01', '7', 'TDS-NSF', 'NSF', 0.0000, 659767.6300, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -3568.2400, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -882.4400, 0.0000, 0.0000, 0.0000, -4450.6800),
('90AD43166B6F4533A7DF00497A7F3C98', '2025-07-01', '2025-08-06', '2025-06-01', '2', 'TDS-REGPMT', 'RegPmt', 0.0000, 658885.1900, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3568.2400, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 882.4400, 0.0000, 0.0000, 0.0000, 4450.6800)
;

------------------------------------------------------------------------------
--  COMPUTE  (do not edit below this line)
------------------------------------------------------------------------------
DECLARE @m_start DATE = @effective_date;
DECLARE @m_end   DATE = CAST(GETDATE() AS DATE);

DECLARE @scope TABLE (
    src_recid varchar(64), date_rec date, pay_method varchar(10),
    source_app varchar(50), to_principal decimal(18,4), to_interest decimal(18,4),
    to_late_charge decimal(18,4), to_lender_fee decimal(18,4), to_impound decimal(18,4),
    to_other_payments decimal(18,4), total_amount decimal(18,4)
);
INSERT INTO @scope
SELECT src_recid, date_rec, pay_method, source_app, to_principal, to_interest,
       to_late_charge, to_lender_fee, to_impound, to_other_payments, total_amount
FROM @txns
WHERE date_rec >= @m_start AND date_rec <= @m_end;

DECLARE @n             int = (SELECT COUNT(*) FROM @scope);
DECLARE @orig_pos      int = (SELECT COUNT(*) FROM @scope WHERE total_amount > 0);
DECLARE @orig_neg      int = (SELECT COUNT(*) FROM @scope WHERE total_amount < 0);
DECLARE @rev_total     decimal(18,4) = (SELECT ISNULL(SUM(-total_amount),0) FROM @scope);
DECLARE @rep_total     decimal(18,4) = (SELECT ISNULL(SUM(total_amount),0)  FROM @scope);

------------------------------------------------------------------------------
--  RESULT 1  —  Summary
------------------------------------------------------------------------------
SELECT step, detail FROM (
    SELECT 1 ord, 'Loan account'                         AS step, @loan_account AS detail
    UNION ALL SELECT 2,  'Effective date',                CONVERT(varchar(10),@effective_date,120)
    UNION ALL SELECT 3,  'Window (effective date to today)', CONVERT(varchar(10),@m_start,120)+'  to  '+CONVERT(varchar(10),@m_end,120)
    UNION ALL SELECT 4,  'Transactions found in month',   CAST(@n AS varchar(20))
    UNION ALL SELECT 5,  '-------------------------------','-------------------------------'
    UNION ALL SELECT 6,  'PHASE 1  reversal: total posts',CAST(@n AS varchar(20))
    UNION ALL SELECT 7,  '   ...of which post a NEGATIVE',CAST(@orig_pos AS varchar(20))+'   (reversing the real payments)'
    UNION ALL SELECT 8,  '   ...of which post a POSITIVE',CAST(@orig_neg AS varchar(20))+'   (reversing the NSF / REV entries)'
    UNION ALL SELECT 9,  '   reversal net amount',        CONVERT(varchar(30),@rev_total)
    UNION ALL SELECT 10, '-------------------------------','-------------------------------'
    UNION ALL SELECT 11, 'PHASE 2  ad-funding: API calls','1'
    UNION ALL SELECT 12, '   ad-funding amount posted',   CONVERT(varchar(30),@adfunding_amount)
    UNION ALL SELECT 13, '-------------------------------','-------------------------------'
    UNION ALL SELECT 14, 'PHASE 3  replay: total posts',  CAST(@n AS varchar(20))
    UNION ALL SELECT 15, '   ...of which post a POSITIVE',CAST(@orig_pos AS varchar(20))
    UNION ALL SELECT 16, '   ...of which post a NEGATIVE',CAST(@orig_neg AS varchar(20))
    UNION ALL SELECT 17, '   replay net amount',          CONVERT(varchar(30),@rep_total)
) r ORDER BY ord;

------------------------------------------------------------------------------
--  RESULT 2  —  Phase 1 reversal preview  (each row = one AddLoanHistory POST, signs flipped)
------------------------------------------------------------------------------
SELECT
    'PHASE 1 - REVERSAL'                                       AS phase,
    date_rec, pay_method, source_app,
    -to_principal       AS to_principal,
    -to_interest        AS to_interest,
    -to_late_charge     AS to_late_charge,
    -to_lender_fee      AS to_lender_fee,
    -to_impound         AS to_impound,
    -to_other_payments  AS to_other_payments,
    -total_amount       AS total_amount,
    CASE WHEN -total_amount < 0 THEN 'NEGATIVE' ELSE 'POSITIVE' END AS post_direction
FROM @scope
ORDER BY date_rec, src_recid;

------------------------------------------------------------------------------
--  RESULT 3  —  Phase 3 replay preview  (each row = one AddLoanHistory POST, original signs)
------------------------------------------------------------------------------
SELECT
    'PHASE 3 - REPLAY'                                         AS phase,
    date_rec, pay_method, source_app,
    to_principal, to_interest, to_late_charge, to_lender_fee,
    to_impound, to_other_payments, total_amount,
    CASE WHEN total_amount < 0 THEN 'NEGATIVE' ELSE 'POSITIVE' END AS post_direction
FROM @scope
ORDER BY date_rec, src_recid;
