/*
============================================================
 Loan-history reverse-replay around ad-funding (DEV)
 Companion to: docs/pipelines/2026-05-20-loan-history-replay-adfunding.md
 Target DB  : cal_bi_analytics_dev

 NOTE: field mapping matches the ACTUAL GetLoanHistory response
 (CLoanTran) verified against the TMO sandbox — it returns the
 To* allocation fields directly, plus DateRec / RecID / numeric
 PayMethod. (The Postman doc sample CBorrowerPaymentRegister is
 NOT what the live endpoint returns.)
============================================================
*/

------------------------------------------------------------
-- 1. New API entries for TMO loan-history endpoints
------------------------------------------------------------
IF NOT EXISTS (SELECT 1 FROM dbo.api_master WHERE api_code = 'GET_LOAN_HISTORY_BY_AN' AND valid_flag = 'Y')
BEGIN
    INSERT INTO dbo.api_master (api_code, api_url, api_desc, api_type, api_prop, valid_flag, execution_seq_no, created_by, updated_by)
    SELECT
        'GET_LOAN_HISTORY_BY_AN',
        REPLACE(api_url, '/LSS.svc/AddFundings', '/LSS.svc/GetLoanHistory/#ACCOUNT_NO'),
        'API to get loan history by account no',
        'LOAN_HISTORY_API',
        api_prop,
        'Y',
        150,
        'Admin', 'Admin'
    FROM dbo.api_master
    WHERE api_code = 'POST_ADD_FUNDINGS' AND valid_flag = 'Y';
END;

IF NOT EXISTS (SELECT 1 FROM dbo.api_master WHERE api_code = 'POST_ADD_LOAN_HISTORY' AND valid_flag = 'Y')
BEGIN
    INSERT INTO dbo.api_master (api_code, api_url, api_desc, api_type, api_prop, valid_flag, execution_seq_no, created_by, updated_by)
    SELECT
        'POST_ADD_LOAN_HISTORY',
        REPLACE(api_url, '/LSS.svc/AddFundings', '/LSS.svc/AddLoanHistory'),
        'API to post a loan history entry (used for reverse and replay around ad-funding)',
        'POST_ADD_LOAN_HISTORY_API',
        api_prop,
        'Y',
        160,
        'Admin', 'Admin'
    FROM dbo.api_master
    WHERE api_code = 'POST_ADD_FUNDINGS' AND valid_flag = 'Y';
END;
GO


------------------------------------------------------------
-- 2. loan_history_replay_stage
--    Columns mirror the CLoanTran / AddLoanHistory shape so a
--    history entry can be rebuilt 1:1 for reverse and replay.
------------------------------------------------------------
DROP TABLE IF EXISTS dbo.loan_history_replay_stage;
GO
CREATE TABLE dbo.loan_history_replay_stage (
    replay_stage_id      bigint IDENTITY(1,1) NOT NULL,
    replay_batch_id      varchar(20)  NOT NULL,
    loan_account         varchar(50)  NOT NULL,
    src_recid            varchar(64)  NULL,          -- RecID of the source history entry

    date_due             date         NULL,
    date_rec             date         NOT NULL,      -- current-month filter column
    paid_to              date         NULL,
    pay_method           varchar(10)  NULL,          -- numeric enum as returned ('0','2','7'...)
    late_charge          decimal(18,4) NOT NULL DEFAULT 0,
    loan_balance         decimal(18,4) NULL,
    reference_no         varchar(200) NULL,
    source_app           varchar(50)  NULL,          -- original SourceApp (informational)
    source_typ           varchar(50)  NULL,
    nsf_source_recid     varchar(64)  NULL,
    ach_batch_number     varchar(50)  NULL,
    ach_trace_number     varchar(50)  NULL,
    ach_trans_number     varchar(50)  NULL,
    ach_transmission_dt  varchar(50)  NULL,

    to_broker_fee        decimal(18,4) NOT NULL DEFAULT 0,
    to_charges_int       decimal(18,4) NOT NULL DEFAULT 0,
    to_charges_prin      decimal(18,4) NOT NULL DEFAULT 0,
    to_current_bill      decimal(18,4) NOT NULL DEFAULT 0,
    to_default_interest  decimal(18,4) NOT NULL DEFAULT 0,
    to_impound           decimal(18,4) NOT NULL DEFAULT 0,
    to_interest          decimal(18,4) NOT NULL DEFAULT 0,
    to_late_charge       decimal(18,4) NOT NULL DEFAULT 0,
    to_lender_fee        decimal(18,4) NOT NULL DEFAULT 0,
    to_other_payments    decimal(18,4) NOT NULL DEFAULT 0,
    to_other_tax_free    decimal(18,4) NOT NULL DEFAULT 0,
    to_other_taxable     decimal(18,4) NOT NULL DEFAULT 0,
    to_past_due          decimal(18,4) NOT NULL DEFAULT 0,
    to_prepay            decimal(18,4) NOT NULL DEFAULT 0,
    to_principal         decimal(18,4) NOT NULL DEFAULT 0,
    to_reserve           decimal(18,4) NOT NULL DEFAULT 0,
    to_unearned_discount decimal(18,4) NOT NULL DEFAULT 0,
    to_unpaid_interest   decimal(18,4) NOT NULL DEFAULT 0,
    total_amount         decimal(18,4) NULL,
    original_payload     nvarchar(max) NULL,

    reversal_recid       varchar(64)  NULL,
    reversal_status      varchar(10)  NULL,
    reversal_response    nvarchar(max) NULL,
    reversal_posted_on   datetime     NULL,

    adfund_status        varchar(10)  NULL,
    adfund_response      nvarchar(max) NULL,
    adfund_posted_on     datetime     NULL,

    replay_recid         varchar(64)  NULL,
    replay_status        varchar(10)  NULL,
    replay_response      nvarchar(max) NULL,
    replay_posted_on     datetime     NULL,

    created_on           datetime     NOT NULL DEFAULT GETDATE(),
    CONSTRAINT PK_loan_history_replay_stage PRIMARY KEY (replay_stage_id)
);

CREATE NONCLUSTERED INDEX IX_replay_stage_batch_loan
    ON dbo.loan_history_replay_stage (replay_batch_id, loan_account, replay_stage_id);

-- Idempotency guard: same source RecID cannot be staged twice per batch+loan.
CREATE UNIQUE NONCLUSTERED INDEX UQ_replay_stage_recid
    ON dbo.loan_history_replay_stage (replay_batch_id, loan_account, src_recid)
    WHERE src_recid IS NOT NULL;
GO


------------------------------------------------------------
-- 3. pr_init_replay_batch — returns a fresh batch id
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_init_replay_batch', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_init_replay_batch;
GO
CREATE PROCEDURE dbo.pr_init_replay_batch
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @batch_id varchar(20) = 'RPL-' + FORMAT(SYSUTCDATETIME(), 'yyyyMMddHHmmss');
    SELECT @batch_id AS replay_batch_id;
END;
GO


------------------------------------------------------------
-- 4. tvf_parse_loan_history — parse a GetLoanHistory response
--    (CLoanTran) into typed rows. Reused by the load proc.
------------------------------------------------------------
IF OBJECT_ID('dbo.tvf_parse_loan_history', 'IF') IS NOT NULL
    DROP FUNCTION dbo.tvf_parse_loan_history;
GO
CREATE FUNCTION dbo.tvf_parse_loan_history (@api_response nvarchar(max))
RETURNS TABLE
AS
RETURN
(
    SELECT
        j.RecID                                        AS src_recid,
        TRY_CONVERT(date, j.DateDue, 101)              AS date_due,
        TRY_CONVERT(date, j.DateRec, 101)              AS date_rec,
        TRY_CONVERT(date, j.PaidTo, 101)              AS paid_to,
        j.PayMethod                                    AS pay_method,
        TRY_CONVERT(decimal(18,4), j.LateCharge)       AS late_charge,
        TRY_CONVERT(decimal(18,4), j.LoanBalance)      AS loan_balance,
        j.Reference                                    AS reference_no,
        j.SourceApp                                    AS source_app,
        j.SourceTyp                                    AS source_typ,
        j.NSFSourceRecID                               AS nsf_source_recid,
        j.ACH_BatchNumber                              AS ach_batch_number,
        j.ACH_TraceNumber                              AS ach_trace_number,
        j.ACH_TransNumber                              AS ach_trans_number,
        j.ACH_Transmission_DateTime                    AS ach_transmission_dt,
        TRY_CONVERT(decimal(18,4), j.ToBrokerFee)      AS to_broker_fee,
        TRY_CONVERT(decimal(18,4), j.ToChargesInt)     AS to_charges_int,
        TRY_CONVERT(decimal(18,4), j.ToChargesPrin)    AS to_charges_prin,
        TRY_CONVERT(decimal(18,4), j.ToCurrentBill)    AS to_current_bill,
        TRY_CONVERT(decimal(18,4), j.ToDefaultInterest) AS to_default_interest,
        TRY_CONVERT(decimal(18,4), j.ToImpound)        AS to_impound,
        TRY_CONVERT(decimal(18,4), j.ToInterest)       AS to_interest,
        TRY_CONVERT(decimal(18,4), j.ToLateCharge)     AS to_late_charge,
        TRY_CONVERT(decimal(18,4), j.ToLenderFee)      AS to_lender_fee,
        TRY_CONVERT(decimal(18,4), j.ToOtherPayments)  AS to_other_payments,
        TRY_CONVERT(decimal(18,4), j.ToOtherTaxFree)   AS to_other_tax_free,
        TRY_CONVERT(decimal(18,4), j.ToOtherTaxable)   AS to_other_taxable,
        TRY_CONVERT(decimal(18,4), j.ToPastDue)        AS to_past_due,
        TRY_CONVERT(decimal(18,4), j.ToPrepay)         AS to_prepay,
        TRY_CONVERT(decimal(18,4), j.ToPrincipal)      AS to_principal,
        TRY_CONVERT(decimal(18,4), j.ToReserve)        AS to_reserve,
        TRY_CONVERT(decimal(18,4), j.ToUnearnedDiscount) AS to_unearned_discount,
        TRY_CONVERT(decimal(18,4), j.ToUnpaidInterest) AS to_unpaid_interest,
        TRY_CONVERT(decimal(18,4), j.TotalAmount)      AS total_amount,
        j.payload                                      AS original_payload
    FROM OPENJSON(@api_response, '$.Data')
         WITH (
            RecID              varchar(64)   '$.RecID',
            DateDue            varchar(20)   '$.DateDue',
            DateRec            varchar(20)   '$.DateRec',
            PaidTo             varchar(20)   '$.PaidTo',
            PayMethod          varchar(10)   '$.PayMethod',
            LateCharge         varchar(30)   '$.LateCharge',
            LoanBalance        varchar(30)   '$.LoanBalance',
            Reference          varchar(200)  '$.Reference',
            SourceApp          varchar(50)   '$.SourceApp',
            SourceTyp          varchar(50)   '$.SourceTyp',
            NSFSourceRecID     varchar(64)   '$.NSFSourceRecID',
            ACH_BatchNumber    varchar(50)   '$.ACH_BatchNumber',
            ACH_TraceNumber    varchar(50)   '$.ACH_TraceNumber',
            ACH_TransNumber    varchar(50)   '$.ACH_TransNumber',
            ACH_Transmission_DateTime varchar(50) '$.ACH_Transmission_DateTime',
            ToBrokerFee        varchar(30)   '$.ToBrokerFee',
            ToChargesInt       varchar(30)   '$.ToChargesInt',
            ToChargesPrin      varchar(30)   '$.ToChargesPrin',
            ToCurrentBill      varchar(30)   '$.ToCurrentBill',
            ToDefaultInterest  varchar(30)   '$.ToDefaultInterest',
            ToImpound          varchar(30)   '$.ToImpound',
            ToInterest         varchar(30)   '$.ToInterest',
            ToLateCharge       varchar(30)   '$.ToLateCharge',
            ToLenderFee        varchar(30)   '$.ToLenderFee',
            ToOtherPayments    varchar(30)   '$.ToOtherPayments',
            ToOtherTaxFree     varchar(30)   '$.ToOtherTaxFree',
            ToOtherTaxable     varchar(30)   '$.ToOtherTaxable',
            ToPastDue          varchar(30)   '$.ToPastDue',
            ToPrepay           varchar(30)   '$.ToPrepay',
            ToPrincipal        varchar(30)   '$.ToPrincipal',
            ToReserve          varchar(30)   '$.ToReserve',
            ToUnearnedDiscount varchar(30)   '$.ToUnearnedDiscount',
            ToUnpaidInterest   varchar(30)   '$.ToUnpaidInterest',
            TotalAmount        varchar(30)   '$.TotalAmount',
            payload            nvarchar(max) '$' AS JSON
         ) j
);
GO


------------------------------------------------------------
-- 5. pr_load_loan_history_replay — stage txns from the effective
--    date through today.
--    @effective_date: NULL = 1st of the current month (month-to-date);
--    pass a date to stage everything from that date to today.
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_load_loan_history_replay', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_load_loan_history_replay;
GO
CREATE PROCEDURE dbo.pr_load_loan_history_replay
    @loan_account    varchar(50),
    @api_response    nvarchar(max),
    @replay_batch_id varchar(20),
    @effective_date  date = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- window = from the effective date through today.
    -- @effective_date NULL  ->  defaults to the 1st of the current month (month-to-date).
    DECLARE @month_start date = ISNULL(@effective_date,
                                       DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1));
    DECLARE @month_end   date = CAST(GETDATE() AS date);

    INSERT INTO dbo.loan_history_replay_stage (
        replay_batch_id, loan_account, src_recid,
        date_due, date_rec, paid_to, pay_method, late_charge, loan_balance,
        reference_no, source_app, source_typ, nsf_source_recid,
        ach_batch_number, ach_trace_number, ach_trans_number, ach_transmission_dt,
        to_broker_fee, to_charges_int, to_charges_prin, to_current_bill, to_default_interest,
        to_impound, to_interest, to_late_charge, to_lender_fee, to_other_payments,
        to_other_tax_free, to_other_taxable, to_past_due, to_prepay, to_principal,
        to_reserve, to_unearned_discount, to_unpaid_interest, total_amount, original_payload
    )
    SELECT
        @replay_batch_id, @loan_account, NULLIF(t.src_recid, ''),
        t.date_due, t.date_rec, t.paid_to, t.pay_method,
        ISNULL(t.late_charge, 0), t.loan_balance,
        t.reference_no, t.source_app, t.source_typ, NULLIF(t.nsf_source_recid, ''),
        t.ach_batch_number, t.ach_trace_number, t.ach_trans_number, t.ach_transmission_dt,
        ISNULL(t.to_broker_fee,0), ISNULL(t.to_charges_int,0), ISNULL(t.to_charges_prin,0),
        ISNULL(t.to_current_bill,0), ISNULL(t.to_default_interest,0), ISNULL(t.to_impound,0),
        ISNULL(t.to_interest,0), ISNULL(t.to_late_charge,0), ISNULL(t.to_lender_fee,0),
        ISNULL(t.to_other_payments,0), ISNULL(t.to_other_tax_free,0), ISNULL(t.to_other_taxable,0),
        ISNULL(t.to_past_due,0), ISNULL(t.to_prepay,0), ISNULL(t.to_principal,0),
        ISNULL(t.to_reserve,0), ISNULL(t.to_unearned_discount,0), ISNULL(t.to_unpaid_interest,0),
        t.total_amount, t.original_payload
    FROM dbo.tvf_parse_loan_history(@api_response) t
    WHERE t.date_rec IS NOT NULL
      AND t.date_rec >= @month_start
      AND t.date_rec <= @month_end
      AND NOT EXISTS (
            SELECT 1 FROM dbo.loan_history_replay_stage s
            WHERE s.replay_batch_id = @replay_batch_id
              AND s.loan_account    = @loan_account
              AND s.src_recid IS NOT NULL
              AND s.src_recid = NULLIF(t.src_recid, '')
          );
END;
GO


------------------------------------------------------------
-- 6. pr_update_loan_history_phase — single-row status writer
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_update_loan_history_phase', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_update_loan_history_phase;
GO
CREATE PROCEDURE dbo.pr_update_loan_history_phase
    @replay_stage_id bigint,
    @phase           varchar(10),    -- 'reverse' | 'adfund' | 'replay'
    @status          varchar(10),    -- 'PS' | 'FAIL'
    @recid           varchar(64) = NULL,
    @response        nvarchar(max) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    IF @phase = 'reverse'
        UPDATE dbo.loan_history_replay_stage
           SET reversal_recid     = @recid,
               reversal_status    = @status,
               reversal_response  = @response,
               reversal_posted_on = GETDATE()
         WHERE replay_stage_id = @replay_stage_id;
    ELSE IF @phase = 'adfund'
        UPDATE dbo.loan_history_replay_stage
           SET adfund_status    = @status,
               adfund_response  = @response,
               adfund_posted_on = GETDATE()
         WHERE replay_stage_id = @replay_stage_id;
    ELSE IF @phase = 'replay'
        UPDATE dbo.loan_history_replay_stage
           SET replay_recid     = @recid,
               replay_status    = @status,
               replay_response  = @response,
               replay_posted_on = GETDATE()
         WHERE replay_stage_id = @replay_stage_id;
END;
GO


------------------------------------------------------------
-- 7. pr_fanout_adfund_response — write adfund outcome to every
--    txn row for the (batch, loan)
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_fanout_adfund_response', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_fanout_adfund_response;
GO
CREATE PROCEDURE dbo.pr_fanout_adfund_response
    @replay_batch_id varchar(20),
    @loan_account    varchar(50),
    @status          varchar(10),
    @response        nvarchar(max) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE dbo.loan_history_replay_stage
       SET adfund_status    = @status,
           adfund_response  = @response,
           adfund_posted_on = GETDATE()
     WHERE replay_batch_id = @replay_batch_id
       AND loan_account    = @loan_account
       AND reversal_status = 'PS';
END;
GO


------------------------------------------------------------
-- 8. vw_loans_to_process_history — drives PL_LOAD_LOAN_HISTORY_DEV
------------------------------------------------------------
IF OBJECT_ID('dbo.vw_loans_to_process_history', 'V') IS NOT NULL
    DROP VIEW dbo.vw_loans_to_process_history;
GO
CREATE VIEW dbo.vw_loans_to_process_history
AS
SELECT
    fad.account_no                                            AS loan_account,
    REPLACE(api_h.api_url, '#ACCOUNT_NO', fad.account_no)     AS history_url,
    REPLACE(api_l.api_url, '#ACCOUNT_NO', fad.account_no)     AS getloan_url,
    hdr.token                                                 AS token,
    hdr.dbase_name                                            AS dbase_name,
    CONVERT(varchar(10), fad.adjustment_date, 23)             AS effective_date,
    ISNULL(fad.fund_percentage, '0')                          AS fund_percentage
FROM dbo.fund_adjustment_detail fad
CROSS APPLY (
    SELECT api_url, api_prop
    FROM dbo.api_master
    WHERE api_code = 'GET_LOAN_HISTORY_BY_AN' AND valid_flag = 'Y'
) api_h
CROSS APPLY (
    SELECT api_url
    FROM dbo.api_master
    WHERE api_code = 'GET_LOAN_BY_AN' AND valid_flag = 'Y'
) api_l
CROSS APPLY OPENJSON(api_h.api_prop, '$.Header')
    WITH (
        token      varchar(200) '$.Token',
        dbase_name varchar(200) '$.Database'
    ) hdr
WHERE fad.is_processed = 0;
GO


------------------------------------------------------------
-- 9. vw_post_fund_adjustment_with_history — drives the orchestrator
------------------------------------------------------------
IF OBJECT_ID('dbo.vw_post_fund_adjustment_with_history', 'V') IS NOT NULL
    DROP VIEW dbo.vw_post_fund_adjustment_with_history;
GO
CREATE VIEW dbo.vw_post_fund_adjustment_with_history
AS
SELECT
    pfa.api_url        AS api_url,         -- ad-funding URL (existing)
    pfa.token          AS token,           -- ad-funding token (existing)
    pfa.dbase_name     AS dbase_name,
    pfa.account_no     AS account_no,
    pfa.api_body       AS api_body,
    alh.api_url        AS loan_history_post_url,   -- AddLoanHistory
    alh_hdr.token      AS loan_history_token,
    alh_hdr.dbase_name AS loan_history_dbase
FROM dbo.vw_post_fund_adjustment pfa
CROSS APPLY (
    SELECT api_url, api_prop
    FROM dbo.api_master
    WHERE api_code = 'POST_ADD_LOAN_HISTORY' AND valid_flag = 'Y'
) alh
CROSS APPLY OPENJSON(alh.api_prop, '$.Header')
    WITH (
        token      varchar(200) '$.Token',
        dbase_name varchar(200) '$.Database'
    ) alh_hdr;
GO


------------------------------------------------------------
-- 10. vw_loan_history_reverse_queue
--     One row per un-reversed txn + AddLoanHistory body with
--     LateCharge and every To* amount NEGATED.
------------------------------------------------------------
IF OBJECT_ID('dbo.vw_loan_history_reverse_queue', 'V') IS NOT NULL
    DROP VIEW dbo.vw_loan_history_reverse_queue;
GO
CREATE VIEW dbo.vw_loan_history_reverse_queue
AS
SELECT
    s.replay_stage_id,
    s.replay_batch_id,
    s.loan_account,
    '{'
    + '"ACH_BatchNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_batch_number,''),'json') + '",'
    + '"ACH_TraceNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_trace_number,''),'json') + '",'
    + '"ACH_TransNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_trans_number,''),'json') + '",'
    + '"ACH_Transmission_DateTime":"' + STRING_ESCAPE(ISNULL(s.ach_transmission_dt,''),'json') + '",'
    + '"DateDue":"'    + ISNULL(FORMAT(s.date_due,'MM-dd-yyyy'), FORMAT(s.date_rec,'MM-dd-yyyy')) + '",'
    + '"DateRec":"'    + FORMAT(s.date_rec,'MM-dd-yyyy') + '",'
    + '"LateCharge":"' + CONVERT(varchar(30), -s.late_charge) + '",'
    + '"LoanBalance":"' + CONVERT(varchar(30), ISNULL(s.loan_balance,0)) + '",'
    + '"LoanAccount":"' + s.loan_account + '",'
    + '"NSFSourceRecID":"' + STRING_ESCAPE(ISNULL(s.nsf_source_recid,''),'json') + '",'
    + '"Notes":"Reversal for ad-funding batch ' + s.replay_batch_id + '",'
    + '"PaidTo":"'     + ISNULL(FORMAT(s.paid_to,'MM-dd-yyyy'), FORMAT(s.date_rec,'MM-dd-yyyy')) + '",'
    + '"PayMethod":"'  + ISNULL(s.pay_method,'0') + '",'
    + '"Reference":"'  + STRING_ESCAPE(ISNULL(s.reference_no,''),'json') + '",'
    + '"SourceApp":"AdfundReverse",'
    + '"SourceTyp":"'  + STRING_ESCAPE(ISNULL(s.source_typ,''),'json') + '",'
    + '"ToBrokerFee":"'      + CONVERT(varchar(30), -s.to_broker_fee) + '",'
    + '"ToChargesInt":"'     + CONVERT(varchar(30), -s.to_charges_int) + '",'
    + '"ToChargesPrin":"'    + CONVERT(varchar(30), -s.to_charges_prin) + '",'
    + '"ToCurrentBill":"'    + CONVERT(varchar(30), -s.to_current_bill) + '",'
    + '"ToDefaultInterest":"' + CONVERT(varchar(30), -s.to_default_interest) + '",'
    + '"ToImpound":"'        + CONVERT(varchar(30), -s.to_impound) + '",'
    + '"ToInterest":"'       + CONVERT(varchar(30), -s.to_interest) + '",'
    + '"ToLateCharge":"'     + CONVERT(varchar(30), -s.to_late_charge) + '",'
    + '"ToLenderFee":"'      + CONVERT(varchar(30), -s.to_lender_fee) + '",'
    + '"ToOtherPayments":"'  + CONVERT(varchar(30), -s.to_other_payments) + '",'
    + '"ToOtherTaxFree":"'   + CONVERT(varchar(30), -s.to_other_tax_free) + '",'
    + '"ToOtherTaxable":"'   + CONVERT(varchar(30), -s.to_other_taxable) + '",'
    + '"ToPastDue":"'        + CONVERT(varchar(30), -s.to_past_due) + '",'
    + '"ToPrepay":"'         + CONVERT(varchar(30), -s.to_prepay) + '",'
    + '"ToPrincipal":"'      + CONVERT(varchar(30), -s.to_principal) + '",'
    + '"ToReserve":"'        + CONVERT(varchar(30), -s.to_reserve) + '",'
    + '"ToUnearnedDiscount":"' + CONVERT(varchar(30), -s.to_unearned_discount) + '",'
    + '"ToUnpaidInterest":"' + CONVERT(varchar(30), -s.to_unpaid_interest) + '"'
    + '}' AS reverse_body
FROM dbo.loan_history_replay_stage s
WHERE s.reversal_status IS NULL;
GO


------------------------------------------------------------
-- 11. vw_loan_history_replay_queue
--     One row per successfully-reversed txn + AddLoanHistory
--     body with the ORIGINAL signs.
------------------------------------------------------------
IF OBJECT_ID('dbo.vw_loan_history_replay_queue', 'V') IS NOT NULL
    DROP VIEW dbo.vw_loan_history_replay_queue;
GO
CREATE VIEW dbo.vw_loan_history_replay_queue
AS
SELECT
    s.replay_stage_id,
    s.replay_batch_id,
    s.loan_account,
    '{'
    + '"ACH_BatchNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_batch_number,''),'json') + '",'
    + '"ACH_TraceNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_trace_number,''),'json') + '",'
    + '"ACH_TransNumber":"'  + STRING_ESCAPE(ISNULL(s.ach_trans_number,''),'json') + '",'
    + '"ACH_Transmission_DateTime":"' + STRING_ESCAPE(ISNULL(s.ach_transmission_dt,''),'json') + '",'
    + '"DateDue":"'    + ISNULL(FORMAT(s.date_due,'MM-dd-yyyy'), FORMAT(s.date_rec,'MM-dd-yyyy')) + '",'
    + '"DateRec":"'    + FORMAT(s.date_rec,'MM-dd-yyyy') + '",'
    + '"LateCharge":"' + CONVERT(varchar(30), s.late_charge) + '",'
    + '"LoanBalance":"' + CONVERT(varchar(30), ISNULL(s.loan_balance,0)) + '",'
    + '"LoanAccount":"' + s.loan_account + '",'
    + '"NSFSourceRecID":"' + STRING_ESCAPE(ISNULL(s.nsf_source_recid,''),'json') + '",'
    + '"Notes":"Replay for ad-funding batch ' + s.replay_batch_id + '",'
    + '"PaidTo":"'     + ISNULL(FORMAT(s.paid_to,'MM-dd-yyyy'), FORMAT(s.date_rec,'MM-dd-yyyy')) + '",'
    + '"PayMethod":"'  + ISNULL(s.pay_method,'0') + '",'
    + '"Reference":"'  + STRING_ESCAPE(ISNULL(s.reference_no,''),'json') + '",'
    + '"SourceApp":"AdfundReplay",'
    + '"SourceTyp":"'  + STRING_ESCAPE(ISNULL(s.source_typ,''),'json') + '",'
    + '"ToBrokerFee":"'      + CONVERT(varchar(30), s.to_broker_fee) + '",'
    + '"ToChargesInt":"'     + CONVERT(varchar(30), s.to_charges_int) + '",'
    + '"ToChargesPrin":"'    + CONVERT(varchar(30), s.to_charges_prin) + '",'
    + '"ToCurrentBill":"'    + CONVERT(varchar(30), s.to_current_bill) + '",'
    + '"ToDefaultInterest":"' + CONVERT(varchar(30), s.to_default_interest) + '",'
    + '"ToImpound":"'        + CONVERT(varchar(30), s.to_impound) + '",'
    + '"ToInterest":"'       + CONVERT(varchar(30), s.to_interest) + '",'
    + '"ToLateCharge":"'     + CONVERT(varchar(30), s.to_late_charge) + '",'
    + '"ToLenderFee":"'      + CONVERT(varchar(30), s.to_lender_fee) + '",'
    + '"ToOtherPayments":"'  + CONVERT(varchar(30), s.to_other_payments) + '",'
    + '"ToOtherTaxFree":"'   + CONVERT(varchar(30), s.to_other_tax_free) + '",'
    + '"ToOtherTaxable":"'   + CONVERT(varchar(30), s.to_other_taxable) + '",'
    + '"ToPastDue":"'        + CONVERT(varchar(30), s.to_past_due) + '",'
    + '"ToPrepay":"'         + CONVERT(varchar(30), s.to_prepay) + '",'
    + '"ToPrincipal":"'      + CONVERT(varchar(30), s.to_principal) + '",'
    + '"ToReserve":"'        + CONVERT(varchar(30), s.to_reserve) + '",'
    + '"ToUnearnedDiscount":"' + CONVERT(varchar(30), s.to_unearned_discount) + '",'
    + '"ToUnpaidInterest":"' + CONVERT(varchar(30), s.to_unpaid_interest) + '"'
    + '}' AS replay_body
FROM dbo.loan_history_replay_stage s
WHERE s.reversal_status = 'PS'
  AND s.replay_status IS NULL;
GO


------------------------------------------------------------
-- 12. Preview tables — populated by PL_PREVIEW_REVERSE_REPLAY_DEV.
--     Pure read-only dry run: one GET, zero POSTs, no reverse/
--     replay/ad-funding actually executed.
------------------------------------------------------------
DROP TABLE IF EXISTS dbo.loan_history_preview;
GO
CREATE TABLE dbo.loan_history_preview (
    preview_id          bigint IDENTITY(1,1) PRIMARY KEY,
    loan_account        varchar(50)   NOT NULL,
    effective_month     varchar(60)   NULL,   -- holds the window label "<from> to <today>"
    in_effective_month  bit           NOT NULL DEFAULT 0,   -- 1 = selected for reverse/replay
    src_recid           varchar(64)   NULL,
    date_rec            date          NULL,
    source_app          varchar(50)   NULL,
    pay_method          varchar(10)   NULL,
    to_principal        decimal(18,4) NULL,
    to_interest         decimal(18,4) NULL,
    to_late_charge      decimal(18,4) NULL,
    to_lender_fee       decimal(18,4) NULL,
    to_impound          decimal(18,4) NULL,
    to_other_payments   decimal(18,4) NULL,
    total_amount        decimal(18,4) NULL,   -- original transaction amount
    reversal_amount     decimal(18,4) NULL,   -- phase 1 would POST this (negated)
    replay_amount       decimal(18,4) NULL,   -- phase 3 would POST this (original)
    direction           varchar(10)   NULL,   -- sign of the original txn
    previewed_on        datetime      NOT NULL DEFAULT GETDATE()
);
GO

DROP TABLE IF EXISTS dbo.loan_history_preview_summary;
GO
CREATE TABLE dbo.loan_history_preview_summary (
    loan_account              varchar(50)   NOT NULL,
    borrower_name             varchar(200)  NULL,
    lender_count              int           NULL,
    lender_names              nvarchar(max) NULL,
    effective_month           varchar(60)   NULL,   -- holds the window label "<from> to <today>"
    original_loan_amount      decimal(18,4) NULL,   -- OrigBal from GetLoan
    current_principal_balance decimal(18,4) NULL,   -- PrincipalBalance from GetLoan
    total_history_fetched     int           NULL,   -- all txns GetLoanHistory returned
    transactions_in_month     int           NULL,   -- txns inside the effective month
    phase1_reversal_posts     int           NULL,
    reversal_negative_posts   int           NULL,   -- reversals that post a negative
    reversal_negative_amount  decimal(18,4) NULL,
    reversal_positive_posts   int           NULL,   -- reversals that post a positive
    reversal_positive_amount  decimal(18,4) NULL,
    net_principal_reversed    decimal(18,4) NULL,   -- principal the month's txns moved
    balance_after_reversal    decimal(18,4) NULL,   -- indicative balance ad-funding sees
    lender_code               varchar(50)   NULL,
    selected_lender_name      varchar(255)  NULL,
    fund_percentage           decimal(9,4)  NULL,
    phase2_adfunding_calls    int           NULL,
    phase2_adfunding_amount   decimal(18,4) NULL,
    adfund_principal_share    decimal(18,4) NULL,
    adfund_interest_share     decimal(18,4) NULL,
    adfund_late_charge_share  decimal(18,4) NULL,
    adfund_lender_fee_share   decimal(18,4) NULL,
    adfund_impound_share      decimal(18,4) NULL,
    adfund_other_share        decimal(18,4) NULL,
    phase3_replay_posts       int           NULL,
    replay_positive_posts     int           NULL,
    replay_positive_amount    decimal(18,4) NULL,
    replay_negative_posts     int           NULL,
    replay_negative_amount    decimal(18,4) NULL,
    transfer_api_body         nvarchar(max) NULL,   -- full multi-leg AddFundings body (transfer)
    transfer_leg_count        int           NULL,   -- 1 positive + N negative legs
    transfer_gross_moved      decimal(18,4) NULL,   -- total $ moved (sum of debits)
    transfer_net_amount       decimal(18,4) NULL,   -- should be ~0 (legs net out)
    report_html               nvarchar(max) NULL,   -- printable HTML report
    previewed_on              datetime      NOT NULL DEFAULT GETDATE()
);
GO

------------------------------------------------------------
-- 13. pr_preview_load_loan_history — parse a GetLoanHistory
--     response and fill the two preview tables. No POSTs.
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_preview_load_loan_history', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_preview_load_loan_history;
GO
CREATE PROCEDURE dbo.pr_preview_load_loan_history
    @loan_account     varchar(50),
    @effective_date   varchar(20),
    @api_response     nvarchar(max),
    @lender_code      varchar(50),
    @fund_percentage  decimal(9,4),
    @loan_response    nvarchar(max) = NULL,   -- GetLoan response (for the live balance)
    @dry_run          bit            = 1      -- 1 = preview only, 0 = real run (responses populated)
AS
BEGIN
    SET NOCOUNT ON;

    -- effective date is mandatory — the preview will not run without it
    IF @effective_date IS NULL
       OR LTRIM(RTRIM(@effective_date)) = ''
       OR TRY_CONVERT(date, @effective_date) IS NULL
        THROW 50001, 'effective_date is required — pass a valid date (yyyy-mm-dd).', 1;

    -- window = from the effective date through today
    DECLARE @m_start date = TRY_CONVERT(date, @effective_date);
    DECLARE @m_end   date = CAST(GETDATE() AS date);
    DECLARE @month_label varchar(60) =
        CONVERT(varchar(11), @m_start, 106) + ' to ' + CONVERT(varchar(11), @m_end, 106);

    -- clear any prior preview for this loan
    DELETE FROM dbo.loan_history_preview         WHERE loan_account = @loan_account;
    DELETE FROM dbo.loan_history_preview_summary WHERE loan_account = @loan_account;

    -- pull the live loan figures from the GetLoan response (Data may be object or array)
    DECLARE @principal decimal(18,4) = TRY_CONVERT(decimal(18,4), COALESCE(
        JSON_VALUE(@loan_response, '$.Data.Terms.PrincipalBalance'),
        JSON_VALUE(@loan_response, '$.Data[0].Terms.PrincipalBalance')));
    DECLARE @orig_bal decimal(18,4) = TRY_CONVERT(decimal(18,4), COALESCE(
        JSON_VALUE(@loan_response, '$.Data.Terms.OrigBal'),
        JSON_VALUE(@loan_response, '$.Data[0].Terms.OrigBal')));
    DECLARE @borrower varchar(200) = COALESCE(
        JSON_VALUE(@loan_response, '$.Data.ByLastName'),
        JSON_VALUE(@loan_response, '$.Data[0].ByLastName'), '');

    -- lenders for this loan (from lender_portfolio_full, latest snapshot).
    -- Join on lender_account_code (lender_rk is 0 in the *_full tables, so unusable).
    DECLARE @latest_file_date date = (
        SELECT MAX(file_date) FROM dbo.lender_portfolio_full
        WHERE account_no = @loan_account);
    DECLARE @lender_count int = (
        SELECT COUNT(*)
        FROM dbo.lender_portfolio_full lpf
        LEFT JOIN dbo.lender_full lf ON lf.account_code = lpf.lender_account_code
        WHERE lpf.account_no = @loan_account
          AND lpf.file_date = @latest_file_date);
    DECLARE @lender_names nvarchar(max) = (
        SELECT STRING_AGG(CONVERT(nvarchar(max), ISNULL(lf.full_name, lpf.lender_account_code)), ', ')
        FROM dbo.lender_portfolio_full lpf
        LEFT JOIN dbo.lender_full lf ON lf.account_code = lpf.lender_account_code
        WHERE lpf.account_no = @loan_account
          AND lpf.file_date = @latest_file_date);

    -- selected lender (the one the ad-funding will go to)
    DECLARE @selected_lender_name varchar(255) = (
        SELECT TOP 1 lf.full_name
        FROM dbo.lender_full lf
        WHERE (lf.account_code = @lender_code OR lf.account_no = @lender_code)
        ORDER BY lf.file_date DESC, lf.lender_rk DESC);

    -- parse the whole history response once
    DECLARE @all TABLE (
        src_recid varchar(64), date_rec date, source_app varchar(50), pay_method varchar(10),
        to_principal decimal(18,4), to_interest decimal(18,4), to_late_charge decimal(18,4),
        to_lender_fee decimal(18,4), to_impound decimal(18,4), to_other_payments decimal(18,4),
        total_amount decimal(18,4)
    );
    INSERT INTO @all
    SELECT src_recid, date_rec, source_app, pay_method,
           ISNULL(to_principal,0), ISNULL(to_interest,0), ISNULL(to_late_charge,0),
           ISNULL(to_lender_fee,0), ISNULL(to_impound,0), ISNULL(to_other_payments,0),
           ISNULL(total_amount,0)
    FROM dbo.tvf_parse_loan_history(@api_response);

    DECLARE @total_fetched int = (SELECT COUNT(*) FROM @all);

    -- store EVERY fetched transaction; flag the ones inside the effective month
    INSERT INTO dbo.loan_history_preview
        (loan_account, effective_month, in_effective_month, src_recid, date_rec, source_app, pay_method,
         to_principal, to_interest, to_late_charge, to_lender_fee, to_impound, to_other_payments,
         total_amount, reversal_amount, replay_amount, direction)
    SELECT @loan_account, @month_label,
           CASE WHEN date_rec >= @m_start AND date_rec <= @m_end THEN 1 ELSE 0 END,
           src_recid, date_rec, source_app, pay_method,
           to_principal, to_interest, to_late_charge, to_lender_fee, to_impound, to_other_payments,
           total_amount,
           -total_amount AS reversal_amount,
           total_amount  AS replay_amount,
           CASE WHEN total_amount < 0 THEN 'NEGATIVE' ELSE 'POSITIVE' END
    FROM @all;

    -- aggregates over the effective month
    DECLARE @n int, @rev_neg_n int, @rev_neg_amt decimal(18,4),
            @rev_pos_n int, @rev_pos_amt decimal(18,4),
            @rep_pos_n int, @rep_pos_amt decimal(18,4),
            @rep_neg_n int, @rep_neg_amt decimal(18,4),
            @net_principal decimal(18,4),
            @w_int decimal(18,4), @w_lc decimal(18,4), @w_lf decimal(18,4),
            @w_imp decimal(18,4), @w_oth decimal(18,4);

    SELECT
        @n           = COUNT(*),
        @rev_neg_n   = ISNULL(SUM(CASE WHEN total_amount > 0 THEN 1 ELSE 0 END), 0),
        @rev_neg_amt = ISNULL(SUM(CASE WHEN total_amount > 0 THEN -total_amount ELSE 0 END), 0),
        @rev_pos_n   = ISNULL(SUM(CASE WHEN total_amount < 0 THEN 1 ELSE 0 END), 0),
        @rev_pos_amt = ISNULL(SUM(CASE WHEN total_amount < 0 THEN -total_amount ELSE 0 END), 0),
        @rep_pos_n   = ISNULL(SUM(CASE WHEN total_amount > 0 THEN 1 ELSE 0 END), 0),
        @rep_pos_amt = ISNULL(SUM(CASE WHEN total_amount > 0 THEN total_amount ELSE 0 END), 0),
        @rep_neg_n   = ISNULL(SUM(CASE WHEN total_amount < 0 THEN 1 ELSE 0 END), 0),
        @rep_neg_amt = ISNULL(SUM(CASE WHEN total_amount < 0 THEN total_amount ELSE 0 END), 0),
        @net_principal = ISNULL(SUM(to_principal), 0),
        @w_int       = ISNULL(SUM(to_interest), 0),
        @w_lc        = ISNULL(SUM(to_late_charge), 0),
        @w_lf        = ISNULL(SUM(to_lender_fee), 0),
        @w_imp       = ISNULL(SUM(to_impound), 0),
        @w_oth       = ISNULL(SUM(to_other_payments), 0)
    FROM @all
    WHERE date_rec >= @m_start AND date_rec <= @m_end;

    -- reversing the month's payments adds the principal they paid down back on
    DECLARE @bal_after decimal(18,4) = ISNULL(@principal, 0) + ISNULL(@net_principal, 0);

    -- auto-computed ad-funding amount and per-allocation share.
    -- @pct is a PERCENT (e.g. 100 = 100%, 93.75 = 93.75%); divide by 100 for the multiplier.
    DECLARE @pct decimal(9,4) = ISNULL(@fund_percentage, 0);
    DECLARE @pct_frac decimal(18,8) = @pct / 100.0;
    DECLARE @adfunding_amount decimal(18,4) = @bal_after * @pct_frac;
    DECLARE @share_prin decimal(18,4) = @net_principal * @pct_frac;
    DECLARE @share_int  decimal(18,4) = @w_int        * @pct_frac;
    DECLARE @share_lc   decimal(18,4) = @w_lc         * @pct_frac;
    DECLARE @share_lf   decimal(18,4) = @w_lf         * @pct_frac;
    DECLARE @share_imp  decimal(18,4) = @w_imp        * @pct_frac;
    DECLARE @share_oth  decimal(18,4) = @w_oth        * @pct_frac;

    ------------------------------------------------------------------
    -- Build the multi-leg TRANSFER body for AddFundings.
    --   + one POSITIVE leg to the new lender (@lender_code)
    --   - one NEGATIVE leg per CURRENT lender on the loan
    --     (from lender_portfolio_full latest snapshot), each =
    --     that lender's position (@bal_after * pct_owned/100) * fund_pct.
    -- The positive leg equals the sum of the debits, so the legs net to
    -- ~0 -> the loan total is unchanged (a transfer, not an add).
    -- The destination lender is excluded from the debits (never debit the receiver).
    ------------------------------------------------------------------
    DECLARE @trans_date varchar(10) = FORMAT(@m_start, 'MM/dd/yyyy');
    DECLARE @neg_legs nvarchar(max), @neg_total decimal(18,4), @neg_count int;

    ;WITH cur AS (
        SELECT lpf.lender_account_code AS lac,
               CAST(@bal_after * ISNULL(lpf.pct_owned,0) / 100.0 * @pct_frac AS decimal(18,4)) AS leg_amt
        FROM dbo.lender_portfolio_full lpf
        WHERE lpf.account_no   = @loan_account
          AND lpf.file_date    = @latest_file_date
          AND lpf.lender_account_code <> @lender_code     -- don't debit the receiver
          AND ISNULL(lpf.pct_owned,0) > 0
    )
    SELECT
        @neg_count = COUNT(*),
        @neg_total = ISNULL(SUM(leg_amt), 0),
        @neg_legs  = STRING_AGG(CONVERT(nvarchar(max),
            '{"LoanAccount":"' + @loan_account + '",'
          + '"LenderAccount":"' + lac + '",'
          + '"TransDate":"' + @trans_date + '",'
          + '"Amount":"' + CONVERT(varchar(30), -leg_amt) + '"}'), ',')
    FROM cur;

    -- positive leg to the new lender = sum of the debited positions (guarantees net zero)
    DECLARE @pos_leg nvarchar(max) =
        '{"LoanAccount":"' + @loan_account + '",'
      + '"LenderAccount":"' + ISNULL(@lender_code,'') + '",'
      + '"TransDate":"' + @trans_date + '",'
      + '"Amount":"' + CONVERT(varchar(30), ISNULL(@neg_total,0)) + '"}';

    DECLARE @transfer_api_body nvarchar(max) =
        '[' + @pos_leg
        + CASE WHEN @neg_legs IS NULL OR @neg_legs = '' THEN '' ELSE ',' + @neg_legs END
        + ']';
    DECLARE @transfer_leg_count int = 1 + ISNULL(@neg_count, 0);
    DECLARE @transfer_gross_moved decimal(18,4) = ISNULL(@neg_total, 0);
    DECLARE @transfer_net_amount  decimal(18,4) = ISNULL(@neg_total,0) - ISNULL(@neg_total,0); -- 0 by construction

    -- HTML rows for the transfer-legs table in the report
    DECLARE @transfer_rows nvarchar(max) =
        '<tr><td>RECEIVE (+)</td><td>' + ISNULL(@lender_code,'') + '</td>'
        + '<td>' + ISNULL(@selected_lender_name,'<span class="dim">(new lender)</span>') + '</td>'
        + '<td class="num pos">' + CONVERT(varchar(30), ISNULL(@neg_total,0)) + '</td></tr>'
        + ISNULL((
            SELECT STRING_AGG(CONVERT(nvarchar(max),
                  '<tr><td>DEBIT (&minus;)</td><td>' + lpf.lender_account_code + '</td>'
                + '<td>' + ISNULL(lf.full_name, ISNULL(lpf.borrower_name,'')) + '</td>'
                + '<td class="num neg">' + CONVERT(varchar(30),
                    -CAST(@bal_after * ISNULL(lpf.pct_owned,0)/100.0 * @pct_frac AS decimal(18,4))) + '</td></tr>'),'')
            FROM dbo.lender_portfolio_full lpf
            LEFT JOIN dbo.lender_full lf ON lf.account_code = lpf.lender_account_code
            WHERE lpf.account_no = @loan_account AND lpf.file_date = @latest_file_date
              AND lpf.lender_account_code <> @lender_code AND ISNULL(lpf.pct_owned,0) > 0
        ), '');

    INSERT INTO dbo.loan_history_preview_summary
        (loan_account, borrower_name, lender_count, lender_names, effective_month,
         original_loan_amount, current_principal_balance,
         total_history_fetched, transactions_in_month,
         phase1_reversal_posts, reversal_negative_posts, reversal_negative_amount,
         reversal_positive_posts, reversal_positive_amount,
         net_principal_reversed, balance_after_reversal,
         lender_code, selected_lender_name, fund_percentage,
         phase2_adfunding_calls, phase2_adfunding_amount,
         adfund_principal_share, adfund_interest_share, adfund_late_charge_share,
         adfund_lender_fee_share, adfund_impound_share, adfund_other_share,
         phase3_replay_posts, replay_positive_posts, replay_positive_amount,
         replay_negative_posts, replay_negative_amount,
         transfer_api_body, transfer_leg_count, transfer_gross_moved, transfer_net_amount)
    VALUES
        (@loan_account, @borrower, @lender_count, @lender_names, @month_label,
         @orig_bal, @principal,
         @total_fetched, @n,
         @n, @rev_neg_n, @rev_neg_amt,
         @rev_pos_n, @rev_pos_amt,
         @net_principal, @bal_after,
         @lender_code, @selected_lender_name, @pct,
         1, @adfunding_amount,
         @share_prin, @share_int, @share_lc,
         @share_lf, @share_imp, @share_oth,
         @n, @rep_pos_n, @rep_pos_amt,
         @rep_neg_n, @rep_neg_amt,
         @transfer_api_body, @transfer_leg_count, @transfer_gross_moved, @transfer_net_amount);

    ------------------------------------------------------------------
    -- Build the printable HTML report
    ------------------------------------------------------------------
    -- lender rows (from lender_portfolio_full, latest snapshot per loan)
    DECLARE @lender_rows nvarchar(max) =
    (
        SELECT STRING_AGG(CONVERT(nvarchar(max),
              '<tr><td>' + ISNULL(lf.full_name, '<span class="dim">(name not in lender_full)</span>') + '</td>'
            + '<td>' + ISNULL(lpf.lender_account_code,'') + '</td>'
            + '<td>' + ISNULL(lpf.borrower_name,'') + '</td>'
            + '<td class="num">' + ISNULL(CONVERT(varchar(20), lpf.pct_owned),'') + '</td>'
            + '<td class="num">' + ISNULL(CONVERT(varchar(30), CONVERT(decimal(18,2), ISNULL(@principal,0) * lpf.pct_owned / 100.0)),'') + '</td>'
            + '<td class="num">' + ISNULL(CONVERT(varchar(20), lpf.loan_balance),'') + '</td>'
            + '<td>' + ISNULL(CONVERT(varchar(10), lpf.file_date, 23),'') + '</td></tr>'), '')
            WITHIN GROUP (ORDER BY lpf.pct_owned DESC, lpf.lender_account_code)
        FROM dbo.lender_portfolio_full lpf
        LEFT JOIN dbo.lender_full lf ON lf.account_code = lpf.lender_account_code
        WHERE lpf.account_no = @loan_account
          AND lpf.file_date = @latest_file_date
    );
    IF @lender_rows IS NULL SET @lender_rows = '<tr><td colspan="7">No lenders found for this loan (lender_portfolio_full empty for this account_no).</td></tr>';

    -- ALL fetched transactions; the ones in the effective month are highlighted
    DECLARE @hist_rows nvarchar(max) =
    (
        SELECT STRING_AGG(CONVERT(nvarchar(max),
              '<tr class="' + CASE WHEN in_effective_month = 1 THEN 'sel' ELSE 'dim' END + '">'
            + '<td>' + CONVERT(varchar(10), date_rec, 23) + '</td>'
            + '<td>' + ISNULL(source_app,'') + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_principal) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_interest) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_late_charge) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_lender_fee) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_impound) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), to_other_payments) + '</td>'
            + '<td class="num">' + CONVERT(varchar(30), total_amount) + '</td>'
            + '<td class="' + CASE WHEN direction='NEGATIVE' THEN 'neg' ELSE 'pos' END + '">' + direction + '</td>'
            + '<td>' + CASE WHEN in_effective_month = 1 THEN 'SELECTED' ELSE '&mdash;' END + '</td></tr>'), '')
            WITHIN GROUP (ORDER BY date_rec)
        FROM dbo.loan_history_preview WHERE loan_account = @loan_account
    );
    IF @hist_rows IS NULL SET @hist_rows = '<tr><td colspan="11">No history returned.</td></tr>';

    -- the NEW transactions that would be created (reversal posts, then replay posts)
    DECLARE @new_rows nvarchar(max) =
    (
        SELECT STRING_AGG(CONVERT(nvarchar(max), row_html), '')
               WITHIN GROUP (ORDER BY phase_ord, date_rec)
        FROM (
            SELECT 1 AS phase_ord, date_rec,
                   '<tr><td>Phase 1 &mdash; Reversal</td>'
                 + '<td>' + CONVERT(varchar(10), date_rec, 23) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_principal) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_interest) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_late_charge) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_lender_fee) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_impound) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), -to_other_payments) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), reversal_amount) + '</td>'
                 + '<td class="' + CASE WHEN reversal_amount < 0 THEN 'neg' ELSE 'pos' END + '">'
                 + CASE WHEN reversal_amount < 0 THEN 'NEGATIVE' ELSE 'POSITIVE' END + '</td></tr>' AS row_html
            FROM dbo.loan_history_preview
            WHERE loan_account = @loan_account AND in_effective_month = 1
            UNION ALL
            SELECT 2 AS phase_ord, date_rec,
                   '<tr><td>Phase 3 &mdash; Replay</td>'
                 + '<td>' + CONVERT(varchar(10), date_rec, 23) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_principal) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_interest) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_late_charge) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_lender_fee) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_impound) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), to_other_payments) + '</td>'
                 + '<td class="num">' + CONVERT(varchar(30), replay_amount) + '</td>'
                 + '<td class="' + CASE WHEN replay_amount < 0 THEN 'neg' ELSE 'pos' END + '">'
                 + CASE WHEN replay_amount < 0 THEN 'NEGATIVE' ELSE 'POSITIVE' END + '</td></tr>' AS row_html
            FROM dbo.loan_history_preview
            WHERE loan_account = @loan_account AND in_effective_month = 1
        ) x
    );
    IF @new_rows IS NULL SET @new_rows = '<tr><td colspan="10">No transactions in this window &mdash; nothing to reverse or replay.</td></tr>';

    -- API audit rows. Shows each call's URL, payload summary, and response.
    -- Dry-run: response = "(dry-run, not called)". Real run: pulled from loan_history_replay_stage via LEFT JOIN on src_recid.
    DECLARE @audit_rows nvarchar(max) =
    (
        SELECT STRING_AGG(CONVERT(nvarchar(max), row_html), '') WITHIN GROUP (ORDER BY ord, date_rec_key, src_recid_key)
        FROM (
            -- Phase 1 reversal calls (one per in-window txn)
            SELECT 1 AS ord, p.date_rec AS date_rec_key, ISNULL(p.src_recid,'') AS src_recid_key,
                   '<tr><td>Phase 1 reversal</td>'
                 + '<td>POST /LSS.svc/AddLoanHistory</td>'
                 + '<td>LoanAccount=' + p.loan_account + ', DateRec=' + CONVERT(varchar(10),p.date_rec,23)
                 + ', To* negated, Total=' + CONVERT(varchar(30), p.reversal_amount) + '</td>'
                 + '<td>' + CASE WHEN @dry_run = 1 OR s.reversal_status IS NULL
                                 THEN '<span class="dim">(dry-run, not called)</span>'
                                 ELSE 'status=' + ISNULL(s.reversal_status,'') +
                                      ', recid=' + ISNULL(s.reversal_recid,'') END + '</td></tr>' AS row_html
            FROM dbo.loan_history_preview p
            LEFT JOIN dbo.loan_history_replay_stage s
                   ON s.loan_account = p.loan_account AND s.src_recid = p.src_recid
            WHERE p.loan_account = @loan_account AND p.in_effective_month = 1
            UNION ALL
            -- Phase 2 ad-funding call (exactly one, multi-leg transfer body)
            SELECT 2 AS ord, NULL AS date_rec_key, '' AS src_recid_key,
                   '<tr><td>Phase 2 ad-funding (transfer, ' + CONVERT(varchar(10), @transfer_leg_count) + ' legs)</td>'
                 + '<td>POST /LSS.svc/AddFundings</td>'
                 + '<td>' + @transfer_api_body + '</td>'
                 + '<td>' + CASE WHEN @dry_run = 1
                                 THEN '<span class="dim">(dry-run, not called)</span>'
                                 ELSE ISNULL((SELECT TOP 1 'status=' + ISNULL(adfund_status,'')
                                              FROM dbo.loan_history_replay_stage
                                              WHERE loan_account = @loan_account AND adfund_status IS NOT NULL
                                              ORDER BY adfund_posted_on DESC),
                                             '<span class="dim">no response captured</span>') END
                 + '</td></tr>' AS row_html
            UNION ALL
            -- Phase 3 replay calls (one per in-window txn)
            SELECT 3 AS ord, p.date_rec AS date_rec_key, ISNULL(p.src_recid,'') AS src_recid_key,
                   '<tr><td>Phase 3 replay</td>'
                 + '<td>POST /LSS.svc/AddLoanHistory</td>'
                 + '<td>LoanAccount=' + p.loan_account + ', DateRec=' + CONVERT(varchar(10),p.date_rec,23)
                 + ', To* original, Total=' + CONVERT(varchar(30), p.replay_amount) + '</td>'
                 + '<td>' + CASE WHEN @dry_run = 1 OR s.replay_status IS NULL
                                 THEN '<span class="dim">(dry-run, not called)</span>'
                                 ELSE 'status=' + ISNULL(s.replay_status,'') +
                                      ', recid=' + ISNULL(s.replay_recid,'') END + '</td></tr>' AS row_html
            FROM dbo.loan_history_preview p
            LEFT JOIN dbo.loan_history_replay_stage s
                   ON s.loan_account = p.loan_account AND s.src_recid = p.src_recid
            WHERE p.loan_account = @loan_account AND p.in_effective_month = 1
        ) x
    );
    IF @audit_rows IS NULL SET @audit_rows = '<tr><td colspan="4">No transactions in window &mdash; no API calls planned.</td></tr>';
    DECLARE @mode_label varchar(40) = CASE WHEN @dry_run = 1 THEN 'DRY RUN &mdash; no API calls were made' ELSE 'REAL RUN &mdash; API calls executed' END;

    DECLARE @html nvarchar(max) =
N'<!DOCTYPE html><html><head><meta charset="utf-8"><title>Loan Preview ' + @loan_account + '</title>
<style>
body{font-family:Segoe UI,Arial,sans-serif;color:#1e293b;margin:32px;font-size:14px;}
h1{font-size:22px;margin:0 0 4px;}
.sub{color:#64748b;margin-bottom:24px;font-size:13px;}
.card{border:1px solid #e2e8f0;border-radius:8px;padding:16px 20px;margin-bottom:16px;}
.card h2{font-size:13px;text-transform:uppercase;letter-spacing:.08em;color:#475569;margin:0 0 12px;}
.kv{display:flex;justify-content:space-between;padding:4px 0;border-bottom:1px solid #f1f5f9;}
.kv:last-child{border-bottom:none;}
.kv .v{font-weight:600;}
table{border-collapse:collapse;width:100%;font-size:13px;}
th,td{border:1px solid #e2e8f0;padding:6px 10px;text-align:left;}
th{background:#f8fafc;text-transform:uppercase;font-size:11px;letter-spacing:.06em;color:#475569;}
td.num{text-align:right;font-variant-numeric:tabular-nums;}
tr.sel td{background:#dcfce7;}
tr.dim td{color:#94a3b8;}
span.dim{color:#94a3b8;font-style:italic;}
.neg{color:#b91c1c;font-weight:600;}
.pos{color:#047857;font-weight:600;}
.big{font-size:18px;font-weight:700;}
.legend{font-size:12px;color:#64748b;margin-top:8px;}
.legend b{background:#dcfce7;color:#166534;padding:1px 6px;border-radius:3px;}
</style></head><body>
<h1>Loan-History Reverse-Replay &mdash; Preview</h1>
<div class="sub">Loan ' + @loan_account + ' &nbsp;&middot;&nbsp; ' + ISNULL(@borrower,'') + ' &nbsp;&middot;&nbsp; '
   + @month_label + ' &nbsp;&middot;&nbsp; generated ' + CONVERT(varchar(19), GETDATE(), 120) + '</div>

<div class="card"><h2>1 &middot; The loan</h2>
<div class="kv"><span>Loan account</span><span class="v">' + @loan_account + '</span></div>
<div class="kv"><span>Borrower</span><span class="v">' + ISNULL(@borrower,'n/a') + '</span></div>
<div class="kv"><span>Original loan amount</span><span class="v">' + ISNULL(CONVERT(varchar(30),@orig_bal),'n/a') + '</span></div>
<div class="kv"><span>Current principal balance</span><span class="v">' + ISNULL(CONVERT(varchar(30),@principal),'n/a') + '</span></div>
</div>

<div class="card"><h2>2 &middot; Lenders on this loan (latest snapshot from lender_portfolio_full)</h2>
<table><thead><tr><th>Lender name</th><th>Lender account code</th><th>Borrower (from snapshot)</th><th>% owned</th><th>Funded = balance &times; pct</th><th>Snapshot loan balance</th><th>Snapshot date</th></tr></thead>
<tbody>' + @lender_rows + '</tbody></table>
<div class="legend">"Funded = balance &times; pct" uses the loan''s current principal balance &times; each lender''s % &mdash; this should match the lender''s Principal Balance in the TMO funding screen.</div>
</div>

<div class="card"><h2>3 &middot; History fetched</h2>
<div class="kv"><span>Source</span><span class="v">TMO GetLoanHistory API</span></div>
<div class="kv"><span>Total history records on loan</span><span class="v">' + CONVERT(varchar(20),@total_fetched) + '</span></div>
<div class="kv"><span>Window (effective date to today)</span><span class="v">' + @month_label + '</span></div>
<div class="kv"><span>Transactions in that window</span><span class="v">' + CONVERT(varchar(20),@n) + '</span></div>
</div>

<div class="card"><h2>4 &middot; All transactions fetched</h2>
<table><thead><tr><th>Date received</th><th>Source</th><th>To Principal</th><th>To Interest</th><th>To Late Charge</th><th>To Lender Fee</th><th>To Impound</th><th>To Other</th><th>Total</th><th>Direction</th><th>Selected</th></tr></thead>
<tbody>' + @hist_rows + '</tbody></table>
<div class="legend">Rows in <b>green</b> fall in the window ' + @month_label + ' &mdash; these are the ones reversed and replayed.</div>
</div>

<div class="card"><h2>5 &middot; New transactions that will be created</h2>
<table><thead><tr><th>Phase</th><th>Date</th><th>To Principal</th><th>To Interest</th><th>To Late Charge</th><th>To Lender Fee</th><th>To Impound</th><th>To Other</th><th>Total</th><th>Direction</th></tr></thead>
<tbody>' + @new_rows + '</tbody></table>
</div>

<div class="card"><h2>6 &middot; Where the money went (window total)</h2>
<div class="kv"><span>To Principal</span><span class="v">' + CONVERT(varchar(30),@net_principal) + '</span></div>
<div class="kv"><span>To Interest</span><span class="v">' + CONVERT(varchar(30),@w_int) + '</span></div>
<div class="kv"><span>To Late Charge</span><span class="v">' + CONVERT(varchar(30),@w_lc) + '</span></div>
<div class="kv"><span>To Lender Fee</span><span class="v">' + CONVERT(varchar(30),@w_lf) + '</span></div>
<div class="kv"><span>To Impound</span><span class="v">' + CONVERT(varchar(30),@w_imp) + '</span></div>
<div class="kv"><span>To Other Payments</span><span class="v">' + CONVERT(varchar(30),@w_oth) + '</span></div>
</div>

<div class="card"><h2>7 &middot; Balance the ad-funding will see</h2>
<div class="kv"><span>Current principal balance</span><span class="v">' + ISNULL(CONVERT(varchar(30),@principal),'n/a') + '</span></div>
<div class="kv"><span>Principal added back by the reversals</span><span class="v">' + CONVERT(varchar(30),@net_principal) + '</span></div>
<div class="kv"><span>Indicative balance after reversals</span><span class="v big">' + ISNULL(CONVERT(varchar(30),@bal_after),'n/a') + '</span></div>
</div>

<div class="card"><h2>8 &middot; Ad-funding the lender (TRANSFER)</h2>'
+ CASE WHEN ISNULL(@neg_count,0) = 0 THEN
    '<div class="kv"><span class="neg">&#9888; NO TRANSFER WILL BE POSTED</span><span class="v neg">no current lenders found in lender_portfolio_full to debit (or the only lender IS the destination). A real run is SKIPPED to avoid posting a spurious one-sided funding.</span></div>'
  ELSE '' END
+ '<div class="kv"><span>New lender (receives)</span><span class="v">' + ISNULL(@lender_code,'n/a') + ' &mdash; ' + ISNULL(@selected_lender_name,'(new)') + '</span></div>
<div class="kv"><span>Fund percentage of each position moved</span><span class="v">' + CONVERT(varchar(30),@pct) + '%</span></div>
<div class="kv"><span>Balance the ad-funding sees</span><span class="v">' + CONVERT(varchar(30),@bal_after) + '</span></div>
<div class="kv"><span>Total moved to new lender</span><span class="v big">' + CONVERT(varchar(30),@transfer_gross_moved) + '</span></div>
<div class="kv"><span>Net effect on loan total</span><span class="v">' + CONVERT(varchar(30),@transfer_net_amount) + ' (legs net to zero &mdash; a transfer, not an add)</span></div>
<table style="margin-top:12px"><thead><tr><th>Leg</th><th>Lender account</th><th>Lender name</th><th>Amount</th></tr></thead>
<tbody>' + ISNULL(@transfer_rows,'<tr><td colspan="4">No legs</td></tr>') + '</tbody></table>
<div class="legend">Each current lender is DEBITED (&minus;) its share of the balance; the new lender is CREDITED (+) the sum. This mirrors the existing Excel flow''s two-leg transfer (vw_post_fund_adjustment_base).</div>
</div>

<div class="card"><h2>9 &middot; Period activity by allocation (window total &times; pct)</h2>
<table>
<thead><tr><th>Allocation</th><th>Window total</th><th>&times; Fund pct</th><th>Lender''s share</th></tr></thead>
<tbody>
<tr><td>To Principal</td><td class="num">' + CONVERT(varchar(30),@net_principal) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_prin) + '</td></tr>
<tr><td>To Interest</td><td class="num">' + CONVERT(varchar(30),@w_int) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_int) + '</td></tr>
<tr><td>To Late Charge</td><td class="num">' + CONVERT(varchar(30),@w_lc) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_lc) + '</td></tr>
<tr><td>To Lender Fee</td><td class="num">' + CONVERT(varchar(30),@w_lf) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_lf) + '</td></tr>
<tr><td>To Impound</td><td class="num">' + CONVERT(varchar(30),@w_imp) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_imp) + '</td></tr>
<tr><td>To Other Payments</td><td class="num">' + CONVERT(varchar(30),@w_oth) + '</td><td class="num">' + CONVERT(varchar(30),@pct) + '</td><td class="num">' + CONVERT(varchar(30),@share_oth) + '</td></tr>
</tbody></table>
<div class="legend">Informational &mdash; this is the lender''s share of each allocation type in the period. The actual ad-funding amount above is computed as the balance &times; pct (principal-based), not the sum of this table.</div>
</div>

<div class="card"><h2>10 &middot; API audit &mdash; ' + @mode_label + '</h2>
<table>
<thead><tr><th>Phase</th><th>API</th><th>Payload (summary)</th><th>Response</th></tr></thead>
<tbody>' + @audit_rows + '</tbody></table>
<div class="legend">Each row is one HTTP call the pipeline would make (dry run) or did make (real run). For real runs, full responses are stored in loan_history_replay_stage.</div>
</div>

<div class="sub">' + CASE WHEN @dry_run = 1 THEN 'Preview only &mdash; no transactions were posted to TMO. The balance after reversals is indicative; TMO computes the authoritative figure when the entries are posted.'
                       ELSE 'Real run &mdash; transactions were posted to TMO. See loan_history_replay_stage for the full audit (RecIDs, response bodies, timestamps).' END + '</div>
</body></html>';

    UPDATE dbo.loan_history_preview_summary
       SET report_html = @html
     WHERE loan_account = @loan_account;
END;
GO


------------------------------------------------------------
-- 14. pr_compute_adfund_amount — derive the ad-funding dollar
--     amount from the staged history + GetLoan principal and
--     UPDATE fund_adjustment_detail for that loan.
--
--     amount = (current_principal + sum_to_principal_in_window)
--              x fund_percentage
------------------------------------------------------------
IF OBJECT_ID('dbo.pr_compute_adfund_amount', 'P') IS NOT NULL
    DROP PROCEDURE dbo.pr_compute_adfund_amount;
GO
CREATE PROCEDURE dbo.pr_compute_adfund_amount
    @loan_account     varchar(50),
    @effective_date   date,
    @replay_batch_id  varchar(20),
    @fund_percentage  decimal(9,4),
    @loan_response    nvarchar(max) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @today date = CAST(GETDATE() AS date);

    DECLARE @principal decimal(18,4) = TRY_CONVERT(decimal(18,4), COALESCE(
        JSON_VALUE(@loan_response, '$.Data.Terms.PrincipalBalance'),
        JSON_VALUE(@loan_response, '$.Data[0].Terms.PrincipalBalance')));

    DECLARE @net_principal decimal(18,4) = ISNULL((
        SELECT SUM(to_principal)
        FROM dbo.loan_history_replay_stage
        WHERE replay_batch_id = @replay_batch_id
          AND loan_account    = @loan_account
          AND date_rec        >= @effective_date
          AND date_rec        <= @today
    ), 0);

    DECLARE @balance_after decimal(18,4) = ISNULL(@principal, 0) + @net_principal;
    -- @fund_percentage is a PERCENT (100 = 100%); divide by 100 for the multiplier
    DECLARE @amount        decimal(18,4) = @balance_after * @fund_percentage / 100.0;

    UPDATE dbo.fund_adjustment_detail
       SET adjustment_amt    = @amount,
           principal_balance = @principal
     WHERE account_no   = @loan_account
       AND is_processed = 0;
END;
GO
