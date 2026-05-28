-- DROP SCHEMA dbo;

CREATE SCHEMA dbo;
-- cal_bi_analytics_dev.dbo.LoanAdditionalInfoAPI definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.LoanAdditionalInfoAPI;

CREATE TABLE cal_bi_analytics_dev.dbo.LoanAdditionalInfoAPI (
	is_last_row varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	total_count int NULL,
	RowNumber bigint NULL,
	GroupNumber bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NOT NULL,
	api_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_url varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	token varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dbase_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	key_value varchar(66) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.RMBS_Amortization__c definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.RMBS_Amortization__c;

CREATE TABLE cal_bi_analytics_dev.dbo.RMBS_Amortization__c (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Balance__c decimal(18,2) NULL,
	Interest__c decimal(18,2) NULL,
	Number__c decimal(18,0) NULL,
	Payment__c decimal(18,2) NULL,
	Principal__c decimal(18,2) NULL,
	Date_of_Payment__c datetime2(0) NULL
);


-- cal_bi_analytics_dev.dbo.RMBS_Purchase definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.RMBS_Purchase;

CREATE TABLE cal_bi_analytics_dev.dbo.RMBS_Purchase (
	[Application Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TMO Account Number from Origination] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TMO Account Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Approved Mortgage Formula] decimal(38,18) NULL,
	[Created Date] datetime2 NULL,
	[Close Date] datetime2 NULL,
	[Funding Date] datetime2 NULL,
	[Funded Date] datetime2 NULL,
	[Interest Adjustment Date] datetime2 NULL,
	[First Payment Date] datetime2 NULL,
	[Maturity Date] datetime2 NULL,
	[New Maturity Date on Renewal] datetime2 NULL,
	[Repayment Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Term (In Months)] decimal(38,18) NULL,
	[Amortization Period] decimal(38,18) NULL,
	[Annual Interest Rate] decimal(38,18) NULL,
	[Chosen Rate Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Note Rate] decimal(38,18) NULL,
	[Requested Term Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment Amount] decimal(38,18) NULL,
	[Payment Frequency] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Primary Applicant Credit Score] decimal(38,18) NULL,
	[Applicant Credit Report Date] datetime2 NULL,
	[Approved LTV] decimal(38,18) NULL,
	[Appraised Value] decimal(38,18) NULL,
	[Appraisal Date] datetime2 NULL,
	[Dwelling Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property Occupancy Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Position] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property City] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property Postal Code] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Updated Mortgage Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Possession Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bank of Canada Overnight Rate] decimal(38,18) NULL,
	Stage nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.RMBS_Test definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.RMBS_Test;

CREATE TABLE cal_bi_analytics_dev.dbo.RMBS_Test (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.Report_Agent_Deals_Submission_History definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.Report_Agent_Deals_Submission_History;

CREATE TABLE cal_bi_analytics_dev.dbo.Report_Agent_Deals_Submission_History (
	[First Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Last Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Agent Deals History: Agent Deals History Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Period nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Submitted Deals] decimal(38,18) NULL,
	[Funded Deals] decimal(38,18) NULL,
	[Agent Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.Report_Agent_Licenses definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.Report_Agent_Licenses;

CREATE TABLE cal_bi_analytics_dev.dbo.Report_Agent_Licenses (
	[Full Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contact Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Agent ID] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.SF_Account definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Account;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Account (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	MasterRecordId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Salutation nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MiddleName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Suffix nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ParentId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BillingLatitude decimal(18,15) NULL,
	BillingLongitude decimal(18,15) NULL,
	BillingGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ShippingLatitude decimal(18,15) NULL,
	ShippingLongitude decimal(18,15) NULL,
	ShippingGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Phone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fax nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountNumber nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Website nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PhotoUrl nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sic nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Industry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AnnualRevenue decimal(18,0) NULL,
	NumberOfEmployees int NULL,
	Ownership nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TickerSymbol nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rating nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Site nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnerId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	LastActivityDate datetime2(0) NULL,
	LastViewedDate datetime2(0) NULL,
	LastReferencedDate datetime2(0) NULL,
	IsPartner bit NULL,
	IsCustomerPortal bit NULL,
	PersonContactId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPersonAccount bit NULL,
	ChannelProgramName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ChannelProgramLevelName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMailingLatitude decimal(18,15) NULL,
	PersonMailingLongitude decimal(18,15) NULL,
	PersonMailingGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherLatitude decimal(18,15) NULL,
	PersonOtherLongitude decimal(18,15) NULL,
	PersonOtherGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonMobilePhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonHomePhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonOtherPhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonAssistantPhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonEmail nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonTitle nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonDepartment nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonAssistantName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonLeadSource nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonBirthdate datetime2(0) NULL,
	PersonHasOptedOutOfEmail bit NULL,
	PersonHasOptedOutOfFax bit NULL,
	PersonDoNotCall bit NULL,
	PersonLastCURequestDate datetime2(0) NULL,
	PersonLastCUUpdateDate datetime2(0) NULL,
	PersonEmailBouncedReason nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonEmailBouncedDate datetime2(0) NULL,
	PersonIndividualId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jigsaw nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	JigsawCompanyId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountSource nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SicDesc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OperatingHoursId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	License_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SQL_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Broker__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Tier__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accountant_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	General_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fund__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_modify_Brokerage_Tier_Date__c datetime2(0) NULL,
	Parent_Account_WF__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account_Blacklisted__c bit NULL,
	Ontario_Numbered_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Advisor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Corporation_Name_Registered_Account_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Job_Title__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Language_Preference__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_Contact_Method__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Advisor_Group__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Parent_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Quickbooks_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Synced__c bit NULL,
	QB_Error_Message__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QB_Sync_Date__c datetime2(0) NULL,
	dupcheck__dc3DisableDuplicateCheck__c bit NULL,
	dupcheck__dc3Index__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account_Blacklist_Reasoning__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage_Firm_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Blacklisted__c bit NULL,
	dupcheck__dc3UltimateParent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Consent__c bit NULL,
	Renewal_Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SQL_ID__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PDF_Name__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_residence__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Marital_Status__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_of_Birth__pc datetime2(0) NULL,
	Dependents__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SIN__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Time_at_Residence__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_job__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupation__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Self_Employed__pc bit NULL,
	Annual_Income__pc decimal(18,2) NULL,
	Current_Time_at_Job__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Applicant__pc bit NULL,
	Current_Job_Title__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employment_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Self_Employed__pc bit NULL,
	Current_Annual_Income__pc decimal(18,2) NULL,
	Previous_Employer__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Time_at_Job__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Applicant__pc bit NULL,
	Previous_Job_Title__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Self_Employed__pc bit NULL,
	Previous_Annual_Income__pc decimal(18,2) NULL,
	Employment_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employment_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Residential_Status__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Work__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Residential_Status__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Postal_Code__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Street__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_ID__pc decimal(18,0) NULL,
	Agent_ID__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contact_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Borrower_Id__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Exported_to_TMO__pc bit NULL,
	Credit_Score__pc decimal(3,0) NULL,
	Source__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trade_Show_Conference_Name__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Tier__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Notes__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_modify_Agent_Tier_Date__pc datetime2(0) NULL,
	pi__Needs_Score_Synced__pc bit NULL,
	pi__Pardot_Last_Scored_At__pc datetime2(0) NULL,
	pi__campaign__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__comments__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__conversion_date__pc datetime2(0) NULL,
	pi__conversion_object_name__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__conversion_object_type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__created_date__pc datetime2(0) NULL,
	pi__first_activity__pc datetime2(0) NULL,
	pi__first_search_term__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__first_search_type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__first_touch_url__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__grade__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__last_activity__pc datetime2(0) NULL,
	pi__notes__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__pardot_hard_bounced__pc bit NULL,
	pi__score__pc decimal(18,0) NULL,
	pi__url__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_campaign__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_content__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_medium__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_source__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_term__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_Name__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_Added__pc datetime2(0) NULL,
	Status__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Home_Owner__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Work_Email_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commercial_Lead__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commercial_Property_Owner__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Email_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EXT__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_Income_Amount__pc decimal(18,2) NULL,
	Credit_Report_Date__pc datetime2(0) NULL,
	Credit_Report_Text__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Email__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Fax__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Gross_Revenue__pc decimal(18,2) NULL,
	Current_Employer_Industry_Sector__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Operating_As__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Phone__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Income_Amount__pc decimal(18,2) NULL,
	Current_Income_Period__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Income_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Occupation__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Years_in_Industry__pc decimal(18,2) NULL,
	PairOrder__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Email__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Fax__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Gross_Revenue__pc decimal(18,2) NULL,
	Previous_Employer_Industry_Sector__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Operating_As__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Phone__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Income_Amount__pc decimal(18,2) NULL,
	Previous_Income_Period__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Income_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Occupation__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Years_in_Industry__pc decimal(18,2) NULL,
	Fund__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contact_Blacklisted__pc bit NULL,
	Credit_Bureau_Provider__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Gender_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Residency_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Assistant_Email__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_Since_Last_Submission__pc decimal(16,0) NULL,
	Referral_Source__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Advisor__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_BDM__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	From_Website__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_inf__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	et4ae5__HasOptedOutOfMobile__pc bit NULL,
	et4ae5__Mobile_Country_Code__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FICO_Score__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Licence_Class__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Error_Message__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Last_Message_Status__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Unformatted_Mobile__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Unformatted_Phone__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Last_Message_Status_Date__pc datetime2(0) NULL,
	Unsubscribe_From_Twilio_Messages__pc bit NULL,
	Next_Birthday__pc datetime2(0) NULL,
	dupcheck__dc3DisableDuplicateCheck__pc bit NULL,
	dupcheck__dc3Index__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Applicant__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_1__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date__pc datetime2(0) NULL,
	New_Maturity_Date_on_Renewal__pc datetime2(0) NULL,
	Appraised_Value__pc decimal(18,2) NULL,
	Term__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loss_Reason_Other__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Lender__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Name__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Amount__pc decimal(18,2) NULL,
	Oppono_Credit_Pull_Consent__pc bit NULL,
	Preferred_Contact_Time__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Renewal_LTV__pc decimal(18,2) NULL,
	Discharge_Requested__pc bit NULL,
	Send_Credit_Email__pc bit NULL,
	Additional_Information__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Request_Reason__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Require_Additional_Funds__pc bit NULL,
	New_Email__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Order_Appraisal__pc bit NULL,
	Short_Term_Refi_1_Month__pc bit NULL,
	Short_Term_Refi_2_11_Months__pc bit NULL,
	Send_Email_4_A_ST_1_Month__pc bit NULL,
	Send_Email_4_B_ST_2_11_Months__pc bit NULL,
	Admin_Fee__pc decimal(18,2) NULL,
	Approved_LTV__pc decimal(4,2) NULL,
	Discharge_of_Mortgage_Fee__pc decimal(18,2) NULL,
	Interest_Rate__pc decimal(6,4) NULL,
	Loan_Position__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_at_Maturity_From_Original__pc decimal(18,2) NULL,
	Law_Firm__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Address__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Fax__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_firm_Email__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Phone_Number__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Admin_Renewal_Fee__pc decimal(18,2) NULL,
	Chosen_Rate_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Expiry_Date__pc datetime2(0) NULL,
	Funded_Date__pc datetime2(0) NULL,
	Lender_Fee__pc decimal(5,2) NULL,
	Requested_Term_Type__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Interest_Payment__pc decimal(18,2) NULL,
	Solicitor_on_File__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment_Prorated_Lender_Fee__pc decimal(18,2) NULL,
	First_Payment_Date__pc datetime2(0) NULL,
	Monthly_Payment__pc decimal(18,2) NULL,
	Agent_Tier_Quarter_3__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Tier_Quarter_4__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Tiering_Difference__pc bit NULL,
	Agent_Tier_Quarter_3_Record_Count__pc decimal(18,0) NULL,
	Agent_Tier_Quarter_4_Record_Count__pc decimal(18,0) NULL,
	Number_of_deals_funded_YTD__pc decimal(18,0) NULL,
	Number_of_Deals_Submitted_YTD__pc decimal(18,0) NULL,
	Projected_Number_of_Deals_Funded_for_the__pc decimal(18,2) NULL,
	Projected_Number_of_Deals_Submitted_for__pc decimal(18,2) NULL,
	Send_Appraisal_Email__pc bit NULL,
	Website__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walk_Through_Charge_Fee__pc decimal(5,2) NULL,
	Blacklist_Reasoning__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mat_Date_15__pc datetime2(0) NULL,
	Mat_Date_20__pc datetime2(0) NULL,
	Mat_Date_25__pc datetime2(0) NULL,
	A_R_Interest_Rate__pc decimal(18,2) NULL,
	A_R_Lender_Fee__pc decimal(18,2) NULL,
	A_R_Admin_Fee__pc decimal(6,2) NULL,
	A_R_Admin_Renewal_Fee__pc decimal(6,2) NULL,
	Lender_Fee_Dollar_Value__pc decimal(18,2) NULL,
	A_R_Payment_A_R_Prorated_Lender_Fee__pc decimal(18,2) NULL,
	A_R_Single_Monthly_Payment__pc decimal(18,2) NULL,
	Update_Person_Acc__pc nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.SF_Agent definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Agent;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Agent (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	LastActivityDate datetime2(0) NULL,
	Agent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Submitted_Deals__c decimal(18,0) NULL,
	Funded_Deals__c decimal(18,0) NULL,
	Period__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.SF_Asset definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Asset;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Asset (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ContactId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ParentId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RootAssetId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product2Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProductCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProductFamily nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProductDescription nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsCompetitorProduct bit NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	IsDeleted bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SerialNumber nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InstallDate datetime2(0) NULL,
	ManufactureDate datetime2(0) NULL,
	StatusReason nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Uuid nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ExternalIdentifier nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PurchaseDate datetime2(0) NULL,
	UsageEndDate datetime2(0) NULL,
	Status nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DigitalAssetStatus nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Price decimal(18,2) NULL,
	Quantity decimal(12,2) NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnerId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssetProvidedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssetServicedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsInternal bit NULL,
	AssetLevel int NULL,
	StockKeepingUnit nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ConsequenceOfFailure nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastViewedDate datetime2(0) NULL,
	LastReferencedDate datetime2(0) NULL
);


-- cal_bi_analytics_dev.dbo.SF_Asset_Share definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Asset_Share;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Asset_Share (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssetId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UserOrGroupId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssetAccessLevel nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RowCause nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL
);


-- cal_bi_analytics_dev.dbo.SF_Asset__c definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Asset__c;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Asset__c (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	Applicant_Pair__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Asset_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Value__c decimal(18,2) NULL,
	Borrower__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.SF_Contact definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Contact;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Contact (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	MasterRecordId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPersonAccount bit NULL,
	LastName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Salutation nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MiddleName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Suffix nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherLatitude decimal(18,15) NULL,
	OtherLongitude decimal(18,15) NULL,
	OtherGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingPostalCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingCountry nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MailingLatitude decimal(18,15) NULL,
	MailingLongitude decimal(18,15) NULL,
	MailingGeocodeAccuracy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Phone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fax nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MobilePhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HomePhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OtherPhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssistantPhone nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReportsToId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Email nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Title nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Department nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AssistantName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LeadSource nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Birthdate datetime2(0) NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnerId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOptedOutOfEmail bit NULL,
	HasOptedOutOfFax bit NULL,
	DoNotCall bit NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	LastActivityDate datetime2(0) NULL,
	LastCURequestDate datetime2(0) NULL,
	LastCUUpdateDate datetime2(0) NULL,
	LastViewedDate datetime2(0) NULL,
	LastReferencedDate datetime2(0) NULL,
	EmailBouncedReason nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EmailBouncedDate datetime2(0) NULL,
	IsEmailBounced bit NULL,
	PhotoUrl nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Jigsaw nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	JigsawContactId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IndividualId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SQL_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PDF_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_residence__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Marital_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_of_Birth__c datetime2(0) NULL,
	Dependents__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SIN__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Time_at_Residence__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_job__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupation__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Self_Employed__c bit NULL,
	Annual_Income__c decimal(18,2) NULL,
	Current_Time_at_Job__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Applicant__c bit NULL,
	Current_Job_Title__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Self_Employed__c bit NULL,
	Current_Annual_Income__c decimal(18,2) NULL,
	Previous_Employer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Time_at_Job__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Applicant__c bit NULL,
	Previous_Job_Title__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Self_Employed__c bit NULL,
	Previous_Annual_Income__c decimal(18,2) NULL,
	Employment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Residential_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Work__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Residential_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Postal_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Street__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_ID__c decimal(18,0) NULL,
	Agent_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contact_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Borrower_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Exported_to_TMO__c bit NULL,
	Credit_Score__c decimal(3,0) NULL,
	Source__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trade_Show_Conference_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Tier__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_modify_Agent_Tier_Date__c datetime2(0) NULL,
	pi__Needs_Score_Synced__c bit NULL,
	pi__Pardot_Last_Scored_At__c datetime2(0) NULL,
	pi__campaign__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__comments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__conversion_date__c datetime2(0) NULL,
	pi__conversion_object_name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__conversion_object_type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__created_date__c datetime2(0) NULL,
	pi__first_activity__c datetime2(0) NULL,
	pi__first_search_term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__first_search_type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__first_touch_url__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__grade__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__last_activity__c datetime2(0) NULL,
	pi__notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__pardot_hard_bounced__c bit NULL,
	pi__score__c decimal(18,0) NULL,
	pi__url__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_campaign__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_content__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_medium__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_source__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pi__utm_term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_Added__c datetime2(0) NULL,
	Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Home_Owner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Work_Email_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commercial_Lead__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commercial_Property_Owner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Email_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EXT__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_Income_Amount__c decimal(18,2) NULL,
	Credit_Report_Date__c datetime2(0) NULL,
	Credit_Report_Text__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Fax__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Gross_Revenue__c decimal(18,2) NULL,
	Current_Employer_Industry_Sector__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Operating_As__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Employer_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Income_Amount__c decimal(18,2) NULL,
	Current_Income_Period__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Income_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Occupation__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Years_in_Industry__c decimal(18,2) NULL,
	PairOrder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Fax__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Gross_Revenue__c decimal(18,2) NULL,
	Previous_Employer_Industry_Sector__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Operating_As__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Employer_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Income_Amount__c decimal(18,2) NULL,
	Previous_Income_Period__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Income_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Occupation__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Previous_Years_in_Industry__c decimal(18,2) NULL,
	Fund__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contact_Blacklisted__c bit NULL,
	Credit_Bureau_Provider__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Gender_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Residency_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Assistant_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_Since_Last_Submission__c decimal(16,0) NULL,
	Referral_Source__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Advisor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_BDM__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	From_Website__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_inf__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	et4ae5__HasOptedOutOfMobile__c bit NULL,
	et4ae5__Mobile_Country_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FICO_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Licence_Class__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Error_Message__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Last_Message_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Unformatted_Mobile__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Unformatted_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TwilioSF__Last_Message_Status_Date__c datetime2(0) NULL,
	Unsubscribe_From_Twilio_Messages__c bit NULL,
	Next_Birthday__c datetime2(0) NULL,
	dupcheck__dc3DisableDuplicateCheck__c bit NULL,
	dupcheck__dc3Index__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Applicant__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_1__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date__c datetime2(0) NULL,
	New_Maturity_Date_on_Renewal__c datetime2(0) NULL,
	Appraised_Value__c decimal(18,2) NULL,
	Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loss_Reason_Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Amount__c decimal(18,2) NULL,
	Oppono_Credit_Pull_Consent__c bit NULL,
	Preferred_Contact_Time__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Renewal_LTV__c decimal(18,2) NULL,
	Discharge_Requested__c bit NULL,
	Send_Credit_Email__c bit NULL,
	Additional_Information__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Request_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Require_Additional_Funds__c bit NULL,
	New_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Order_Appraisal__c bit NULL,
	Short_Term_Refi_1_Month__c bit NULL,
	Short_Term_Refi_2_11_Months__c bit NULL,
	Send_Email_4_A_ST_1_Month__c bit NULL,
	Send_Email_4_B_ST_2_11_Months__c bit NULL,
	Admin_Fee__c decimal(18,2) NULL,
	Approved_LTV__c decimal(4,2) NULL,
	Discharge_of_Mortgage_Fee__c decimal(18,2) NULL,
	Interest_Rate__c decimal(6,4) NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_at_Maturity_From_Original__c decimal(18,2) NULL,
	Law_Firm__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Fax__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_firm_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Phone_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Admin_Renewal_Fee__c decimal(18,2) NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Expiry_Date__c datetime2(0) NULL,
	Funded_Date__c datetime2(0) NULL,
	Lender_Fee__c decimal(5,2) NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Interest_Payment__c decimal(18,2) NULL,
	Solicitor_on_File__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment_Prorated_Lender_Fee__c decimal(18,2) NULL,
	First_Payment_Date__c datetime2(0) NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Agent_Tier_Quarter_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Agent_Tier_Quarter_4__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Tiering_Difference__c bit NULL,
	Agent_Tier_Quarter_3_Record_Count__c decimal(18,0) NULL,
	Agent_Tier_Quarter_4_Record_Count__c decimal(18,0) NULL,
	Number_of_deals_funded_YTD__c decimal(18,0) NULL,
	Number_of_Deals_Submitted_YTD__c decimal(18,0) NULL,
	Projected_Number_of_Deals_Funded_for_the__c decimal(18,2) NULL,
	Projected_Number_of_Deals_Submitted_for__c decimal(18,2) NULL,
	Send_Appraisal_Email__c bit NULL,
	Website__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walk_Through_Charge_Fee__c decimal(5,2) NULL,
	Blacklist_Reasoning__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mat_Date_15__c datetime2(0) NULL,
	Mat_Date_20__c datetime2(0) NULL,
	Mat_Date_25__c datetime2(0) NULL,
	A_R_Interest_Rate__c decimal(18,2) NULL,
	A_R_Lender_Fee__c decimal(18,2) NULL,
	A_R_Admin_Fee__c decimal(6,2) NULL,
	A_R_Admin_Renewal_Fee__c decimal(6,2) NULL,
	Lender_Fee_Dollar_Value__c decimal(18,2) NULL,
	A_R_Payment_A_R_Prorated_Lender_Fee__c decimal(18,2) NULL,
	A_R_Single_Monthly_Payment__c decimal(18,2) NULL,
	Update_Person_Acc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.SF_Liability definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.SF_Liability;

CREATE TABLE cal_bi_analytics_dev.dbo.SF_Liability (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	LastViewedDate datetime2(0) NULL,
	LastReferencedDate datetime2(0) NULL,
	SQL_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Price__c decimal(18,2) NULL,
	Assets__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Value__c decimal(18,2) NULL,
	Balance__c decimal(18,2) NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Payoff__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Liability_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Limit__c decimal(18,2) NULL,
	Maturity_Date__c datetime2(0) NULL,
	Amount__c decimal(18,2) NULL,
	Applicant_Pair__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Liability_Applicant__c bit NULL,
	Liability_Pay_Off_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_Data_BkpUp_Mar_10 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_Data_BkpUp_Mar_10;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_Data_BkpUp_Mar_10 (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_reserve varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_impound varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	trust_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	impound_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reserve_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_late_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_intrest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_apn varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_balance_amt varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unearned_discount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_senior_liens varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_officer varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Priority #] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dq_bands varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	past_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	current_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_topup_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	down_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_term_to_maturity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_only varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	true_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total Loan Balance (Including Arrears, Unpaid Interest & Charges)] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	grace_days varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_past_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	categories varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	region_rk int NULL,
	customer_rk int NULL,
	lender_rk int NULL,
	day_rk int NULL,
	valid_Flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_reserve varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_impound varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	trust_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	impound_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reserve_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_late_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_intrest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_apn varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_balance_amt varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unearned_discount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_senior_liens varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_officer varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dq_bands varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	past_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	current_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_topup_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	down_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_term_to_maturity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_only varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	true_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total Loan Balance (Including Arrears, Unpaid Interest & Charges)] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	grace_days varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_past_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	categories varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	region_rk int NULL,
	customer_rk int NULL,
	lender_rk int NULL,
	day_rk int NULL,
	valid_Flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	batch_id varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_left varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_late varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_custom_info_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	is_uploaded smallint DEFAULT 0 NULL,
	remarks varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Missed May2024 MCOCI History Data' NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data1 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data1;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data1 (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	lender_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data1_BkpUp_Mar18 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data1_BkpUp_Mar18;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data1_BkpUp_Mar18 (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	lender_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar07 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar07;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar07 (
	id int IDENTITY(1,1) NOT NULL,
	account_no varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	history_date date NULL,
	days_late int NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_Rk int NULL,
	month_rk int NULL,
	Lender_Rk int NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar17 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar17;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_Mar17 (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_reserve varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_impound varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	trust_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	impound_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reserve_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_late_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_intrest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_apn varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_balance_amt varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unearned_discount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_senior_liens varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_officer varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dq_bands varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	past_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	current_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_topup_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	down_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_term_to_maturity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_only varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	true_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total Loan Balance (Including Arrears, Unpaid Interest & Charges)] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	grace_days varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_past_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	categories varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	region_rk int NULL,
	customer_rk int NULL,
	lender_rk int NULL,
	day_rk int NULL,
	valid_Flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	batch_id varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_left varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_late varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_custom_info_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	is_uploaded smallint NULL,
	remarks varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_TotalSheet_Mar12 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_TotalSheet_Mar12;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data_BkpUp_TotalSheet_Mar12 (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_reserve varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_impound varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	trust_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	impound_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reserve_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_late_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_intrest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_apn varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_balance_amt varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unearned_discount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_senior_liens varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_officer varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dq_bands varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	past_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	current_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_topup_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	down_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_term_to_maturity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_only varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	true_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total Loan Balance (Including Arrears, Unpaid Interest & Charges)] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	grace_days varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_past_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	categories varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	region_rk int NULL,
	customer_rk int NULL,
	lender_rk int NULL,
	day_rk int NULL,
	valid_Flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	batch_id varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned_updated varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_left varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_late varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_custom_info_rk bigint NULL,
	lender_portfolio_rk bigint NULL
);


-- cal_bi_analytics_dev.dbo.TMO_history_data_May2024_MCOCI definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TMO_history_data_May2024_MCOCI;

CREATE TABLE cal_bi_analytics_dev.dbo.TMO_history_data_May2024_MCOCI (
	File_mth varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_pi varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_reserve varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_impound varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	apply_to_other varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maturity_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_off_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sold_rate1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	trust_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	impound_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reserve_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_late_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_charges varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unpaid_intrest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_apn varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_ltv1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	closing_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	booking_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_balance_amt varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	unearned_discount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_senior_liens varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_officer varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date_custom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pct_owned varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_priority_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dq_bands varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	past_due_day varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	current_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ppid_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_topup_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	down_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_term_to_maturity varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_only varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	total_loan_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	true_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Total Loan Balance (Including Arrears, Unpaid Interest & Charges)] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	grace_days varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_past_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	categories varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_left varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_late varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.TOTAL1 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.TOTAL1;

CREATE TABLE cal_bi_analytics_dev.dbo.TOTAL1 (
	File_mth varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Borrower_Name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	By_Last_Name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MI varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_Name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Paid_To varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Due_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Frequency varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Regular_Payment varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	APPLY_TO_PI varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Apply_To_Reserve varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Apply_To_Impound varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Apply_To_Other varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_Left varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_Late varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Paid_Off_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sold_Rate varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Priority varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Impound_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reserve_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unpaid_Late_Charges varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unpaid_Charges varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unpaid_Interest varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	State1 varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Zip_Code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Home_Phone varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Work_Phone varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cell_Phone varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fax_Phone varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TIN varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rate_Type varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Email_Address varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_State varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Zip varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_County varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Type varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Occupancy varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_LTV varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_APN varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Aggregate_Appraised_Value varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_LTV varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Closing_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Open_mth_year varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Payment_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Booking_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Next_Revision varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Original_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Unearned_Discount varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Date varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Aggregate_Senior_Liens varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DOB varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_flag varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_1_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_2_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_3_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_Type_1_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income_Type_2_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType_3_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_score_flag varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_1_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_2_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_3_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_in_Percent_Original_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_in_Dollars_Original_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pymt_with_NSF_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NSF_Pymt_Due_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_from_Letter_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Coding_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharging_Prinicpal_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Administration_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Mortgage_Statement_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_of_Mortgage_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProRated_Lender_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Balance_of_Renewal_Lender_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Balance_of_Auto_Renewal_LF_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Postage_and_Delivery_Costs_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Administrative_Fees_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Administration_Renewal_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Administration_Fee_renewal_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Prepayment_Costs_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	a_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Daily_ProRated_Lender_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Daily_ProRated_Prepayment_Costs_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	b_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Default_Legal_Proceedings_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maintenance_of_Property_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Wire_Fee_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower_1_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower_2_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower_3_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	c_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_to_be_returned_once_cleared_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reduction_to_Mortgagor_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Prepaid_Credit_if_applicable_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Final_Discharge_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Brokerage_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penalty_in_Months_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Per_Diem_Offset_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Charges_to_MCC_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account_Name_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Person_Account_Current_Income_Type_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product_Name_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Type_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer_Policy_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Actual_LTV_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Status_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Installments_in_Arrears_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Arrears_Balance_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reason_for_Arrears_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_Contact_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Next_Step_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Filed_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Received_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Funds_Received_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supplementary_Claim_Filed_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supp_Claim_Received_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supp_Claim_Funds_Received_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MBS_Pool_Number_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Percent_Owned_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Posted_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Txn_Definition_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funds_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Opening_Balance_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cash_back_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Collection_Cost_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Late_Payment_Interest_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penalty_Interest_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Period_Start_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Frequency_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Balance_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funding_Partner_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Next_Payment_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accrued_Interest_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Arrears_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Arrears_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_In_Months_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization_Term_in_Years_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Remaining_Amortization_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Units_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Chosen_Rate_Type_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal_Action_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_GDS_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_TDS_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_in_Arrears_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Purpose_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Agent_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Loan_Number_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Authorized_Amount_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pool_Number_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Policy_Certificate_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PYMT_PLAN_DUE_DAY_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OWNERSHIP_TYPE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LOAN_PURPOSE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	INTEREST_ADJUSTMENT_DATE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FIRST_PAYMENT_DATE__ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RENEWAL_DATE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REPAYMENT_TYPE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINALTERMMONTHS_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINALAMORTIZATIONMONTHS_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINALRATE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINALRATETYPE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PREPAYMENT_TERM_TYPE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINALBEACONDATE__ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINAL_LTV_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINAL_APPRAISAL_AMOUNT_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ORIGINAL_APPRAISAL_DATE_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LEGAL_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REO_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BANK_OF_CANADA_OVERNIGHT_RATE__ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ARM_FLOOR__ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Syndicated_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Priority_# varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Region varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Actual_Days_Late varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DQ_bands varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_Past_Due varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Arrears varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_LTV varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PPID varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PPID_LTV varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PPID_Loan_Balance varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Borrower_TopUp_Amount varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Down_Payment varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Rate varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Updated_TermtoMaturity varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Only varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Loan_Balance_ varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	True_LTV varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Loan_Balance_2 varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Grace_Days varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_PastDueDate varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Categories varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.api_master definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_master;

CREATE TABLE cal_bi_analytics_dev.dbo.api_master (
	api_rk int IDENTITY(1,1) NOT NULL,
	api_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_url varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_desc varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_type varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_prop varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_override_applicable varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_override_parameter_value varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_run_successfully varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	execution_seq_no smallint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date datetime DEFAULT getdate() NULL,
	valid_to_date datetime DEFAULT '9999-12-31 23:59:59' NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	process_bulk_response varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'N' NULL,
	CONSTRAINT UQ__api_mast__2CAF746CB0C3F0CC UNIQUE (api_code)
);


-- cal_bi_analytics_dev.dbo.api_raw_response_loan_by_ts definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_raw_response_loan_by_ts;

CREATE TABLE cal_bi_analytics_dev.dbo.api_raw_response_loan_by_ts (
	api_url nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_name nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	is_processed tinyint NULL,
	is_error tinyint NULL,
	created_by nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime2 DEFAULT sysdatetime() NULL,
	updated_by nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime2 NULL,
	is_flattened bit NULL
);
 CREATE NONCLUSTERED INDEX IX_raw_flags ON cal_bi_analytics_dev.dbo.api_raw_response_loan_by_ts (  is_processed ASC  , is_error ASC  , is_flattened ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE UNIQUE NONCLUSTERED INDEX UX_api_raw_file ON cal_bi_analytics_dev.dbo.api_raw_response_loan_by_ts (  file_name ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.api_response definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response (
	api_response_rk bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint DEFAULT 0 NULL,
	is_error smallint DEFAULT 0 NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL
);


-- cal_bi_analytics_dev.dbo.api_response_arc definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_arc;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_arc (
	api_response_rk bigint NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint NULL,
	is_error smallint NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	archived_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Auto' NULL,
	archived_on varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT getdate() NULL,
	CONSTRAINT PK__api_resp__3A758BEAAEE80E2D PRIMARY KEY (api_response_rk)
);


-- cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 (
	api_response_rk bigint NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint NULL,
	is_error smallint NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	archived_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Auto' NULL,
	archived_on varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT getdate() NULL,
	CONSTRAINT PK__api_resp__3A758BEA766E2E90 PRIMARY KEY (api_response_rk)
);
 CREATE NONCLUSTERED INDEX idx_api_response_arc_001 ON cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 (  is_processed ASC  , as_at_date_rk ASC  , key_value ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_api_response_arc_002 ON cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 (  is_error ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_api_response_arc_003 ON cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 (  archived_on ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_api_response_arc_004 ON cal_bi_analytics_dev.dbo.api_response_arc_bkp_26012026 (  batch_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.api_response_bkp_24012026 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_bkp_24012026;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_bkp_24012026 (
	api_response_rk bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint DEFAULT 0 NULL,
	is_error smallint DEFAULT 0 NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL
);
 CREATE NONCLUSTERED INDEX idx_api_response_001 ON cal_bi_analytics_dev.dbo.api_response_bkp_24012026 (  is_processed ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_api_response_002 ON cal_bi_analytics_dev.dbo.api_response_bkp_24012026 (  api_rk ASC  , is_processed ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_api_response_003 ON cal_bi_analytics_dev.dbo.api_response_bkp_24012026 (  batch_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.api_response_bkp_26012026 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_bkp_26012026;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_bkp_26012026 (
	api_response_rk bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint DEFAULT 0 NULL,
	is_error smallint DEFAULT 0 NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL
);


-- cal_bi_analytics_dev.dbo.api_response_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_full;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_full (
	api_response_rk bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint DEFAULT 0 NULL,
	is_error smallint DEFAULT 0 NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL
);


-- cal_bi_analytics_dev.dbo.api_response_full_archive definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.api_response_full_archive;

CREATE TABLE cal_bi_analytics_dev.dbo.api_response_full_archive (
	api_response_rk bigint NOT NULL,
	batch_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_rk int NULL,
	api_request varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed smallint DEFAULT 0 NULL,
	is_error smallint DEFAULT 0 NULL,
	as_at_date_rk int NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	archived_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	archived_on varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_customer definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_customer;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_customer (
	customer_rk bigint IDENTITY(1,1) NOT NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dob date NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_cust__CD65F330A894F639 PRIMARY KEY (customer_rk)
);
 CREATE NONCLUSTERED INDEX idx_dim_customer_001 ON cal_bi_analytics_dev.dbo.dim_customer (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_customer_002 ON cal_bi_analytics_dev.dbo.dim_customer (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_customer_003 ON cal_bi_analytics_dev.dbo.dim_customer (  borrower_name ASC  , tin ASC  , dob ASC  , email_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.dim_day definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_day;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_day (
	day_rk int NOT NULL,
	month_rk int NOT NULL,
	year_rk int NULL,
	w_Date date NULL,
	w_quarter smallint NULL,
	w_month smallint NULL,
	w_week smallint NULL,
	w_day smallint NULL,
	w_day_of_year smallint NULL,
	w_day_of_week smallint NULL,
	w_quarter_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	w_month_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	w_week_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	w_day_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_first_day_of_month smallint NULL,
	is_last_day_of_month smallint NULL,
	CONSTRAINT PK__dim_day__8B512DB538505089 PRIMARY KEY (day_rk)
);


-- cal_bi_analytics_dev.dbo.dim_lender definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender (
	lender_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_lend__1F74D9CE5CA8156D PRIMARY KEY (lender_rk)
);
 CREATE NONCLUSTERED INDEX idx_dim_lender_001 ON cal_bi_analytics_dev.dbo.dim_lender (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_002 ON cal_bi_analytics_dev.dbo.dim_lender (  lender_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_003 ON cal_bi_analytics_dev.dbo.dim_lender (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_004 ON cal_bi_analytics_dev.dbo.dim_lender (  account_code ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adusted_days_late int NULL,
	CONSTRAINT PK__dim_lend__F7878CBF4E32BFD7 PRIMARY KEY (lender_portfolio_rk)
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_20250321 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_20250321;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_20250321 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18_1 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18_1;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Before_Update_History_Data_Mar18_1 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_BkpUp_Sep23 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_Manual_His_BkpUp_20250321 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_Manual_His_BkpUp_20250321;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_Manual_His_BkpUp_20250321 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_Sep23 (
	lender_portfolio_rk bigint NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_lend__F7878CBF26ECC42B PRIMARY KEY (lender_portfolio_rk)
);
 CREATE NONCLUSTERED INDEX idx_dim_lender_portfolio_001 ON cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_portfolio_002 ON cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (  lender_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_portfolio_003 ON cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_portfolio_004 ON cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (  lender_portfolio_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_lender_portfolio_005 ON cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_26012026 (  loan_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_260120261 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_260120261;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_bkp_260120261 (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adusted_days_late int NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_prod definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_prod;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_prod (
	lender_portfolio_rk int NOT NULL,
	lender_rk smallint NOT NULL,
	loan_rk int NOT NULL,
	lender_account_code nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	borrower_name nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	account_no int NOT NULL,
	first_funding_date date NOT NULL,
	last_funding_date date NOT NULL,
	pct_owned tinyint NOT NULL,
	lender_rate float NOT NULL,
	note_rate float NOT NULL,
	maturity_date date NOT NULL,
	term_left smallint NOT NULL,
	next_payment_date date NOT NULL,
	regular_payment float NOT NULL,
	loan_balance float NOT NULL,
	days_late smallint NOT NULL,
	valid_flag nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	valid_from_date date NOT NULL,
	valid_to_date date NOT NULL,
	created_on nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	created_by nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	mdm_checksum nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	batch_id nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	remarks nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	adusted_days_late tinyint NOT NULL
);


-- cal_bi_analytics_dev.dbo.dim_lender_portfolio_test definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_test;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_lender_portfolio_test (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan (
	loan_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'O' NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_loan__A1F8DE28470D12D0 PRIMARY KEY (loan_rk)
);
 CREATE NONCLUSTERED INDEX idx_dim_loan_001 ON cal_bi_analytics_dev.dbo.dim_loan (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_002 ON cal_bi_analytics_dev.dbo.dim_loan (  loan_rec_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_003 ON cal_bi_analytics_dev.dbo.dim_loan (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_004 ON cal_bi_analytics_dev.dbo.dim_loan (  account_no ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_005 ON cal_bi_analytics_dev.dbo.dim_loan (  account_status ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.dim_loan1 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan1;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan1 (
	loan_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_BkpUp_20240120 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_20240120;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_20240120 (
	loan_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	term_left int NULL,
	late_days int NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Before_Update_History_Data_Mar18 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Before_Update_History_Data_Mar18;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Before_Update_History_Data_Mar18 (
	loan_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_BkpUp_Sep23 (
	loan_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_Sep23 (
	loan_rk bigint NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_rk int NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_additional_info definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_additional_info;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_additional_info (
	loan_additional_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sort_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amort_type int NULL,
	loan_purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	maturity_date date NULL,
	neg_amort_to_interest varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_due_date date NULL,
	note_rate decimal(9,4) NULL,
	original_balance_amt decimal(18,2) NULL,
	paid_off_date date NULL,
	paid_to_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pmt_other decimal(18,2) NULL,
	pmt_pi decimal(18,2) NULL,
	pmt_reserve decimal(18,2) NULL,
	prepayment_penalty decimal(18,2) NULL,
	principal_balance decimal(18,2) NULL,
	priority int NULL,
	rate_type int NULL,
	regular_payment decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	delivery_options int NULL,
	email_format int NULL,
	enable_insurance_tracking varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_structure_type int NULL,
	notes varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	place_on_hold varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rolodex_print varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	salutation varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_late_notices varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_receipt varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_statement varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin_type int NULL,
	appraiser_fmv decimal(18,4) NULL,
	country_code varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	flood_zone varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pledged_equity decimal(18,2) NULL,
	primary_prop varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purchase_price decimal(18,2) NULL,
	thomas_map varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zoning varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_number_pac varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	institution_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_loan__B0B11E4143DB0ED3 PRIMARY KEY (loan_additional_info_rk)
);


-- cal_bi_analytics_dev.dbo.dim_loan_custom_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_Sep23 (
	loan_custom_info_rk bigint NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_custom_info definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info (
	loan_custom_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__dim_loan__39549D422D9CF1B6 PRIMARY KEY (loan_custom_info_rk)
);
 CREATE NONCLUSTERED INDEX idx_dim_loan_custom_info_001 ON cal_bi_analytics_dev.dbo.dim_loan_custom_info (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_custom_info_002 ON cal_bi_analytics_dev.dbo.dim_loan_custom_info (  loan_rec_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_custom_info_003 ON cal_bi_analytics_dev.dbo.dim_loan_custom_info (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_dim_loan_custom_info_004 ON cal_bi_analytics_dev.dbo.dim_loan_custom_info (  account_no ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Before_Update_History_Data_Mar18 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Before_Update_History_Data_Mar18;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Before_Update_History_Data_Mar18 (
	loan_custom_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_BkpUp_Sep23 (
	loan_custom_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_loan_custom_info_test definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_test;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_loan_custom_info_test (
	loan_custom_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_opportuity_BkpUp_20250221 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportuity_BkpUp_20250221;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportuity_BkpUp_20250221 (
	purchase_rk bigint IDENTITY(1,1) NOT NULL,
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_opportunity definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportunity;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportunity (
	purchase_rk bigint IDENTITY(1,1) NOT NULL,
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(38,18) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tmo_account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization decimal(38,18) NULL,
	renew_amortization_total_interest_pay decimal(38,18) NULL,
	remaining_amortization decimal(38,18) NULL,
	negative_amortization_formula decimal(38,18) NULL,
	number_of_compounded_periods decimal(38,18) NULL,
	number_of_payments decimal(38,18) NULL,
	loan_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date datetime NULL,
	mortgage_holder_1 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_2 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_3 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pre_paid_holdback_monthly decimal(38,18) NULL,
	holdback_spread decimal(38,18) NULL,
	corporation_deal varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_appraised_value decimal(38,18) NULL,
	lender_fee_payment_method varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_amount_paid decimal(38,18) NULL,
	pricing_option_lender_fee decimal(38,18) NULL,
	lender_fee_dollar_value decimal(38,18) NULL,
	lender_fee_deferment decimal(38,18) NULL,
	custom_lender_fee_deferment_amount decimal(38,18) NULL,
	pos_status varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_possession_date datetime2 NULL,
	listed_price decimal(38,18) NULL,
	listed_on datetime2 NULL,
	sold_firm_date datetime2 NULL,
	sold_price decimal(38,18) NULL,
	pos_closing_date datetime2 NULL,
	total_interest_due decimal(38,18) NULL,
	grand_total decimal(38,18) NULL,
	CONSTRAINT PK__dim_oppo__8704C60BA9F5C5B8 PRIMARY KEY (purchase_rk)
);


-- cal_bi_analytics_dev.dbo.dim_opportunity_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportunity_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportunity_BkpUp_Sep23 (
	purchase_rk bigint IDENTITY(1,1) NOT NULL,
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(38,18) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_opportunity_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportunity_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportunity_Sep23 (
	purchase_rk bigint NULL,
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(38,18) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tmo_account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_opportunity_test definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportunity_test;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportunity_test (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPrivate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	StageName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amount nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Probability nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ExpectedRevenue nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TotalOpportunityQuantity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CloseDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextStep nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LeadSource nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsClosed nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsWon nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ForecastCategory nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ForecastCategoryName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CampaignId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOpportunityLineItem nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pricebook2Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnerId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AgeInDays nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastActivityDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastActivityInDays nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PushCount nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastStageChangeDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastStageChangeInDays nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FiscalQuarter nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FiscalYear nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fiscal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ContactId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastViewedDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastReferencedDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PartnerAccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SyncedQuoteId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ContractId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOpenActivity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOverdueTask nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IqScore nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastAmountChangedHistoryId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastCloseDateChangedHistoryId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPriorityRecord nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpportunityScoreId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other_Properties_Sum_Frequency_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lock_Funded_Deal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Subsequent_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loss_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Street__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_LTV_PID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Zip_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sold_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortized_Over__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Due_in_Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_Check_Completed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funding_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Date_Cutoff__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Instrument_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Officer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fees__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Date_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Liens__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Agent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback_Spread__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Expected_Closing_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pricing_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Variable_Pricing_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Fixed_Pricing_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pricing_Option_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pricing_Option_Commitment_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Finder_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Approval_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Admin_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Premium__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Net_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lot__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Block__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Concession_Township__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraised_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Branch_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Living_Space__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lot_Size__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspected_On__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_on_file__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Price__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Estimated_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraised_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Heating_Cost__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Condo_Fees__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Taxes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Improvements__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Exported_to_TMO__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Product_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Filogix_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Repayment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_State__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Heating_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dwelling_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dwelling_Style__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Garage_Size__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Garage_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Environmental_Hazard__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approval_Received__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Taxation_Year__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Difference_Currency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Frequency_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Frequency_Payment_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finance_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Requested__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Actual_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EFT_File_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value_at_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Origination_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Loan_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Maturity_Date_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Balance_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Interest_Rate_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Original_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Original_Amount_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_Account_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Pulled_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payment_Frequency_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Request_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Difference_Percent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date_in_3_Months__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Term_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Content_for_Broker_Pre_Approval_1_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_1__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Maturity_Date_on_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Value_of_Improvements__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sales_Executive__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Conditions__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_ETF_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reason_Application_Lost_Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Pre_Paid_Holdback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Taxes_Paid_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback_Monthly_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Variable_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BoC_Overnight_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Variable_Rate_Spread__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Percentage_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_In_Months__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Month_of_First_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Term_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Payment_Penalty_In_Months__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_COB__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Wiring_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Search_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Underwriter_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Dollar_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	APR__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Draw_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Minimum_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Debit_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Cutoff_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Expiry_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Advance_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Admin_Renewal_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commitment_Expiry_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approval_by_Credit_Risk_Manager__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Booking_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_to_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Income__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dolphin__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Weighted_Requested_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Stage_Change_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Stage_Notification_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Stage_Notification_Date_Time__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Adjustment_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Payment_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Original_Total_Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Cost_of_Borrowing_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_For_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pull_Credit__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_New__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_Beginning_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_Finish_Date_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment_Prorated_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payments_for_the_Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_AMT_at_Maturity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	COB_Percentage_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Auto_Renewal_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Auto_Renewal_LF__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Documents_check__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Parent_Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Method_of_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_Ledger_Approved_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization_Period__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Payment_Charges__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Authorized_debit_plan_agreement__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Appraisal_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_Date_Range_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Preferred_Contact_Time__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Renewal_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Rate_Premium__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Integration_Success__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Additional_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funded_Stage_Duration_in_Days__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Additional_Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Condition_of_Property__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renovation_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Title_Search_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Executive_Override__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Name_Co_Borrower_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Documents_checked__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_to_Operating__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lead__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Will_It_Fund__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Condo__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HELOC_Total_Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspected_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_First_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Second_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Total_Liens__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Remaining_Equity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Loan_To_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Similarity_and_Distance_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Total_Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Appraisal_Company__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Similarity_Distance_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Date_of_Sale_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Days_on_Market__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_on_Market__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Applicants_Data__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Source__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_GDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_TDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_IAD__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Insured__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Maturity_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Monthly_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Original_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Registration_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Filogix_Channels__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Financing_Waiver_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Include_in_TDS_calculation__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Message_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other_Mortgage_Requested__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Amount_Qualify__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province_State__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Approv_Mort_AND_Approv_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Property_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Requested_Mortgages__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sum_Monthly_Payment_Liabilities__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sum_Other_Incomes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Maturity_Date_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tenure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Expenses__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Balance_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Fee_Approval_to_Parent_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspection_Booking_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Insured_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Insured_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Loan_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Report_Date_del__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Monthly_Payment_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Original_Amount_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payment_Frequency_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Agent_Verification__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Brokerage_Verification__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Term_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Frequency_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Frequency_Payment_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Interest_Rate_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Monthly_Payment_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Residential_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Refi__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_Date_Range_1__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BDM_Note__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Applicant__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Credit_Report_Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Adjustment_Date_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrimaryCreditReportAge__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SecondaryCreditReportAge__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Phone_Number_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Email_Address_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Address_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Created_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_Residence__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_Residence_in_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Require_Additional_Funds__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_LTV_WF__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Sum_of_Assets__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Amount_of_Liabilities__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lowest_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Administration_Fee_del__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Mortgage_Statement_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_of_Mortgage_Fee_old__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funded_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsStageChanged__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Issue_Commitment_Conditions_Duration__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funded_Duration__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Issue_Commitment_Conditions_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage_for_APR__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Credit_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_First_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Second_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Total_Liens__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Remaining_Equity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Loan_to_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Apply_To_Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Temporary_TMO_ACCOUNT_NUMBER__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_PID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_County__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Custom_Requested_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Premium_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lenders_Portion__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Gross_Yield__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finders_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage_WF_Field__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Purchase_Price__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Split__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Month_Closed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Successful_Purview_Report__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Date_Issued__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Estimated_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Full_Legal_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Land_Registry_Office__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Last_Sale__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Market_Shift__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Owner_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Parcel_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Registered_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Registered_Owner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Registered_Titles__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Title_Number_PIN__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Title_Registration_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rewritten__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PurviewResponseCode__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Age_of_Appraisal_Report__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Email_4_A__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Split__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_to_Pre_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_2_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Email_4_B__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP_Split__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_3_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_4_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Lender_Percentage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Need_More_Information__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Order_Appraisal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Refi_2_11__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PIN_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Syndicated_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Lender_Picklist__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Lender_Percentage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Direct_Lender_Split__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amount_Funded__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Dollar_Split__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Registered_Platform__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Deal_Created__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Renewal_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Structure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Registration__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Record_Type_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MIC_Principal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Fixed_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FLMP_Principal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	B_20_Compliant__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walkthrough_Required__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspected__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Finder_Fee_Response__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Finder_Fee_Response2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BDM_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walk_Through_Contact_Info__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Mortgage_Report__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP_Mortgage_Report__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Onespan_Convention__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Onespan_Signer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Access_Approved_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BPA_Notes_for_Broker__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BPA_Selected_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Parent_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Onespan_Reviewer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Administration_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Statements_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_of_Mortgage_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Newton_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NewtonSenderSystemId__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NewtonDestinationSystemId__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Interest_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Lender_Fee_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	COB__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_at_Maturity_from_Original__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MLS_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product_Name_Velocity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Address_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Usage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Waste_Disposal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Zoning__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MLS_Listing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_s_Fee_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BPA_Exception__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_between_New_App_BPA__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_between_New_App_Closing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_between_New_App_UR__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_between_UR_BPA__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Exception_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_s_Fee_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commission__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accountant_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Operating_to_Reserve__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Week_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Revised_Monthly_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage_Currency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Emergency_Rush_Walk_Through__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walk_Through_Charge_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback_for_Instructions__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renew_Amortization_Total_Interest_Pay__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_since_last_submit__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Title_Search_Completed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Offset_Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	System_Mortgage_Fulfillment_Specialist__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Conga_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspector__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Day__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_Of_Finder_s_Fee_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Amount_From_TMO__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Converted_To_Refinance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Retainer_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Adjustment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_Ledger_Approved__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Future_Available_Credit__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Updated_Mortgage_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CL_Admin_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Realtor_Opinion_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Credit_Pull_Consent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Latest_Credit_Report_FICO_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Number_of_Bankruptcy_Records__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Latest_Credit_Report_Pulled_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Payment_Penalty_Dollar_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Approv_Mort_AND_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Stage_Duration_in_days__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Broker_Deal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Broker_Finder_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Optional_Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cost_of_Borrowing_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Single_Monthly_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Broker_Finder_Fee_Dollar__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BoC_Overnight_Rate_Variable__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Document_Fulfillment_Completed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sum_of_Rental_Income__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_Before_Maturity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_New_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Please_Specify_Other_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Request_Mort_AND_Request_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_OneSpan_Reviewer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_OneSpan_Signer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Onespan_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_to_Reserve__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_2_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_3_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_4_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Transaction_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Appraisal_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Custom_Maturity_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Consent_Form__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Roof_Over_15_Years__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Electrical__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Water_Damage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Observations__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Compounding_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Periodic_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Compounded_Periods__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Heloc_Interest_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_of_Sale_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Total_Monthly_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Payment_A_R_Prorated_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Administration_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Administration_Renewal_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Month_of_First_Renewal_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_from_Origination__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approval_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Underwriting__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Person_Account_Contact_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lending_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signback_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Instructed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RGPEnd__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accelerated_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	First_Loan_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Authorized_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Policy_Certificate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgagor_Buydown__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Doc_Fulfillment_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Collateral_Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ownership__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accrued_Interest__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Paid_to_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_in_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Remaining_Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Units__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal_Action__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pool_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer_Policy__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Charge__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Arrears_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Installments_in_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Arrears_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reason_for_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_Contact_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MBS_Pool_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Percent_Owned__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Posted_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Txn_Definition__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cash_back__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Collection_Cost__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Late_Payment_Interest__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Penalty_Interest__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Servicing_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Servicing_Fee_HST__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Period_Start_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Actual_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Buydown_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other_Fees__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Net_to_Company__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FundingIADAmount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lien_Priority__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Filed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Received__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Funds_Received__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supplementary_Claim_Filed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supp_Claim_Received__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Supp_Claim_Funds_Received__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Full_Offer_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LTV_w_Priority_Encumbrance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Beacon__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Returned_Items_12_Months__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_income__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal_Action_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Encumbrance_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commitment_Issue_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Commitment_Return_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mat_Date_15__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mat_Date_20__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mat_Date_25__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funding_Partner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Centum_Commission__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Address_Blacklisted__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lendesk_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AI_Prediction_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Combined_LTV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Doc_Stage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Premium__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PI_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Buydown_Adjustment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Base_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Payment_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Benchmark_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Portion_of_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Opening_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal_Balance__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funding_Partner_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_payment_contract__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Allow_Renewal_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Non_Subject_Property_Rental_Income__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Monthly_Payments_of_Liabilities__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contract_GDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Contract_TDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_payment_qualifying__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Qualifying_GDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Qualifying_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Qualifying_TDS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PBC_Email_Distro__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Type_Pricings__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PBC_Approved_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Request_ILR_Update__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_Fee_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_Fee_Percent_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Next_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Request_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Primary__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Primary__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Primary__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Co_App__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Co_App__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Co_App__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value_at_Renewal_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Primary_Writeb__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Primary_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Primary_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Renewal_Premium_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Chosen_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Negative_Amortization_Formula__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PST_on_Insurance_Premium__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Referral_Fee_Currency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Referral_Fee_Percent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Fee_del__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Approv_Mort_AND_Annual_Rate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Approv_Mort_AND_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Origination_Fee_del__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Funding_Amount_del__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_Between_Closing_and_Funded__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AML_Exception_Comment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AML_Exception__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WC_Action_Required__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Can_you_tell_us_who_the_lender_is__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Request_a_discharge__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	What_is_the_term_in_months_you_require__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Form_Expiration_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Statement_Requested__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Start_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Start_Date_Age_In_Days__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Possession_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Pending_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Working_Agent_Details__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Licence_Class__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Processing_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Processing_FeeDV__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Net_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_QB_Error_Message__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_QB_Sync_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_QuickBooks_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Synced__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_Ledger_QB_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Test__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	X1_Day_Before_Maturity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Pending__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	X50_Lender_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Corporation_Deal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Manual_AML_Run_Flag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Prediction_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Likely_to_Fund__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EFT_File_Date_Phase_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sold_Price__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sold_Firm_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Closing_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sold_Conditional_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Offers__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Refi_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funded_Date_Credit_Report_Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funded_Date_Today__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ACRA_FD_T__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal_Fee__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Payment_Method__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Amount_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Guarantor_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Guarantor_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_PAMFO_AND_Credit_Score__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_End__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Category__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outcome_of_Call__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Reschedule_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Bounce_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraised_Value_PoS__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Payment_Deferred__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Remaining_Equity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Converted_to_Mortgage_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principle_Balance_at_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Document_Portal_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Fee_Deferred__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walkthrough_Fee_Deferred__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Deferment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Deferred_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_Numeric_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Stage_Closing_Solicitor_Email_Sent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Admin_Renewal_Fee_Paid__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Custom_Lender_Fee_Deferment_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Deferment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Is_Application_Closed_By_Lawyer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lawyer_Document_Portal_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lawyer_Request_Additional_Docs_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lawyer_Requested_Documents__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Appraiser_Exception__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Reason_for_Appraiser_Exception__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_Renewal_File_Creation_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Scheduled_Closing_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Possession_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment_Difference__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Corporate_Entity_on_Title__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Status_Changed_Date_Time__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Securitization_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lawyer_Upload_Docs_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lawyer_Uploaded_Documents__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Working_Agent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Home_Fire_Insurance_Companies__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Possession_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Expiry_Date__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Policy_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Contact__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Law_Firm__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_PM_Company__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Appraisal_Company_1__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Appraisal_1_Date_Ordered__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Appraisal_Company_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Appraisal_2_Date_Ordered__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Securitization_Pool__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Insurance_Lapsed_As_Of__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Law_Firm_File__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Lawyer_Document_Portal_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Lawyer_Request_Additional_Docs_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Lawyer_Requested_Documents__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Lawyer_Upload_Docs_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_In_PoS_Possession_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurance_Broker__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoS_Status_Duration_in_Days__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payoff_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Applicant_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Shortfall_Potential__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.dim_opportunity_test2101 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_opportunity_test2101;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_opportunity_test2101 (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_from_Origination__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage__c decimal(18,2) NULL,
	CreatedDate datetime2(0) NULL,
	LastModifiedDate datetime2(0) NULL,
	Created_Date__c datetime2(0) NULL,
	CloseDate datetime2(0) NULL,
	Funding_Date__c datetime2(0) NULL,
	Funded_Date__c datetime2(0) NULL,
	Interest_Adjustment_Date__c datetime2(0) NULL,
	First_Payment_Date__c datetime2(0) NULL,
	Maturity_Date__c datetime2(0) NULL,
	New_Maturity_Date_on_Renewal__c datetime2(0) NULL,
	Repayment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_In_Months__c decimal(3,0) NULL,
	Amortization_Period__c decimal(3,0) NULL,
	Annual_Percentage_Rate__c decimal(6,4) NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate__c decimal(5,2) NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Credit_Score__c decimal(18,0) NULL,
	Credit_Report_Date_del__c datetime2(0) NULL,
	Approved_LTV__c decimal(4,2) NULL,
	Appraised_Value__c decimal(18,2) NULL,
	Appraisal_Date__c datetime2(0) NULL,
	Dwelling_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tenure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Zip_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Updated_Mortgage_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Possession_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BoC_Overnight_Rate__c decimal(6,3) NULL,
	StageName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value_at_Renewal__c decimal(18,2) NULL,
	Renewal_Appraisal_Date__c datetime2(0) NULL,
	Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_New__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization__c decimal(2,0) NULL,
	Renew_Amortization_Total_Interest_Pay__c decimal(18,2) NULL,
	Remaining_Amortization__c decimal(6,2) NULL,
	Negative_Amortization_Formula__c decimal(18,2) NULL,
	Number_of_Compounded_Periods__c decimal(18,2) NULL,
	Number_of_Payments__c decimal(18,2) NULL,
	Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date__c datetime2(0) NULL,
	Existing_Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback_Monthly_Calc__c decimal(18,2) NULL,
	Holdback_Spread__c decimal(4,0) NULL
);


-- cal_bi_analytics_dev.dbo.dim_region definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dim_region;

CREATE TABLE cal_bi_analytics_dev.dbo.dim_region (
	region_rk int IDENTITY(1,1) NOT NULL,
	loan_type varchar(15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	region_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '9999-12-31 23:59:59' NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	CONSTRAINT uq_dim_region UNIQUE (loan_type,city_name)
);


-- cal_bi_analytics_dev.dbo.dl_azuredb_data_load definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dl_azuredb_data_load;

CREATE TABLE cal_bi_analytics_dev.dbo.dl_azuredb_data_load (
	id int IDENTITY(1,1) NOT NULL,
	source_container_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_directory_name varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_dl_file_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_column_list varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	staging_schema_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	staging_table_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	staging_pre_load_script varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	staging_post_load_script varchar(2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	staging_table_column_list varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	target_container_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	target_directory_name varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_processed int DEFAULT 0 NULL,
	is_active smallint DEFAULT 1 NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_successfull_run_date datetime NULL,
	last_failure_run_date datetime NULL,
	CONSTRAINT PK__dl_azure__3213E83FEEE3226B PRIMARY KEY (id)
);


-- cal_bi_analytics_dev.dbo.dpv_smart_view_20250124 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.dpv_smart_view_20250124;

CREATE TABLE cal_bi_analytics_dev.dbo.dpv_smart_view_20250124 (
	DayRk int NULL,
	LoanRk bigint NULL,
	LoanRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LosLoanRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ACH int NULL,
	[Hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ByLastName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MI varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestPaidTo date NULL,
	PaymentDueDate date NULL,
	PaymentFrequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RegularPayment decimal(18,2) NULL,
	ApplyToPNL decimal(18,2) NULL,
	ApplyToReserve decimal(18,2) NULL,
	ApplyToImpound decimal(18,2) NULL,
	ApplyToOther decimal(18,2) NULL,
	MaturityDate date NULL,
	TermLeft int NULL,
	DaysLate int NULL,
	PaidOffDate date NULL,
	NoteRate decimal(9,4) NULL,
	SoldRate decimal(9,4) NULL,
	LoanPriority int NULL,
	LoanPriorityDescription varchar(11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalBalance decimal(18,2) NULL,
	TrustBalance decimal(18,2) NULL,
	ImpoundBalance decimal(18,2) NULL,
	ReserveBalance decimal(18,2) NULL,
	UnpaidLateCharges decimal(18,2) NULL,
	UnpaidCharges decimal(18,2) NULL,
	UnpaidInterest decimal(18,2) NULL,
	Street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	State varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ZipCode varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HomePhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WorkPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CellPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FaxPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TIN varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanType int NULL,
	RateType int NULL,
	MailAddress varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyDescription varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyStreet varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCity varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyState varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyZip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCounty varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyType varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyOccupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyLTV decimal(9,4) NULL,
	PropertyAPN varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AggregateAppraisedValue decimal(18,2) NULL,
	CalculatedLTV decimal(9,4) NULL,
	ClosingDate date NULL,
	FirstPaymentDate date NULL,
	PurchaseDate date NULL,
	BookingDate date NULL,
	NextRevision date NULL,
	OriginalBalance decimal(18,2) NULL,
	UnearnedDiscount decimal(18,2) NULL,
	LoanCode varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AppraisalDate date NULL,
	AggregateSeniorLiens decimal(18,2) NULL,
	LoanOfficer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DOB date NULL,
	LoanTS datetime NULL,
	AccountStatus varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RegtionRk int NULL,
	RegionName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanCustomInfoRk bigint NULL,
	AdhocA varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountName varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccruedInterest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ActualLTV varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrationFeerenewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrationRenewalFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrativeFees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AmortizationTerminYears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplicationPurpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ARMFLOOR varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ArrearsBalance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AuthorizedAmount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocB varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceofAutoRenewalLF varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceofRenewalLenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BankOfCanadaOvernightRate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocC varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CalculatedGDS varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CalculatedTDS varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cashback varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ChosenRateType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CollectionCost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DailyProRatedLenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DailyProRatedPrepaymentCosts varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysfromLetter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysinArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DefaultLegalProceedingsFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeAdministrationFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeCoding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeMortgageStatementFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeofMortgageFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargingPrinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EffectiveDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FinalDischarge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstLoanNumber varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstPaymentDateCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FundingPartner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InstallmentsinArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InsurancePolicyCertificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InsurerPolicy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestAdjustmentDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastContactDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LatePaymentInterest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LawFirm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LegalAction varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFeeinDollarsOriginal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFeeinPercentOriginal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanChargestoMCC varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanPurpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanStatus varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanTypeCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimFiled varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimFundsReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MaintenanceofProperty varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoolNumber varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MortgageAgent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MortgageBrokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextPayment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextStep varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NSFPymtDueDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NumberofUnits varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpeningBalance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAmortizatioMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAppraisalAmount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAppraisalDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBeaconDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalLTV decimal(15,8) NULL,
	OriginalRate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginaRateType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalTermMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnershipType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentFrequencyCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentTobeReturnedOnceCleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PenaltyinMonths varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PenaltyInterest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PerDiemOffset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PercentOwned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PeriodStartDate varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonAccountCurrentIncomeType varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MBSPoolNumber varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PostageandDeliveryCosts varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PostedDate varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrepaidCreditifapplicable varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrepaymentCosts varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrePaymentTermType varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalArrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalBalanceCustom varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProductName varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProRatedLenderFee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentPlanDueDay int NULL,
	PaymentWithNSF varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReasonforArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReductiontoMortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RemainingAmortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RenewedDateUserInput varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RenewedDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REO varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RepaymentType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SuppClaimFundsReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SuppClaimReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SupplementaryClaimFiled varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TermInMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TxnDefinition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WireFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyTypeCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ValidFlag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CustomInfoValidFlag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ValidFromDate date NULL,
	ValidToDate date NULL,
	CreatedOn datetime NULL,
	CreatedBy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CheckSum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BatchId varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanBalance decimal(38,2) NOT NULL,
	TotalLoanBalance decimal(38,2) NULL,
	TrueLTV decimal(38,6) NULL,
	syndicated_percent decimal(38,4) NULL
);


-- cal_bi_analytics_dev.dbo.entity_detail definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.entity_detail;

CREATE TABLE cal_bi_analytics_dev.dbo.entity_detail (
	entity_id bigint IDENTITY(1,1) NOT NULL,
	src_obj_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_obj_uid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_obj_col_name varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	stg_obj_name varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	obj_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_code varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active smallint DEFAULT 1 NULL,
	additional_info varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	last_data_loaded_sucessfully_on datetime NULL,
	last_data_loaded_failed_on datetime NULL,
	CONSTRAINT PK__entity_d__AF9F95A7596517D9 PRIMARY KEY (entity_id),
	CONSTRAINT UQ__entity_d__150A20915A54D2C7 UNIQUE (src_obj_uid)
);


-- cal_bi_analytics_dev.dbo.entity_detail_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.entity_detail_full;

CREATE TABLE cal_bi_analytics_dev.dbo.entity_detail_full (
	entity_id bigint IDENTITY(1,1) NOT NULL,
	src_obj_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_obj_uid varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_obj_col_name varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	stg_obj_name varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	obj_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	src_code varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active smallint DEFAULT 1 NULL,
	additional_info varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Admin' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	last_data_loaded_sucessfully_on datetime NULL,
	last_data_loaded_failed_on datetime NULL,
	CONSTRAINT PK__entity_d__AF9F95A7F40F5470 PRIMARY KEY (entity_id),
	CONSTRAINT UQ__entity_d__150A2091BFDEA0F9 UNIQUE (src_obj_uid)
);


-- cal_bi_analytics_dev.dbo.fct_lender_portfolio definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio (
	day_rk int NULL,
	loan_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime DEFAULT getdate() NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);
 CREATE NONCLUSTERED INDEX fct_lender_portfolio_001 ON cal_bi_analytics_dev.dbo.fct_lender_portfolio (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX fct_lender_portfolio_002 ON cal_bi_analytics_dev.dbo.fct_lender_portfolio (  loan_rk ASC  , lender_portfolio_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX fct_lender_portfolio_003 ON cal_bi_analytics_dev.dbo.fct_lender_portfolio (  day_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fct_lender_portfolio_BkpUpSep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_BkpUpSep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_BkpUpSep23 (
	day_rk int NULL,
	loan_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_lender_portfolio_bkpup_Apr_10 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_bkpup_Apr_10;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_bkpup_Apr_10 (
	day_rk int NULL,
	loan_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.fct_lender_portfolio_sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_lender_portfolio_sep23 (
	day_rk int NULL,
	loan_rk bigint NULL,
	lender_portfolio_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan (
	day_rk int NULL,
	loan_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime DEFAULT getdate() NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);
 CREATE NONCLUSTERED INDEX idx_fct_loan_001 ON cal_bi_analytics_dev.dbo.fct_loan (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_loan_002 ON cal_bi_analytics_dev.dbo.fct_loan (  loan_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_loan_003 ON cal_bi_analytics_dev.dbo.fct_loan (  day_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fct_loan_20250122 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_20250122;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_20250122 (
	day_rk int NULL,
	loan_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_BkpUp_Sep23 (
	day_rk int NULL,
	loan_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan_custom_info definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_custom_info;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_custom_info (
	day_rk int NULL,
	loan_rk bigint NULL,
	loan_custom_info_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime DEFAULT getdate() NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);
 CREATE NONCLUSTERED INDEX idx_fct_loan_003 ON cal_bi_analytics_dev.dbo.fct_loan_custom_info (  day_rk ASC  , loan_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_loan_custom_info_001 ON cal_bi_analytics_dev.dbo.fct_loan_custom_info (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_loan_custom_info_002 ON cal_bi_analytics_dev.dbo.fct_loan_custom_info (  loan_custom_info_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fct_loan_history definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_history;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_history (
	loan_history_rk bigint IDENTITY(1,1) NOT NULL,
	day_rk int NULL,
	ach_batch_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trace_number varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trans_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_transmission_datetime datetime NULL,
	due_date date NULL,
	date_rec date NULL,
	group_rec_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_charge decimal(18,2) NULL,
	loan_account varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance decimal(18,2) NULL,
	loan_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_source_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_to date NULL,
	pay_method int NULL,
	rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reference varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_app varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_typ varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_date datetime NULL,
	to_broker_fee decimal(18,2) NULL,
	to_charges_int decimal(18,2) NULL,
	to_charges_prin decimal(18,2) NULL,
	to_current_bill decimal(18,2) NULL,
	to_default_interest decimal(18,2) NULL,
	to_impound decimal(18,2) NULL,
	to_interest decimal(18,2) NULL,
	to_late_charge decimal(18,2) NULL,
	to_lender_fee decimal(18,2) NULL,
	to_other_payments decimal(18,2) NULL,
	to_other_tax_free decimal(18,2) NULL,
	to_other_taxable decimal(18,2) NULL,
	to_past_due decimal(18,2) NULL,
	to_prepay decimal(18,2) NULL,
	to_principal decimal(18,2) NULL,
	to_reserve decimal(18,2) NULL,
	to_unearned_discount decimal(18,2) NULL,
	to_unpaid_interest decimal(18,2) NULL,
	total_amount decimal(18,2) NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL,
	CONSTRAINT PK__fct_loan__9B1BD78AAA8521BD PRIMARY KEY (loan_history_rk)
);
 CREATE NONCLUSTERED INDEX idx_fct_loan_history_001 ON cal_bi_analytics_dev.dbo.fct_loan_history (  day_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_loan_history_002 ON cal_bi_analytics_dev.dbo.fct_loan_history (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Mar_26 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Mar_26;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Mar_26 (
	loan_history_rk bigint IDENTITY(1,1) NOT NULL,
	day_rk int NULL,
	ach_batch_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trace_number varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trans_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_transmission_datetime datetime NULL,
	due_date date NULL,
	date_rec date NULL,
	group_rec_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_charge decimal(18,2) NULL,
	loan_account varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance decimal(18,2) NULL,
	loan_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_source_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_to date NULL,
	pay_method int NULL,
	rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reference varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_app varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_typ varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_date datetime NULL,
	to_broker_fee decimal(18,2) NULL,
	to_charges_int decimal(18,2) NULL,
	to_charges_prin decimal(18,2) NULL,
	to_current_bill decimal(18,2) NULL,
	to_default_interest decimal(18,2) NULL,
	to_impound decimal(18,2) NULL,
	to_interest decimal(18,2) NULL,
	to_late_charge decimal(18,2) NULL,
	to_lender_fee decimal(18,2) NULL,
	to_other_payments decimal(18,2) NULL,
	to_other_tax_free decimal(18,2) NULL,
	to_other_taxable decimal(18,2) NULL,
	to_past_due decimal(18,2) NULL,
	to_prepay decimal(18,2) NULL,
	to_principal decimal(18,2) NULL,
	to_reserve decimal(18,2) NULL,
	to_unearned_discount decimal(18,2) NULL,
	to_unpaid_interest decimal(18,2) NULL,
	total_amount decimal(18,2) NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_history_BkpUp_Sep23 (
	loan_history_rk bigint IDENTITY(1,1) NOT NULL,
	day_rk int NULL,
	ach_batch_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trace_number varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trans_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_transmission_datetime datetime NULL,
	due_date date NULL,
	date_rec date NULL,
	group_rec_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_charge decimal(18,2) NULL,
	loan_account varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance decimal(18,2) NULL,
	loan_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_source_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_to date NULL,
	pay_method int NULL,
	rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reference varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_app varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_typ varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_date datetime NULL,
	to_broker_fee decimal(18,2) NULL,
	to_charges_int decimal(18,2) NULL,
	to_charges_prin decimal(18,2) NULL,
	to_current_bill decimal(18,2) NULL,
	to_default_interest decimal(18,2) NULL,
	to_impound decimal(18,2) NULL,
	to_interest decimal(18,2) NULL,
	to_late_charge decimal(18,2) NULL,
	to_lender_fee decimal(18,2) NULL,
	to_other_payments decimal(18,2) NULL,
	to_other_tax_free decimal(18,2) NULL,
	to_other_taxable decimal(18,2) NULL,
	to_past_due decimal(18,2) NULL,
	to_prepay decimal(18,2) NULL,
	to_principal decimal(18,2) NULL,
	to_reserve decimal(18,2) NULL,
	to_unearned_discount decimal(18,2) NULL,
	to_unpaid_interest decimal(18,2) NULL,
	total_amount decimal(18,2) NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan_history_Sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_history_Sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_history_Sep23 (
	loan_history_rk bigint NULL,
	day_rk int NULL,
	ach_batch_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trace_number varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trans_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_transmission_datetime datetime NULL,
	due_date date NULL,
	date_rec date NULL,
	group_rec_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_charge decimal(18,2) NULL,
	loan_account varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance decimal(18,2) NULL,
	loan_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_source_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_to date NULL,
	pay_method int NULL,
	rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reference varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_app varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_typ varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_date datetime NULL,
	to_broker_fee decimal(18,2) NULL,
	to_charges_int decimal(18,2) NULL,
	to_charges_prin decimal(18,2) NULL,
	to_current_bill decimal(18,2) NULL,
	to_default_interest decimal(18,2) NULL,
	to_impound decimal(18,2) NULL,
	to_interest decimal(18,2) NULL,
	to_late_charge decimal(18,2) NULL,
	to_lender_fee decimal(18,2) NULL,
	to_other_payments decimal(18,2) NULL,
	to_other_tax_free decimal(18,2) NULL,
	to_other_taxable decimal(18,2) NULL,
	to_past_due decimal(18,2) NULL,
	to_prepay decimal(18,2) NULL,
	to_principal decimal(18,2) NULL,
	to_reserve decimal(18,2) NULL,
	to_unearned_discount decimal(18,2) NULL,
	to_unpaid_interest decimal(18,2) NULL,
	total_amount decimal(18,2) NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_loan_sep23 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_loan_sep23;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_loan_sep23 (
	day_rk int NULL,
	loan_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reporting_day_rk int NULL
);


-- cal_bi_analytics_dev.dbo.fct_opportunity definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_opportunity;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_opportunity (
	day_rk int NULL,
	purchase_rk bigint NULL,
	loan_rk bigint NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime DEFAULT getdate() NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);
 CREATE NONCLUSTERED INDEX idx_fct_opportunity_001 ON cal_bi_analytics_dev.dbo.fct_opportunity (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_opportunity_002 ON cal_bi_analytics_dev.dbo.fct_opportunity (  purchase_rk ASC  , loan_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_opportunity_003 ON cal_bi_analytics_dev.dbo.fct_opportunity (  day_rk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fct_smart_view definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fct_smart_view;

CREATE TABLE cal_bi_analytics_dev.dbo.fct_smart_view (
	Id bigint IDENTITY(1,1) NOT NULL,
	DayRk int NULL,
	LoanRk bigint NULL,
	LoanRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LosLoanRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerRecId varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ACH int NULL,
	[Hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ByLastName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MI varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestPaidTo date NULL,
	PaymentDueDate date NULL,
	PaymentFrequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RegularPayment decimal(18,2) NULL,
	ApplyToPNL decimal(18,2) NULL,
	ApplyToReserve decimal(18,2) NULL,
	ApplyToImpound decimal(18,2) NULL,
	ApplyToOther decimal(18,2) NULL,
	MaturityDate date NULL,
	TermLeft int NULL,
	DaysLate int NULL,
	PaidOffDate date NULL,
	NoteRate decimal(9,4) NULL,
	SoldRate decimal(9,4) NULL,
	LoanPriority int NULL,
	LoanPriorityDescription varchar(11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalBalance decimal(18,2) NULL,
	TrustBalance decimal(18,2) NULL,
	ImpoundBalance decimal(18,2) NULL,
	ReserveBalance decimal(18,2) NULL,
	UnpaidLateCharges decimal(18,2) NULL,
	UnpaidCharges decimal(18,2) NULL,
	UnpaidInterest decimal(18,2) NULL,
	Street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	City varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	State varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ZipCode varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HomePhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WorkPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CellPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FaxPhone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TIN varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanType int NULL,
	RateType int NULL,
	MailAddress varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyDescription varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyStreet varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCity varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyState varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyZip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCounty varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyType varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyOccupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyLTV decimal(9,4) NULL,
	PropertyAPN varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AggregateAppraisedValue decimal(18,2) NULL,
	CalculatedLTV decimal(9,4) NULL,
	ClosingDate date NULL,
	FirstPaymentDate date NULL,
	PurchaseDate date NULL,
	BookingDate date NULL,
	NextRevision date NULL,
	OriginalBalance decimal(18,2) NULL,
	UnearnedDiscount decimal(18,2) NULL,
	LoanCode varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AppraisalDate date NULL,
	AggregateSeniorLiens decimal(18,2) NULL,
	LoanOfficer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DOB date NULL,
	LoanTS datetime NULL,
	AccountStatus varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RegtionRk int NULL,
	RegionName varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanCustomInfoRk bigint NULL,
	AdhocA varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccountName varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AccruedInterest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ActualLTV varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrationFeerenewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrationRenewalFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdministrativeFees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AmortizationTerminYears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplicationPurpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ARMFLOOR varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ArrearsBalance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AuthorizedAmount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocB varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceofAutoRenewalLF varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BalanceofRenewalLenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BankOfCanadaOvernightRate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BeaconScore3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocC varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CalculatedGDS varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CalculatedTDS varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cashback varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ChosenRateType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CoBorrower3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CollectionCost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DailyProRatedLenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DailyProRatedPrepaymentCosts varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysfromLetter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysinArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DefaultLegalProceedingsFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeAdministrationFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeCoding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeMortgageStatementFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargeofMortgageFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DischargingPrinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EffectiveDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FinalDischarge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstLoanNumber varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstPaymentDateCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FundingPartner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Income3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IncomeType3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InstallmentsinArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InsurancePolicyCertificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InsurerPolicy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestAdjustmentDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastContactDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LatePaymentInterest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LawFirm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LegalAction varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFeeinDollarsOriginal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LenderFeeinPercentOriginal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanChargestoMCC varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanPurpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanStatus varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanTypeCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimFiled varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimFundsReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MainClaimReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MaintenanceofProperty varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PoolNumber varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MortgageAgent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MortgageBrokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextPayment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextStep varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NSFPymtDueDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NumberofUnits varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OpeningBalance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAmortizatioMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAppraisalAmount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAppraisalDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBeaconDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalLTV decimal(15,8) NULL,
	OriginalRate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginaRateType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalTermMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnershipType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentFrequencyCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentTobeReturnedOnceCleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PenaltyinMonths varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PenaltyInterest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PerDiemOffset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PercentOwned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PeriodStartDate varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PersonAccountCurrentIncomeType varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MBSPoolNumber varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PostageandDeliveryCosts varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PostedDate varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrepaidCreditifapplicable varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrepaymentCosts varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrePaymentTermType varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalArrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalBalanceCustom varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProductName varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ProRatedLenderFee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentPlanDueDay int NULL,
	PaymentWithNSF varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReasonforArrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReductiontoMortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RemainingAmortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RenewedDateUserInput varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RenewedDate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REO varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RepaymentType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SuppClaimFundsReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SuppClaimReceived varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SupplementaryClaimFiled varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TermInMonths varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TxnDefinition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AdhocType varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WireFee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyTypeCustom varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CustomInfoValidFlag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ValidFromDate date NULL,
	ValidToDate date NULL,
	CheckSum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanBalance decimal(38,2) NOT NULL,
	TotalLoanBalance decimal(38,2) NULL,
	TrueLTV decimal(38,6) NULL,
	syndicated_percent decimal(38,4) NULL,
	ValidFlag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	CreatedOn datetime DEFAULT getdate() NULL,
	CreatedBy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UpdatedOn datetime DEFAULT getdate() NULL,
	UpdatedBy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BatchId varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__fct_smar__3214EC07BE8ED928 PRIMARY KEY (Id)
);
 CREATE NONCLUSTERED INDEX idx_fct_smart_view_001 ON cal_bi_analytics_dev.dbo.fct_smart_view (  DayRk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_smart_view_002 ON cal_bi_analytics_dev.dbo.fct_smart_view (  LoanRk ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_fct_smart_view_003 ON cal_bi_analytics_dev.dbo.fct_smart_view (  Account ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.fund_adjustment_detail definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.fund_adjustment_detail;

CREATE TABLE cal_bi_analytics_dev.dbo.fund_adjustment_detail (
	adjustment_id int IDENTITY(1,1) NOT NULL,
	adjustment_date date NULL,
	batch_id varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adjustment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_percentage varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_portfolio_Rk bigint NULL,
	portfolio_account_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance decimal(20,2) NULL,
	adjustment_amt decimal(20,2) NULL,
	is_processed smallint DEFAULT 0 NULL,
	process_status varchar(2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	process_status_desc varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime DEFAULT getdate() NULL,
	adjustment_posted_on datetime NULL,
	requested_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__fund_adj__3232484913854AE1 PRIMARY KEY (adjustment_id)
);
 CREATE NONCLUSTERED INDEX idx_001_fund_adjustment_detail ON cal_bi_analytics_dev.dbo.fund_adjustment_detail (  is_processed ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_002_fund_adjustment_detail ON cal_bi_analytics_dev.dbo.fund_adjustment_detail (  batch_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.get_loan_by_ts definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.get_loan_by_ts;

CREATE TABLE cal_bi_analytics_dev.dbo.get_loan_by_ts (
	id bigint IDENTITY(1,1) NOT NULL,
	customer_rk bigint NULL,
	loan_rk bigint NULL,
	region_rk bigint NULL,
	loan_custom_info_rk bigint NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dob date NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(18,2) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_percent varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_in_dollars varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_modified varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_from_date date NULL,
	valid_to_date date NULL,
	created_on datetime NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_date date NULL,
	CONSTRAINT PK_get_loan_by_ts PRIMARY KEY (id)
);
 CREATE NONCLUSTERED INDEX IX_get_loan_by_ts_file_date ON cal_bi_analytics_dev.dbo.get_loan_by_ts (  file_date ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.lender_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.lender_full;

CREATE TABLE cal_bi_analytics_dev.dbo.lender_full (
	lender_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_timestamp datetime NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_date date NULL,
	CONSTRAINT PK_lender_full PRIMARY KEY (lender_rk)
);


-- cal_bi_analytics_dev.dbo.lender_portfolio_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.lender_portfolio_full;

CREATE TABLE cal_bi_analytics_dev.dbo.lender_portfolio_full (
	lender_portfolio_rk bigint IDENTITY(1,1) NOT NULL,
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	day_rk int NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adusted_days_late int NULL,
	reporting_day_rk int NULL,
	file_date date NULL,
	CONSTRAINT PK_lender_portfolio_full PRIMARY KEY (lender_portfolio_rk)
);


-- cal_bi_analytics_dev.dbo.load_loan_blob_staging definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.load_loan_blob_staging;

CREATE TABLE cal_bi_analytics_dev.dbo.load_loan_blob_staging (
	id bigint IDENTITY(1,1) NOT NULL,
	api_request nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	api_response nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	is_processed bit DEFAULT 0 NULL,
	is_error bit DEFAULT 0 NULL,
	as_at_date_rk date NULL,
	key_value nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime2 DEFAULT sysdatetime() NULL,
	updated_by nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime2 NULL,
	CONSTRAINT PK__load_loa__3213E83F300656C6 PRIMARY KEY (id)
);


-- cal_bi_analytics_dev.dbo.loan_additional_info_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.loan_additional_info_full;

CREATE TABLE cal_bi_analytics_dev.dbo.loan_additional_info_full (
	loan_additional_info_rk bigint IDENTITY(1,1) NOT NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sort_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amort_type int NULL,
	loan_purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	maturity_date date NULL,
	neg_amort_to_interest varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_due_date date NULL,
	note_rate decimal(9,4) NULL,
	original_balance_amt decimal(18,2) NULL,
	paid_off_date date NULL,
	paid_to_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pmt_other decimal(18,2) NULL,
	pmt_pi decimal(18,2) NULL,
	pmt_reserve decimal(18,2) NULL,
	prepayment_penalty decimal(18,2) NULL,
	principal_balance decimal(18,2) NULL,
	priority int NULL,
	rate_type int NULL,
	regular_payment decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	delivery_options int NULL,
	email_format int NULL,
	enable_insurance_tracking varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_structure_type int NULL,
	notes varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	place_on_hold varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rolodex_print varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	salutation varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_late_notices varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_receipt varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_statement varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin_type int NULL,
	appraiser_fmv decimal(18,4) NULL,
	country_code varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	flood_zone varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pledged_equity decimal(18,2) NULL,
	primary_prop varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purchase_price decimal(18,2) NULL,
	thomas_map varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zoning varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_date date NULL,
	account_number_pac varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	institution_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__loan_add__B0B11E417D75066D PRIMARY KEY (loan_additional_info_rk)
);
 CREATE NONCLUSTERED INDEX idx_loan_additional_info_full_001 ON cal_bi_analytics_dev.dbo.loan_additional_info_full (  valid_flag ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_loan_additional_info_full_002 ON cal_bi_analytics_dev.dbo.loan_additional_info_full (  loan_rec_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_loan_additional_info_full_003 ON cal_bi_analytics_dev.dbo.loan_additional_info_full (  mdm_checksum ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_loan_additional_info_full_004 ON cal_bi_analytics_dev.dbo.loan_additional_info_full (  account_no ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.loan_customfields definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.loan_customfields;

CREATE TABLE cal_bi_analytics_dev.dbo.loan_customfields (
	CustomFieldID int IDENTITY(1,1) NOT NULL,
	Loan_RecID nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CF_Name nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CF_Tab nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CF_Value nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InsertedDate datetime2 DEFAULT getdate() NULL,
	CONSTRAINT PK__loan_cus__403326D4BBEAB430 PRIMARY KEY (CustomFieldID)
);
 CREATE NONCLUSTERED INDEX IX_loan_customfields_perf ON cal_bi_analytics_dev.dbo.loan_customfields (  Loan_RecID ASC  , CF_Name ASC  )  
	 INCLUDE ( CF_Value ) 
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.loan_customfields_pivot definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.loan_customfields_pivot;

CREATE TABLE cal_bi_analytics_dev.dbo.loan_customfields_pivot (
	Loan_RecID nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoadDate datetime NOT NULL,
	[Pymt with NSF] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Coding] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Wire Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Product Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Actual LTV] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Effective Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Txn Definition] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Next Payment] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Number of Units] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Renewed Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Processing Fee Percent] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administrative Fees] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Reduction to Mortgagor] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Funds Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Remaining Amortization] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Calculated GDS] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insurance Policy Certificate] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Purpose] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income Type 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supp Claim Funds Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bank of Canada Overnight Rate] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProRated Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Default Legal Proceedings Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Reason for Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Opening Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cash back] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First Payment Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Renewal Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NSF Pymt Due Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MBS Pool Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment Frequency] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Accrued Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original Appraisal Amount] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Updated Mortgage Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Daily ProRated Prepayment Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepaid Credit if applicable] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Late Payment Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Calculated TDS] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Days in Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insurer Policy] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Percent Owned] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Collection Cost] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ownership Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Repayment Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original Appraisal Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	a nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Final Discharge] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Person Account Current Income Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Filed] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Chosen Rate Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAmortizationMonths nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original LTV] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REO nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Balance of Auto Renewal LF] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administration Renewal Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment to be returned once cleared] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penalty in Months] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penalty Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Period Start Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Legal Action] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PYMT PLAN DUE DAY] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepayment Term Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ARM Floor] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Law Firm] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Posted Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interest Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Term In Months] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Agent] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalTermMonths nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomeType 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Administration Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Daily ProRated Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Maintenance of Property] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Installments in Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Funding Partner] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalRate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBeaconDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income Type 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administration Fee renewal] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Principal Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Principal Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interest Adjustment Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee in Percent Original] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Days from Letter] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postage and Delivery Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Brokerage] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Next Step] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Application Purpose] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Mortgage Statement Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepayment Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Per Diem Offset] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pool Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Modified] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge of Mortgage Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	b nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Charges to MCC] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Last Contact Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supplementary Claim Filed] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supp Claim Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funds nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Amortization Term in Years] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First Loan Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Authorized Amount] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharging Prinicpal] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee in Dollars Original] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Balance of Renewal Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Arrears Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalRateType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Processing Fee in Dollars] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.loan_final definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.loan_final;

CREATE TABLE cal_bi_analytics_dev.dbo.loan_final (
	Loan_RecID nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	PB_ZipCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_CountryCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneMain nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LateChargeDays nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PurchaseDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RegularPayment nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Balance of Renewal Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Daily ProRated Prepayment Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Brokerage] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ARM Floor] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_Street nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_EmailAddress nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_RecID nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_Salutation nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WPC_Publish nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplyToImpound nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CON_ImpoundBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DefaultRateUse nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Account nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OrigVendorAccount nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income Type 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Administration Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Installments in Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Funds Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Collection Cost] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Calculated GDS] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PYMT PLAN DUE DAY] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interest Adjustment Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_Account nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_DOB nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_MI nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GraceDaysMethod nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Hold] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UnearnedDiscount nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pymt with NSF] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NSF Pymt Due Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee in Dollars Original] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Daily ProRated Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	b nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Wire Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment to be returned once cleared] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Next Step] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Effective Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Amortization Term in Years] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_SendPaymentReceipt nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplyToReserve nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyOccupancy nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RateType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Coding] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharging Prinicpal] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Balance of Auto Renewal LF] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Default Legal Proceedings Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Reduction to Mortgagor] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Cash back] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Repayment Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Processing Fee Percent] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_Notes nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneFax nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ACH nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyAPN nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TrustBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penalty in Months] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Term In Months] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Renewed Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insurance Policy Certificate] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Ownership Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PlaceOnHold nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_State nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CON_ReserveBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MaturityDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ByLastName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EmailFormat nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge Mortgage Statement Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supp Claim Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Posted Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Next Payment] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Authorized Amount] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First Payment Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Bank of Canada Overnight Rate] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AggregateSeniorLiens nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyDescription nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ReserveBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Final Discharge] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Arrears Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Late Payment Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Principal Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Principal Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Interest Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepayment Term Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_TINType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_LegalStructureType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_SendPaymentStatement nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplyToPI nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentDueDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income Type 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FMLP nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Discharge of Mortgage Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administration Fee renewal] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Per Diem Offset] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalRate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	REO nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AggregateAppraisedValue nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CalculatedLTV nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FirstPaymentDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaymentFrequency nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyStreet nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IncomeType 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Law Firm] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Actual LTV] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Reason for Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Main Claim Filed] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MBS Pool Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Percent Owned] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Principal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original LTV] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_City nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_EmailFormat nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_FirstName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_FullName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecID nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ClosingDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanCode nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyLTV nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UnpaidCharges nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CDFIReporting nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 3] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Lender Fee in Percent Original] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Insurer Policy] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Last Contact Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Remaining Amortization] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Calculated TDS] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Days in Arrears] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalAmortizationMonths nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Updated Mortgage Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	WPC_PIN nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AppraisalDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CON_TrustBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Categories nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LegalStructure nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LoanOfficer nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Priority nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TermLeft nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerRecID nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EmailAddress nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Beacon Score 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Days from Letter] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administration Renewal Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supplementary Claim Filed] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Accrued Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original Appraisal Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_DeliveryOptions nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsTemplate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepaid Credit if applicable] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Txn Definition] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Chosen Rate Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Agent] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Renewal Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBeaconDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_TIN nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_BorrowerRecID nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_LastName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	EnableInsuranceTracking nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PaidOffDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyState nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Notes nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Income 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 1] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoBorrower 2] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Insurer nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Penalty Interest] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Funding Partner] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Pool Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalTermMonths nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalRateType nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Original Appraisal Amount] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ApplyToOther nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	InterestPaidTo nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCounty nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SoldRate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UnpaidLateCharges nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[__type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LOSLoanRecID nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProRated Lender Fee] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Postage and Delivery Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Status] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Application Purpose] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneCell nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneHome nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_SendLateNotices nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SortName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SysTimeStamp nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ImpoundBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextRevision nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PrincipalBalance nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyZip nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	UnpaidInterest nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysLate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Administrative Fees] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Prepayment Costs] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Maintenance of Property] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Product Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Supp Claim Funds Received] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Period Start Date] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Payment Frequency] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Legal Action] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TDSRQual nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[First Loan Number] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Purpose] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Mortgage Processing Fee in Dollars] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneWork nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_RolodexPrint nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BilledToDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BookingDate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NoteRate nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PropertyCity nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	a nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Charges to MCC] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Account Name] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Person Account Current Income Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Funds nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Opening Balance] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Number of Units] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Loan Modified] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT PK__loan_fin__9442A3905656C750 PRIMARY KEY (Loan_RecID)
);


-- cal_bi_analytics_dev.dbo.loan_master definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.loan_master;

CREATE TABLE cal_bi_analytics_dev.dbo.loan_master (
	LoanID int IDENTITY(1,1) NOT NULL,
	api_url nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Status nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ErrorNumber nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ErrorMessage nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Account nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_RecID nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BorrowerRecID nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	DaysLate int NULL,
	LoanType nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OriginalBalance decimal(18,2) NULL,
	PrincipalBalance decimal(18,2) NULL,
	NoteRate decimal(10,4) NULL,
	BookingDate date NULL,
	MaturityDate date NULL,
	PB_FirstName nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_LastName nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_FullName nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_Email nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_PhoneMain nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_City nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_State nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PB_ZipCode nvarchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	FileDate datetime2 DEFAULT getdate() NULL,
	CONSTRAINT PK__loan_mas__4F5AD43728855DFE PRIMARY KEY (LoanID)
);


-- cal_bi_analytics_dev.dbo.logger definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.logger;

CREATE TABLE cal_bi_analytics_dev.dbo.logger (
	logger_rk bigint IDENTITY(1,1) NOT NULL,
	process_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_enabled smallint DEFAULT 1 NULL,
	created_on datetime DEFAULT getdate() NULL,
	CONSTRAINT PK__logger__79B110283F11A399 PRIMARY KEY (logger_rk)
);
 CREATE NONCLUSTERED INDEX logger_001 ON cal_bi_analytics_dev.dbo.logger (  process_name ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.offset_counter definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.offset_counter;

CREATE TABLE cal_bi_analytics_dev.dbo.offset_counter (
	offset_counter_rk bigint IDENTITY(1,1) NOT NULL,
	pipeline_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime DEFAULT getdate() NULL
);
 CREATE NONCLUSTERED INDEX idx_offset_counter_001 ON cal_bi_analytics_dev.dbo.offset_counter (  pipeline_name ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.offset_counter_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.offset_counter_full;

CREATE TABLE cal_bi_analytics_dev.dbo.offset_counter_full (
	offset_counter_rk bigint IDENTITY(1,1) NOT NULL,
	pipeline_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	key_value varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_on datetime DEFAULT getdate() NULL
);
 CREATE NONCLUSTERED INDEX idx_offset_counter_full_001 ON cal_bi_analytics_dev.dbo.offset_counter_full (  pipeline_name ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.opportunity_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.opportunity_full;

CREATE TABLE cal_bi_analytics_dev.dbo.opportunity_full (
	purchase_rk bigint IDENTITY(1,1) NOT NULL,
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	day_rk int NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(38,18) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	valid_flag varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Y' NULL,
	valid_from_date date DEFAULT getdate() NULL,
	valid_to_date date DEFAULT '12-31-9999' NULL,
	tmo_account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization decimal(38,18) NULL,
	renew_amortization_total_interest_pay decimal(38,18) NULL,
	remaining_amortization decimal(38,18) NULL,
	negative_amortization_formula decimal(38,18) NULL,
	number_of_compounded_periods decimal(38,18) NULL,
	number_of_payments decimal(38,18) NULL,
	loan_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date datetime NULL,
	mortgage_holder_1 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_2 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_3 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pre_paid_holdback_monthly decimal(38,18) NULL,
	holdback_spread decimal(38,18) NULL,
	pre_paid_holdback decimal(38,18) NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_on datetime NULL,
	updated_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	file_date date NULL,
	corporation_deal nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_appraised_value decimal(38,18) NULL,
	lender_fee_payment_method varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_amount_paid decimal(38,18) NULL,
	pricing_option_lender_fee decimal(38,18) NULL,
	lender_fee_dollar_value decimal(38,18) NULL,
	lender_fee_deferment decimal(38,18) NULL,
	custom_lender_fee_deferment_amount decimal(38,18) NULL,
	pos_status varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_possession_date datetime2 NULL,
	listed_price decimal(38,18) NULL,
	listed_on datetime2 NULL,
	sold_firm_date datetime2 NULL,
	sold_price decimal(38,18) NULL,
	pos_closing_date datetime2 NULL,
	total_interest_due decimal(38,18) NULL,
	grand_total decimal(38,18) NULL,
	CONSTRAINT PK__opportun__8704C60BFEB4D57D PRIMARY KEY (purchase_rk)
);


-- cal_bi_analytics_dev.dbo.process_audit_log definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.process_audit_log;

CREATE TABLE cal_bi_analytics_dev.dbo.process_audit_log (
	audit_log_id bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sl_no int NULL,
	process_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	log_desc varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_error smallint DEFAULT 0 NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Auto' NULL
);
 CREATE NONCLUSTERED INDEX idx_process_audit_log_001 ON cal_bi_analytics_dev.dbo.process_audit_log (  batch_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_process_audit_log_002 ON cal_bi_analytics_dev.dbo.process_audit_log (  is_error ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_process_audit_log_003 ON cal_bi_analytics_dev.dbo.process_audit_log (  created_on ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.process_audit_log_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.process_audit_log_full;

CREATE TABLE cal_bi_analytics_dev.dbo.process_audit_log_full (
	audit_log_id bigint IDENTITY(1,1) NOT NULL,
	batch_id varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sl_no int NULL,
	process_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	log_desc varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remarks varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_error smallint DEFAULT 0 NULL,
	created_on datetime DEFAULT getdate() NULL,
	created_by varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'Auto' NULL
);
 CREATE NONCLUSTERED INDEX idx_process_audit_log_full_001 ON cal_bi_analytics_dev.dbo.process_audit_log_full (  batch_id ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_process_audit_log_full_002 ON cal_bi_analytics_dev.dbo.process_audit_log_full (  is_error ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX idx_process_audit_log_full_003 ON cal_bi_analytics_dev.dbo.process_audit_log_full (  created_on ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- cal_bi_analytics_dev.dbo.reporting_parameter definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.reporting_parameter;

CREATE TABLE cal_bi_analytics_dev.dbo.reporting_parameter (
	reporting_parameter_rk int IDENTITY(1,1) NOT NULL,
	para_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_desc varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_value varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_group varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active smallint DEFAULT 1 NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'ADMIN' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'ADMIN' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	CONSTRAINT UQ__reportin__108FA3D2E8AA8530 UNIQUE (para_code)
);


-- cal_bi_analytics_dev.dbo.reporting_parameter_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.reporting_parameter_full;

CREATE TABLE cal_bi_analytics_dev.dbo.reporting_parameter_full (
	reporting_parameter_rk int IDENTITY(1,1) NOT NULL,
	para_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_desc varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_value varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	para_group varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	is_active smallint DEFAULT 1 NULL,
	created_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'ADMIN' NULL,
	created_on datetime DEFAULT getdate() NULL,
	updated_by varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT 'ADMIN' NULL,
	updated_on datetime DEFAULT getdate() NULL,
	CONSTRAINT UQ__reportin__108FA3D245ACE088 UNIQUE (para_code)
);


-- cal_bi_analytics_dev.dbo.stg_dim_customer definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_customer;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_customer (
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dob date NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_lender definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_lender;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_lender (
	lender_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_timestamp datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio (
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adusted_days_late int NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio_bkp_26012026 definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio_bkp_26012026;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_lender_portfolio_bkp_26012026 (
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_loan definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_loan;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_loan (
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	customer_rk bigint NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(9,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_loan_additional_info definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_loan_additional_info;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_loan_additional_info (
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sort_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amort_type int NULL,
	loan_purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	maturity_date date NULL,
	neg_amort_to_interest varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_due_date date NULL,
	note_rate decimal(9,4) NULL,
	original_balance_amt decimal(18,2) NULL,
	paid_off_date date NULL,
	paid_to_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pmt_other decimal(18,2) NULL,
	pmt_pi decimal(18,2) NULL,
	pmt_reserve decimal(18,2) NULL,
	prepayment_penalty decimal(18,2) NULL,
	principal_balance decimal(18,2) NULL,
	priority int NULL,
	rate_type int NULL,
	regular_payment decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	delivery_options int NULL,
	email_format int NULL,
	enable_insurance_tracking varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_structure_type int NULL,
	notes varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	place_on_hold varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rolodex_print varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	salutation varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_late_notices varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_receipt varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_statement varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin_type int NULL,
	appraiser_fmv decimal(18,4) NULL,
	country_code varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	flood_zone varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pledged_equity decimal(18,2) NULL,
	primary_prop varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purchase_price decimal(18,2) NULL,
	thomas_map varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zoning varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_number_pac varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	institution_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_loan_custom_info definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_loan_custom_info;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_loan_custom_info (
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_payment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_balance varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_dim_opportunity definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_dim_opportunity;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_dim_opportunity (
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(18,2) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tmo_account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization decimal(38,18) NULL,
	renew_amortization_total_interest_pay decimal(38,18) NULL,
	remaining_amortization decimal(38,18) NULL,
	negative_amortization_formula decimal(38,18) NULL,
	number_of_compounded_periods decimal(38,18) NULL,
	number_of_payments decimal(38,18) NULL,
	loan_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date datetime NULL,
	mortgage_holder_1 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_2 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_3 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pre_paid_holdback_monthly decimal(38,18) NULL,
	holdback_spread decimal(38,18) NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	corporation_deal varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_appraised_value decimal(38,18) NULL,
	lender_fee_payment_method varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_amount_paid decimal(38,18) NULL,
	pricing_option_lender_fee decimal(38,18) NULL,
	lender_fee_dollar_value decimal(38,18) NULL,
	lender_fee_deferment decimal(38,18) NULL,
	custom_lender_fee_deferment_amount decimal(38,18) NULL,
	pos_status varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_possession_date datetime2 NULL,
	listed_price decimal(38,18) NULL,
	listed_on datetime2 NULL,
	sold_firm_date datetime2 NULL,
	sold_price decimal(38,18) NULL,
	pos_closing_date datetime2 NULL,
	total_interest_due decimal(38,18) NULL,
	grand_total decimal(38,18) NULL
);


-- cal_bi_analytics_dev.dbo.stg_fund_adjustment definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_fund_adjustment;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_fund_adjustment (
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adjustment_type varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_percentage varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_value varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_fund_adjustment_ank definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_fund_adjustment_ank;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_fund_adjustment_ank (
	account_no varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_code varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adjustment_type varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_percentage varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fund_value varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_get_loan_by_ts definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_get_loan_by_ts;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_get_loan_by_ts (
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dob date NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(18,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_percent varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_in_dollars varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_modified varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_get_loan_by_ts_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_get_loan_by_ts_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_get_loan_by_ts_full (
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	by_last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mi varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	dob date NULL,
	email_id varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	los_loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach int NULL,
	[hold] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	intrest_paid_to date NULL,
	payment_due_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	regular_payment decimal(18,2) NULL,
	apply_to_pi decimal(18,2) NULL,
	apply_to_reserve decimal(18,2) NULL,
	apply_to_impound decimal(18,2) NULL,
	apply_to_other decimal(18,2) NULL,
	maturity_date date NULL,
	paid_off_date date NULL,
	note_rate decimal(9,4) NULL,
	sold_rate decimal(9,4) NULL,
	loan_priority int NULL,
	principal_balance decimal(18,2) NULL,
	trust_balance decimal(18,2) NULL,
	impound_balance decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	unpaid_late_charges decimal(18,2) NULL,
	unpaid_charges decimal(18,2) NULL,
	unpaid_intrest decimal(18,2) NULL,
	street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zip_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	home_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	work_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cell_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fax_phone varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	rate_type int NULL,
	property_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_street varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_state varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_zip varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_country varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_ltv decimal(9,4) NULL,
	property_apn varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	aggregate_appraised_value decimal(18,2) NULL,
	calculated_ltv decimal(18,4) NULL,
	closing_date date NULL,
	first_payment_date date NULL,
	purhcase_date date NULL,
	booking_date date NULL,
	next_revision date NULL,
	original_balance_amt decimal(18,2) NULL,
	unearned_discount decimal(18,2) NULL,
	loan_code varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_date date NULL,
	aggregate_senior_liens decimal(18,2) NULL,
	loan_officer varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_status varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	account_status varchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_a varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_name varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	accrued_interest varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	actual_ltv varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_fee_renewal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administration_renewal_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	administrative_fees varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization_term_in_years varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	application_purpose varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arm_floor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	arrears_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	authorized_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_b varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_auto_renewal_lf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	balance_of_renewal_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_gds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	calculated_tds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	cash_back varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_1 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_2 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	coborrower_3 varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	collection_cost varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	daily_prorated_prepayment_costs varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_from_letter varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	days_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	default_legal_proceedings_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_administration_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_coding varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_mortgage_statement_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharge_of_mortgage_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	discharging_prinicpal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	effective_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	final_discharge varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_loan_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	fmlp varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funding_partner varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	funds varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	gdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	installments_in_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurance_policy_certificate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	insurer_policy varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_adjustment_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	interest_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_contact_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_payment_interest varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	law_firm varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_action varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_dollars_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_in_percent_original varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_charges_to_mcc varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_purpose varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	main_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	maintenance_of_property varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mbs_pool_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_agent varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_brokerage varchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_payment varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_step varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_pymt_due_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	number_of_units varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	opening_balance varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_amortization_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_amount varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_appraisal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_beacon_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_ltv decimal(15,8) NULL,
	original_rate varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	original_term_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ownership_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_to_be_returned_once_cleared varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_in_months varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	penalty_interest varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	per_diem_offset varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	percent_owned varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	period_start_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	person_account_current_income_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pool_number varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	postage_and_delivery_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	posted_date varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepaid_credit_if_applicable varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_costs varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prepayment_term_type varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	principal_arrears varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	product_name varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	prorated_lender_fee varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pymt_plan_due_day int NULL,
	pymt_with_nsf varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reason_for_arrears varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reduction_to_mortgagor varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	remaining_amortization varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewal_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reo varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_funds_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supp_claim_received varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	supplementary_claim_filed varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tdsrqual varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	txn_definition varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adhoc_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	wire_fee varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_percent varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_processing_fee_in_dollars varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_modified varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_lender_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_lender_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_lender_full (
	lender_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_timestamp datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_lender_portfolio_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_lender_portfolio_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_lender_portfolio_full (
	lender_rk bigint NULL,
	loan_rk bigint NULL,
	lender_account_code varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	first_funding_date date NULL,
	last_funding_date date NULL,
	pct_owned decimal(10,4) NULL,
	lender_rate decimal(10,4) NULL,
	note_rate decimal(10,4) NULL,
	maturity_date date NULL,
	term_left int NULL,
	next_payment_date date NULL,
	regular_payment decimal(20,2) NULL,
	loan_balance decimal(20,2) NULL,
	days_late int NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	adusted_days_late int NULL
);


-- cal_bi_analytics_dev.dbo.stg_loan_additional_info_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_loan_additional_info_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_loan_additional_info_full (
	loan_rec_id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sort_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amort_type int NULL,
	loan_purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_type int NULL,
	maturity_date date NULL,
	neg_amort_to_interest varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	next_due_date date NULL,
	note_rate decimal(9,4) NULL,
	original_balance_amt decimal(18,2) NULL,
	paid_off_date date NULL,
	paid_to_date date NULL,
	payment_frequency varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pmt_other decimal(18,2) NULL,
	pmt_pi decimal(18,2) NULL,
	pmt_reserve decimal(18,2) NULL,
	prepayment_penalty decimal(18,2) NULL,
	principal_balance decimal(18,2) NULL,
	priority int NULL,
	rate_type int NULL,
	regular_payment decimal(18,2) NULL,
	reserve_balance decimal(18,2) NULL,
	delivery_options int NULL,
	email_format int NULL,
	enable_insurance_tracking varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	full_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_structure_type int NULL,
	notes varchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	place_on_hold varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	rolodex_print varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	salutation varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_late_notices varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_receipt varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	send_payment_statement varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tin_type int NULL,
	appraiser_fmv decimal(18,4) NULL,
	country_code varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	flood_zone varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	legal_description varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pledged_equity decimal(18,2) NULL,
	primary_prop varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purchase_price decimal(18,2) NULL,
	thomas_map varchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	zoning varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_timestamp datetime NULL,
	income_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	income_type_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_1 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_2 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	beacon_score_3 varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_number_pac varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_type varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	individual_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	institution_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_loan_history definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_loan_history;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_loan_history (
	day_rk int NULL,
	ach_batch_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trace_number varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_trans_number varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ach_transmission_datetime datetime NULL,
	due_date date NULL,
	date_rec date NULL,
	group_rec_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	late_charge decimal(18,2) NULL,
	loan_account varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_balance decimal(18,2) NULL,
	loan_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	nsf_source_rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	notes varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	paid_to date NULL,
	pay_method int NULL,
	rec_id varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	reference varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_app varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	source_typ varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_by varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	sys_created_date datetime NULL,
	to_broker_fee decimal(18,2) NULL,
	to_charges_int decimal(18,2) NULL,
	to_charges_prin decimal(18,2) NULL,
	to_current_bill decimal(18,2) NULL,
	to_default_interest decimal(18,2) NULL,
	to_impound decimal(18,2) NULL,
	to_interest decimal(18,2) NULL,
	to_late_charge decimal(18,2) NULL,
	to_lender_fee decimal(18,2) NULL,
	to_other_payments decimal(18,2) NULL,
	to_other_tax_free decimal(18,2) NULL,
	to_other_taxable decimal(18,2) NULL,
	to_past_due decimal(18,2) NULL,
	to_prepay decimal(18,2) NULL,
	to_principal decimal(18,2) NULL,
	to_reserve decimal(18,2) NULL,
	to_unearned_discount decimal(18,2) NULL,
	to_unpaid_interest decimal(18,2) NULL,
	total_amount decimal(18,2) NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_opportunity definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_opportunity;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_opportunity (
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(18,2) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
);


-- cal_bi_analytics_dev.dbo.stg_opportunity_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_opportunity_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_opportunity_full (
	id varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_rk bigint NULL,
	borrower_name varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	account_no_origination varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	approved_mortgage_formula decimal(38,18) NULL,
	purchase_date date NULL,
	last_modified_date date NULL,
	close_date date NULL,
	funding_date date NULL,
	funded_Date date NULL,
	intrerest_adjustment_date date NULL,
	first_payment_date date NULL,
	maturity_date date NULL,
	new_maturity_date_on_renewal date NULL,
	repayment_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	term_in_months decimal(38,18) NULL,
	amortization_period decimal(38,18) NULL,
	annual_interest_rate decimal(38,18) NULL,
	chosen_rate_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	note_rate decimal(38,18) NULL,
	requested_term_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	payment_amount decimal(38,18) NULL,
	payment_frequency varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	primary_applicant_credit_score decimal(38,18) NULL,
	applicant_credit_report_date date NULL,
	approved_ltv decimal(38,18) NULL,
	appraised_value decimal(38,18) NULL,
	appraisal_date date NULL,
	dwelling_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_tenure varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_occupancy_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[type] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	loan_position varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	province varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_city varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	property_postal_code varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	updated_mortgage_status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	possession_type varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	bank_of_canada_overnight_rate decimal(38,18) NULL,
	status varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	appraisal_value_at_renewal decimal(18,2) NULL,
	renewal_appraisal_date date NULL,
	lender varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	tmo_account_no varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	amortization decimal(38,18) NULL,
	renew_amortization_total_interest_pay decimal(38,18) NULL,
	remaining_amortization decimal(38,18) NULL,
	negative_amortization_formula decimal(38,18) NULL,
	number_of_compounded_periods decimal(38,18) NULL,
	number_of_payments decimal(38,18) NULL,
	loan_type varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	purpose varchar(55) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	renewed_date datetime NULL,
	created_by varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mdm_checksum varchar(35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	batch_id varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_1 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_2 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	mortgage_holder_3 varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pre_paid_holdback_monthly decimal(38,18) NULL,
	holdback_spread decimal(38,18) NULL,
	pre_paid_holdback decimal(38,18) NULL,
	corporation_deal nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_appraised_value decimal(38,18) NULL,
	lender_fee_payment_method varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	lender_fee_amount_paid decimal(38,18) NULL,
	pricing_option_lender_fee decimal(38,18) NULL,
	lender_fee_dollar_value decimal(38,18) NULL,
	lender_fee_deferment decimal(38,18) NULL,
	custom_lender_fee_deferment_amount decimal(38,18) NULL,
	pos_status varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	pos_possession_date datetime2 NULL,
	listed_price decimal(38,18) NULL,
	listed_on datetime2 NULL,
	sold_firm_date datetime2 NULL,
	sold_price decimal(38,18) NULL,
	pos_closing_date datetime2 NULL,
	total_interest_due decimal(38,18) NULL,
	grand_total decimal(38,18) NULL
);


-- cal_bi_analytics_dev.dbo.stg_sf_opportunity definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_from_Origination__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage__c decimal(18,2) NULL,
	CreatedDate datetime2(0) NULL,
	LastModifiedDate datetime2(0) NULL,
	Created_Date__c datetime2(0) NULL,
	CloseDate datetime2(0) NULL,
	Funding_Date__c datetime2(0) NULL,
	Funded_Date__c datetime2(0) NULL,
	Interest_Adjustment_Date__c datetime2(0) NULL,
	First_Payment_Date__c datetime2(0) NULL,
	Maturity_Date__c datetime2(0) NULL,
	New_Maturity_Date_on_Renewal__c datetime2(0) NULL,
	Repayment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_In_Months__c decimal(3,0) NULL,
	Amortization_Period__c decimal(3,0) NULL,
	Annual_Percentage_Rate__c decimal(18,4) NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate__c decimal(18,2) NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Credit_Score__c decimal(18,0) NULL,
	Credit_Report_Date_del__c datetime2(0) NULL,
	Approved_LTV__c decimal(18,2) NULL,
	Appraised_Value__c decimal(18,2) NULL,
	Appraisal_Date__c datetime2(0) NULL,
	Dwelling_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tenure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Zip_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Updated_Mortgage_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Possession_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BoC_Overnight_Rate__c decimal(18,3) NULL,
	StageName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value_at_Renewal__c decimal(18,2) NULL,
	Renewal_Appraisal_Date__c datetime2(0) NULL,
	Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_New__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renew_Amortization_Total_Interest_Pay__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Remaining_Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Negative_Amortization_Formula__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Compounded_Periods__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date__c datetime2 NULL,
	Existing_Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback_Monthly_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback_Spread__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Corporation_Deal__c nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback__c nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT '' NULL,
	Lender_Fee_Payment_Method__c varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Amount_Paid__c decimal(38,18) NULL,
	Pricing_Option_Lender_Fee__c decimal(38,18) NULL,
	Lender_Fee_Dollar_Value__c decimal(38,18) NULL,
	Lender_Fee_Deferment__c decimal(38,18) NULL,
	Custom_Lender_Fee_Deferment_Amount__c decimal(38,18) NULL,
	PoS_Status__c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Possession_Date__c datetime2 NULL,
	Listed_Price__c decimal(38,18) NULL,
	Listed_On__c datetime2 NULL,
	Sold_Firm_Date__c datetime2 NULL,
	Sold_Price__c decimal(38,18) NULL,
	PoS_Closing_Date__c datetime2 NULL,
	Total_Interest_Due__c decimal(38,18) NULL,
	Grand_Total__c decimal(38,18) NULL,
	Appraised_Value_PoS__c decimal(38,18) NULL
);


-- cal_bi_analytics_dev.dbo.stg_sf_opportunity_Test definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity_Test;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity_Test (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsDeleted bit NULL,
	AccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RecordTypeId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPrivate bit NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Description nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	StageName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amount decimal(18,2) NULL,
	Probability decimal(18,2) NULL,
	ExpectedRevenue decimal(18,2) NULL,
	TotalOpportunityQuantity decimal(18,2) NULL,
	CloseDate datetime2(0) NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NextStep nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LeadSource nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsClosed bit NULL,
	IsWon bit NULL,
	ForecastCategory nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ForecastCategoryName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CampaignId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOpportunityLineItem bit NULL,
	Pricebook2Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	OwnerId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CreatedDate datetime2(0) NULL,
	AgeInDays int NULL,
	CreatedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastModifiedDate datetime2(0) NULL,
	LastModifiedById nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SystemModstamp datetime2(0) NULL,
	LastActivityDate datetime2(0) NULL,
	LastActivityInDays int NULL,
	PushCount int NULL,
	LastStageChangeDate datetime2(0) NULL,
	LastStageChangeInDays int NULL,
	FiscalQuarter int NULL,
	FiscalYear int NULL,
	Fiscal nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ContactId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastViewedDate datetime2(0) NULL,
	LastReferencedDate datetime2(0) NULL,
	PartnerAccountId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SyncedQuoteId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	ContractId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HasOpenActivity bit NULL,
	HasOverdueTask bit NULL,
	LastAmountChangedHistoryId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LastCloseDateChangedHistoryId nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	IsPriorityRecord bit NULL,
	HasUnlikelyToCloseInsight bit NULL,
	Other_Properties_Sum_Frequency_Payment__c decimal(18,2) NULL,
	Lock_Funded_Deal__c bit NULL,
	Subsequent_Mortgage__c decimal(18,2) NULL,
	Loan_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loss_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Street__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_LTV_PID__c decimal(18,2) NULL,
	Property_Zip_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate__c decimal(18,2) NULL,
	Sold_Rate__c decimal(18,3) NULL,
	Amortized_Over__c decimal(18,0) NULL,
	Due_in_Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_Check_Completed__c bit NULL,
	Funding_Date__c datetime2(0) NULL,
	Appraisal_Date_Cutoff__c datetime2(0) NULL,
	Instrument_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Officer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Date__c datetime2(0) NULL,
	Lender_Fees__c decimal(18,2) NULL,
	Application_Date__c datetime2(0) NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_LTV__c decimal(18,2) NULL,
	Purchase_Date_2__c datetime2(0) NULL,
	Total_Liens__c decimal(18,2) NULL,
	Broker_Agent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback_Spread__c decimal(4,0) NULL,
	Property_Amount__c decimal(18,2) NULL,
	Expected_Closing_Date__c datetime2(0) NULL,
	Pricing_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Variable_Pricing_Option__c decimal(18,2) NULL,
	Fixed_Pricing_Option__c decimal(18,2) NULL,
	Pricing_Option_Lender_Fee__c decimal(18,2) NULL,
	Pricing_Option_Commitment_Fee__c decimal(18,2) NULL,
	Broker_Finder_Fee__c decimal(18,2) NULL,
	Appraisal_Value__c decimal(18,2) NULL,
	Appraisal_Approval_Date__c datetime2(0) NULL,
	Appraisal_Date__c datetime2(0) NULL,
	Admin_Fee__c decimal(18,2) NULL,
	Purchase_Value__c decimal(18,2) NULL,
	Insurance_Premium__c decimal(18,2) NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Total_Mortgage_Amount__c decimal(18,2) NULL,
	Net_Rate__c decimal(18,3) NULL,
	Term__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Brokerage_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lot__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Block__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Concession_Township__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraised_Date__c datetime2(0) NULL,
	Branch_Approval__c bit NULL,
	Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Living_Space__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lot_Size__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspected_On__c datetime2(0) NULL,
	Solicitor_on_file__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purchase_Price__c decimal(18,2) NULL,
	Estimated_Value__c decimal(18,2) NULL,
	Appraised_Value__c decimal(18,2) NULL,
	Heating_Cost__c decimal(18,2) NULL,
	Condo_Fees__c decimal(18,2) NULL,
	Annual_Taxes__c decimal(18,2) NULL,
	Improvements__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Exported_to_TMO__c bit NULL,
	Current_Product_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Filogix_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Repayment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_State__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Heating_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dwelling_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dwelling_Style__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Garage_Size__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Garage_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Environmental_Hazard__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approval_Received__c bit NULL,
	Taxation_Year__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Difference_Currency__c decimal(18,2) NULL,
	Frequency_Payment__c decimal(18,2) NULL,
	Existing_Mortgage_Frequency_Payment_2__c decimal(18,2) NULL,
	Finance_Approval__c bit NULL,
	Discharge_Requested__c bit NULL,
	Actual_LTV__c decimal(18,2) NULL,
	EFT_File_Date__c datetime2(0) NULL,
	Appraisal_Value_at_Renewal__c decimal(18,2) NULL,
	Renewal_Origination_LTV__c decimal(18,2) NULL,
	Existing_Mortgage_Loan_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Maturity_Date_2__c datetime2(0) NULL,
	Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Balance__c decimal(18,2) NULL,
	Existing_Mortgage_Balance_2__c decimal(18,2) NULL,
	Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Interest_Rate__c decimal(18,3) NULL,
	Existing_Mortgage_Interest_Rate_2__c decimal(18,3) NULL,
	Existing_Mortgage_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Original_Mortgage_Amount__c decimal(18,2) NULL,
	Existing_Mortgage_Original_Amount_2__c decimal(18,2) NULL,
	Solicitor_Account_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Pulled_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payment_Frequency_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Request_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Difference_Percent__c decimal(18,2) NULL,
	Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date_in_3_Months__c bit NULL,
	Existing_Mortgage_Term_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Content_for_Broker_Pre_Approval_1_Option__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_1__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraiser_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Maturity_Date_on_Renewal__c datetime2(0) NULL,
	Value_of_Improvements__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Sales_Executive__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Conditions__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_ETF_Payment__c decimal(18,2) NULL,
	Reason_Application_Lost_Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback__c decimal(18,0) NULL,
	Total_Pre_Paid_Holdback__c decimal(18,2) NULL,
	Taxes_Paid_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_LTV__c decimal(18,2) NULL,
	Pre_Paid_Holdback_Monthly_Calc__c decimal(18,2) NULL,
	Effective_Variable_Interest_Rate__c decimal(18,4) NULL,
	BoC_Overnight_Rate__c decimal(18,3) NULL,
	Product_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Variable_Rate_Spread__c decimal(18,3) NULL,
	Annual_Percentage_Rate__c decimal(18,4) NULL,
	Term_In_Months__c decimal(18,2) NULL,
	Month_of_First_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Term_Payments__c decimal(18,2) NULL,
	Pre_Payment_Penalty_In_Months__c decimal(18,0) NULL,
	Total_COB__c decimal(12,2) NULL,
	Total_Interest_Payments__c decimal(18,2) NULL,
	Lender_Fee_Calc__c decimal(18,2) NULL,
	Wiring_Fee__c decimal(12,2) NULL,
	Search_Fee__c decimal(12,2) NULL,
	Underwriter_Approval__c bit NULL,
	Lender_Fee_Dollar_Value__c decimal(18,2) NULL,
	APR__c decimal(18,2) NULL,
	First_Draw_Amount__c decimal(18,2) NULL,
	Minimum_Amount__c decimal(18,2) NULL,
	Debit_Fee__c decimal(18,2) NULL,
	Interest_Cutoff_Date__c datetime2(0) NULL,
	Law_Firm_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Solicitor_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Expiry_Date__c datetime2(0) NULL,
	Advance_Date__c datetime2(0) NULL,
	Admin_Renewal_Fee__c decimal(18,2) NULL,
	Commitment_Expiry_Date__c datetime2(0) NULL,
	Approval_by_Credit_Risk_Manager__c bit NULL,
	Booking_Date__c datetime2(0) NULL,
	Trust_to_Lender__c decimal(18,2) NULL,
	Primary_Credit_Score__c decimal(18,0) NULL,
	Current_Income__c decimal(18,2) NULL,
	Occupancy__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Dolphin__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Weighted_Requested_LTV__c decimal(18,6) NULL,
	Amortization__c decimal(18,0) NULL,
	Finder_Fee__c decimal(18,2) NULL,
	TMO_Account_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Stage_Change_Date__c datetime2(0) NULL,
	GDS__c decimal(13,3) NULL,
	TDS__c decimal(13,3) NULL,
	Stage_Notification_Date__c datetime2(0) NULL,
	Stage_Notification_Date_Time__c datetime2(0) NULL,
	Interest_Adjustment_Date__c datetime2(0) NULL,
	First_Payment_Date__c datetime2(0) NULL,
	Maturity_Date__c datetime2(0) NULL,
	Original_Total_Interest_Payments__c decimal(18,2) NULL,
	Application_Age__c decimal(18,0) NULL,
	Total_Cost_of_Borrowing_Calc__c decimal(18,2) NULL,
	Approved_For_Renewal__c bit NULL,
	Pull_Credit__c bit NULL,
	Remaining_Equity__c decimal(18,2) NULL,
	Term_Beginning_Date__c datetime2(0) NULL,
	Term_Finish_Date_Calc__c datetime2(0) NULL,
	Monthly_Payment_Prorated_Lender_Fee__c decimal(18,2) NULL,
	Payments_for_the_Term__c decimal(18,2) NULL,
	Principal_AMT_at_Maturity__c decimal(18,2) NULL,
	COB_Percentage_Calc__c decimal(18,2) NULL,
	Auto_Renewal_Interest_Rate__c decimal(18,2) NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Auto_Renewal_LF__c decimal(18,2) NULL,
	Documents_check__c decimal(18,2) NULL,
	Parent_Application__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Method_of_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_Ledger_Approved_By__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization_Period__c decimal(18,2) NULL,
	Pre_Payment_Charges__c decimal(18,2) NULL,
	Pre_Authorized_debit_plan_agreement__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewal_Appraisal_Date__c datetime2(0) NULL,
	Term_Date_Range_2__c datetime2(0) NULL,
	Preferred_Contact_Time__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Renewal_LTV__c decimal(18,2) NULL,
	Renewal_Rate_Premium__c decimal(18,2) NULL,
	TMO_Integration_Success__c bit NULL,
	Additional_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Paid__c bit NULL,
	Funded_Stage_Duration_in_Days__c decimal(18,0) NULL,
	Additional_Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Condition_of_Property__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	New_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Discharge_Fee__c decimal(18,2) NULL,
	Renovation_Fee__c decimal(18,2) NULL,
	Title_Search_Fee__c decimal(18,2) NULL,
	Executive_Override__c bit NULL,
	Primary_Name_Co_Borrower_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Documents_checked__c bit NULL,
	Trust_to_Operating__c decimal(18,2) NULL,
	Lead__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Will_It_Fund__c decimal(18,2) NULL,
	Deal_Score__c decimal(18,2) NULL,
	Note_Rate_Lender_Fee__c decimal(18,2) NULL,
	Condo__c bit NULL,
	Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	HELOC_Total_Interest_Payments__c decimal(18,2) NULL,
	Property_Inspected_Month__c datetime2(0) NULL,
	If_No_First_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Second_Mortgage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Total_Liens__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Remaining_Equity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Loan_To_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Similarity_and_Distance_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Total_Interest_Payments__c decimal(18,2) NULL,
	If_No_Appraisal_Company__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Similarity_Distance_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Date_of_Sale_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	If_No_Days_on_Market__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Days_on_Market__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Applicants_Data__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Source__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Application_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Calculated_GDS__c decimal(18,2) NULL,
	Calculated_TDS__c decimal(18,2) NULL,
	Existing_Mortgage_Balance__c decimal(18,2) NULL,
	Existing_Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_IAD__c datetime2(0) NULL,
	Existing_Mortgage_Insured__c bit NULL,
	Existing_Mortgage_Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Maturity_Date__c datetime2(0) NULL,
	Existing_Mortgage_Monthly_Payment__c decimal(18,2) NULL,
	Existing_Mortgage_Original_Amount__c decimal(18,2) NULL,
	Existing_Mortgage_Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Filogix_Channels__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Financing_Waiver_Date__c datetime2(0) NULL,
	Include_in_TDS_calculation__c bit NULL,
	Message_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other_Mortgage_Requested__c bit NULL,
	Payment_Amount_Qualify__c decimal(18,2) NULL,
	Province_State__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Approv_Mort_AND_Approv_LTV__c decimal(18,2) NULL,
	Total_Property_LTV__c decimal(18,2) NULL,
	Total_Requested_Mortgages__c decimal(18,2) NULL,
	Sum_Monthly_Payment_Liabilities__c decimal(18,2) NULL,
	Sum_Other_Incomes__c decimal(18,2) NULL,
	Existing_Mortgage_Maturity_Date_3__c datetime2(0) NULL,
	Tenure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Expenses__c decimal(18,2) NULL,
	Existing_Mortgage_Balance_3__c decimal(18,2) NULL,
	Existing_Mortgage_Holder_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Total_Fee_Approval_to_Parent_Account__c decimal(18,2) NULL,
	Property_Inspection_Booking_Date__c datetime2(0) NULL,
	Existing_Mortgage_Insured_2__c bit NULL,
	Existing_Mortgage_Insured_3__c bit NULL,
	Existing_Mortgage_Loan_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Credit_Report_Date_del__c datetime2(0) NULL,
	Existing_Mortgage_Monthly_Payment_3__c decimal(18,2) NULL,
	Existing_Mortgage_Original_Amount_3__c decimal(18,2) NULL,
	Existing_Mortgage_Payment_Frequency_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Payoff_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Term_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Rate_Type_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Frequency_Payment__c decimal(18,2) NULL,
	Existing_Mortgage_Frequency_Payment_3__c decimal(18,2) NULL,
	Existing_Mortgage_Interest_Rate__c decimal(18,3) NULL,
	Existing_Mortgage_Interest_Rate_3__c decimal(18,3) NULL,
	Existing_Mortgage_Monthly_Payment_2__c decimal(18,2) NULL,
	Residential_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Short_Term_Refi__c bit NULL,
	Term_Date_Range_1__c datetime2(0) NULL,
	Approved_Mortgage__c decimal(18,2) NULL,
	BDM_Note__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Co_Applicant__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Credit_Report_Age__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Secondary_Credit_Score__c decimal(18,0) NULL,
	Interest_Adjustment_Date_3__c datetime2(0) NULL,
	PrimaryCreditReportAge__c decimal(18,0) NULL,
	SecondaryCreditReportAge__c decimal(18,0) NULL,
	Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Law_Firm__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Phone_Number_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Email_Address_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Address_Solicitor__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Created_Date__c datetime2(0) NULL,
	Time_at_Residence__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Time_at_Residence_in_Month__c decimal(18,0) NULL,
	Require_Additional_Funds__c bit NULL,
	Requested_LTV_WF__c decimal(18,6) NULL,
	Total_Sum_of_Assets__c decimal(18,2) NULL,
	Total_Amount_of_Liabilities__c decimal(18,2) NULL,
	Lowest_Credit_Score__c decimal(18,0) NULL,
	Discharge_Administration_Fee_del__c decimal(18,2) NULL,
	Discharge_Mortgage_Statement_Fee__c decimal(18,2) NULL,
	Discharge_of_Mortgage_Fee_old__c decimal(18,2) NULL,
	Funded_Date__c datetime2(0) NULL,
	IsStageChanged__c bit NULL,
	Issue_Commitment_Conditions_Duration__c decimal(18,0) NULL,
	Funded_Duration__c decimal(18,0) NULL,
	Issue_Commitment_Conditions_Date__c datetime2(0) NULL,
	Approved_Mortgage_for_APR__c decimal(18,2) NULL,
	Send_Credit_Email__c bit NULL,
	CP_First_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Second_Mortgage_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Total_Liens__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Remaining_Equity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CP_Loan_to_Value__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Apply_To_Other__c decimal(18,2) NULL,
	Temporary_TMO_ACCOUNT_NUMBER__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Beacon_Score_2__c decimal(18,2) NULL,
	Beacon_Score_3__c decimal(18,2) NULL,
	FMLP__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_PID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_County__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Custom_Requested_LTV__c decimal(18,6) NULL,
	Premium_Paid__c decimal(18,2) NULL,
	Lenders_Portion__c decimal(18,2) NULL,
	Gross_Yield__c decimal(18,2) NULL,
	Finders_Fee__c decimal(18,2) NULL,
	Approved_Mortgage_WF_Field__c decimal(18,2) NULL,
	Total_Purchase_Price__c decimal(18,2) NULL,
	Lender_Fee_Split__c decimal(18,0) NULL,
	Month_Closed__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Successful_Purview_Report__c bit NULL,
	Purview_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Date_Issued__c datetime2(0) NULL,
	Purview_Estimated_Value__c decimal(18,2) NULL,
	Purview_Full_Legal_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Land_Registry_Office__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Last_Sale__c decimal(18,3) NULL,
	Purview_Market_Shift__c decimal(18,2) NULL,
	Purview_Owner_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Parcel_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Registered_Amount__c decimal(18,3) NULL,
	Purview_Registered_Owner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Registered_Titles__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Title_Number_PIN__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purview_Title_Registration_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Rewritten__c bit NULL,
	PurviewResponseCode__c decimal(5,0) NULL,
	Age_of_Appraisal_Report__c decimal(18,2) NULL,
	Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Email_4_A__c bit NULL,
	MCC_Mortgage__c decimal(18,2) NULL,
	MCC_Split__c decimal(18,3) NULL,
	Trust_to_Pre_Paid__c decimal(18,2) NULL,
	Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_2_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Email_4_B__c bit NULL,
	FMLP_Split__c decimal(18,3) NULL,
	Initials_3_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Initials_4_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Oppono_Lender_Percentage__c decimal(18,3) NULL,
	Oppono_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Need_More_Information__c bit NULL,
	City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Order_Appraisal__c bit NULL,
	Short_Term_Refi_2_11__c bit NULL,
	PIN_Number__c decimal(10,0) NULL,
	FMLP_Mortgage__c decimal(18,2) NULL,
	Syndicated_Mortgage__c decimal(18,2) NULL,
	Renewal_LTV__c decimal(18,2) NULL,
	Oppono_Lender_Picklist__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Lender_Percentage__c decimal(18,3) NULL,
	Direct_Lender_Split__c decimal(18,2) NULL,
	Amount_Funded__c decimal(18,2) NULL,
	First_Dollar_Split__c decimal(18,2) NULL,
	Discharge_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Registered_Platform__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Deal_Created__c bit NULL,
	Broker_Renewal_Fee__c decimal(18,2) NULL,
	Structure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Registration__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Record_Type_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Maturity_Date_Date__c datetime2(0) NULL,
	MIC_Principal__c decimal(18,2) NULL,
	Effective_Fixed_Interest_Rate__c decimal(18,4) NULL,
	FLMP_Principal__c decimal(18,2) NULL,
	B_20_Compliant__c bit NULL,
	Property_Address__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Walkthrough_Required__c bit NULL,
	Property_Inspected__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Finder_Fee_Response__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Broker_Finder_Fee_Response2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BDM_Approval__c bit NULL,
	Walk_Through_Contact_Info__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MCC_Mortgage_Report__c decimal(18,2) NULL,
	FMLP_Mortgage_Report__c decimal(18,2) NULL,
	Onespan_Convention__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Onespan_Signer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Access_Approved_Mortgage__c bit NULL,
	BPA_Notes_for_Broker__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BPA_Selected_Pricing__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Parent_Account__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Onespan_Reviewer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Administration_Fee__c decimal(18,2) NULL,
	Mortgage_Statements_Fee__c decimal(18,2) NULL,
	Discharge_of_Mortgage_Fee__c decimal(18,2) NULL,
	Newton_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Interest_Payments__c decimal(18,2) NULL,
	NewtonSenderSystemId__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	NewtonDestinationSystemId__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Interest_Rate__c decimal(18,2) NULL,
	A_R_Lender_Fee__c decimal(18,2) NULL,
	A_R_Lender_Fee_Rate__c decimal(18,2) NULL,
	COB__c decimal(18,2) NULL,
	Principal_at_Maturity_from_Original__c decimal(18,2) NULL,
	Application_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MLS_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Product_Name_Velocity__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Address_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Usage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Payment__c decimal(18,2) NULL,
	Waste_Disposal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Zoning__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	MLS_Listing__c bit NULL,
	Credit_Approval__c bit NULL,
	Finder_s_Fee_Approval__c bit NULL,
	BPA_Exception__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Duration_between_New_App_BPA__c decimal(18,0) NULL,
	Duration_between_New_App_Closing__c decimal(18,0) NULL,
	Duration_between_New_App_UR__c decimal(18,0) NULL,
	Duration_between_UR_BPA__c decimal(18,0) NULL,
	Exception_Approval__c bit NULL,
	Finder_s_Fee_Paid__c bit NULL,
	Commission__c decimal(18,2) NULL,
	Accountant_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Operating_to_Reserve__c decimal(18,2) NULL,
	Current_Week_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Revised_Monthly_Payment__c decimal(18,2) NULL,
	Approved_Mortgage_Currency__c decimal(18,2) NULL,
	Emergency_Rush_Walk_Through__c bit NULL,
	Walk_Through_Charge_Fee__c decimal(18,2) NULL,
	Holdback_for_Instructions__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renew_Amortization_Total_Interest_Pay__c decimal(18,2) NULL,
	Days_since_last_submit__c decimal(18,0) NULL,
	Title_Search_Completed__c bit NULL,
	Offset_Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	System_Mortgage_Fulfillment_Specialist__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Conga_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Inspector__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Day__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Date_Of_Finder_s_Fee_Paid__c datetime2(0) NULL,
	Discharge_Amount_From_TMO__c decimal(12,2) NULL,
	Discharge_Date__c datetime2(0) NULL,
	Converted_To_Refinance__c bit NULL,
	Maturity_Month__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Retainer_Fee__c decimal(18,2) NULL,
	Interest_Adjustment__c decimal(18,2) NULL,
	Trust_Ledger_Approved__c bit NULL,
	Future_Available_Credit__c decimal(10,2) NULL,
	Updated_Mortgage_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CL_Admin_Fee__c decimal(12,2) NULL,
	Realtor_Opinion_Fee__c decimal(12,2) NULL,
	Oppono_Credit_Pull_Consent__c bit NULL,
	Oppono_Latest_Credit_Report_FICO_Score__c decimal(18,0) NULL,
	Oppono_Number_of_Bankruptcy_Records__c decimal(18,0) NULL,
	Oppono_Latest_Credit_Report_Pulled_Date__c datetime2(0) NULL,
	Pre_Payment_Penalty_Dollar_Value__c decimal(18,2) NULL,
	SUMPRODUCT_Approv_Mort_AND_Credit_Score__c decimal(18,2) NULL,
	Current_Stage_Duration_in_days__c decimal(10,0) NULL,
	Co_Broker_Deal__c bit NULL,
	Co_Broker_Finder_Fee__c decimal(18,2) NULL,
	Optional_Initials_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cost_of_Borrowing_Renewal__c decimal(18,2) NULL,
	A_R_Single_Monthly_Payment__c decimal(18,2) NULL,
	Co_Broker_Finder_Fee_Dollar__c decimal(18,2) NULL,
	BoC_Overnight_Rate_Variable__c decimal(18,3) NULL,
	Document_Fulfillment_Completed__c bit NULL,
	Sum_of_Rental_Income__c decimal(18,2) NULL,
	Days_Before_Maturity__c decimal(18,0) NULL,
	Client_New_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Please_Specify_Other_Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	SUMPRODUCT_Request_Mort_AND_Request_LTV__c decimal(18,2) NULL,
	Template_OneSpan_Reviewer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_OneSpan_Signer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Template_Onespan_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Trust_to_Reserve__c decimal(18,2) NULL,
	Signer_1_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_2_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_3_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Signer_4_Tag__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Transaction_Name__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Send_Appraisal_Email__c bit NULL,
	Custom_Maturity_Date__c bit NULL,
	Broker_Consent_Form__c bit NULL,
	Roof_Over_15_Years__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Electrical__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Water_Damage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Other__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Observations__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Compounding_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Effective_Periodic_Rate__c decimal(18,6) NULL,
	Number_of_Compounded_Periods__c decimal(18,2) NULL,
	Number_of_Payments__c decimal(18,2) NULL,
	Heloc_Interest_Payments__c decimal(18,2) NULL,
	Date_of_Sale_of_Comparables__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	A_R_Total_Monthly_Payments__c decimal(18,2) NULL,
	A_R_Payment_A_R_Prorated_Lender_Fee__c decimal(18,2) NULL,
	A_R_Administration_Fee__c decimal(18,2) NULL,
	A_R_Administration_Renewal_Fee__c decimal(18,2) NULL,
	Month_of_First_Renewal_Payment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_from_Origination__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approval_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Approval__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Underwriting__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Person_Account_Contact_Id__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lending_Value__c decimal(18,2) NULL,
	Signback_Date__c datetime2(0) NULL,
	Instructed__c datetime2(0) NULL,
	Insurer__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	RGPEnd__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accelerated_Payment__c decimal(12,2) NULL,
	First_Loan_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Authorized_Amount__c decimal(18,2) NULL,
	Insurance_Policy_Certificate__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgagor_Buydown__c decimal(18,2) NULL,
	Doc_Fulfillment_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Collateral_Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Requested_Amount__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Ownership__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Accrued_Interest__c decimal(12,2) NULL,
	Principal_Arrears__c decimal(12,2) NULL,
	Interest_Arrears__c decimal(12,2) NULL,
	Paid_to_Date__c decimal(13,2) NULL,
	Days_in_Arrears__c decimal(18,2) NULL,
	Remaining_Amortization__c decimal(18,2) NULL,
	Number_of_Units__c decimal(5,0) NULL,
	Legal_Action__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	GDSRQual__c decimal(18,2) NULL,
	TDSRQual__c decimal(18,2) NULL,
	Pool_Number__c decimal(10,0) NULL,
	Insurer_Policy__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Charge__c decimal(18,2) NULL,
	Arrears_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Installments_in_Arrears__c decimal(18,2) NULL,
	Arrears_Balance__c decimal(18,2) NULL,
	Reason_for_Arrears__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Last_Contact_Date__c datetime2(0) NULL,
	MBS_Pool_Number__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Percent_Owned__c decimal(18,2) NULL,
	Posted_Date__c datetime2(0) NULL,
	Effective_Date__c datetime2(0) NULL,
	Txn_Definition__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Cash_back__c decimal(12,2) NULL,
	Collection_Cost__c decimal(12,2) NULL,
	Late_Payment_Interest__c decimal(10,2) NULL,
	Penalty_Interest__c decimal(18,2) NULL,
	Servicing_Fee__c decimal(18,2) NULL,
	Servicing_Fee_HST__c decimal(18,2) NULL,
	Period_Start_Date__c datetime2(0) NULL,
	Actual_Rate__c decimal(18,2) NULL,
	Buydown_Rate__c decimal(18,2) NULL,
	Purchase_Fee__c decimal(18,2) NULL,
	Other_Fees__c decimal(18,2) NULL,
	Net_to_Company__c decimal(12,2) NULL,
	FundingIADAmount__c decimal(18,2) NULL,
	Lien_Priority__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Main_Claim_Filed__c datetime2(0) NULL,
	Main_Claim_Received__c datetime2(0) NULL,
	Main_Claim_Funds_Received__c decimal(18,2) NULL,
	Supplementary_Claim_Filed__c datetime2(0) NULL,
	Supp_Claim_Received__c datetime2(0) NULL,
	Supp_Claim_Funds_Received__c decimal(18,2) NULL,
	Loan_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Full_Offer_Description__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	LTV_w_Priority_Encumbrance__c decimal(18,2) NULL,
	Current_Beacon__c decimal(18,2) NULL,
	Returned_Items_12_Months__c decimal(18,2) NULL,
	Annual_income__c decimal(18,2) NULL,
	Legal_Action_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Encumbrance_Balance__c decimal(15,2) NULL,
	Commitment_Issue_Date__c datetime2(0) NULL,
	Commitment_Return_Date__c datetime2(0) NULL,
	Mat_Date_15__c datetime2(0) NULL,
	Mat_Date_20__c datetime2(0) NULL,
	Mat_Date_25__c datetime2(0) NULL,
	Funding_Partner__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date__c datetime2(0) NULL,
	Centum_Commission__c decimal(18,2) NULL,
	Property_Address_Blacklisted__c bit NULL,
	Lendesk_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AI_Prediction_Score__c decimal(18,2) NULL,
	Combined_LTV__c decimal(18,2) NULL,
	Doc_Stage__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Current_Balance__c decimal(18,2) NULL,
	Premium__c decimal(18,2) NULL,
	PI_Payment__c decimal(14,2) NULL,
	Buydown_Adjustment__c decimal(14,2) NULL,
	Base_Rate__c decimal(18,2) NULL,
	Total_Payment_Amount__c decimal(18,2) NULL,
	Benchmark_Rate__c decimal(18,3) NULL,
	Interest_Portion_of_Payment__c decimal(18,2) NULL,
	Opening_Balance__c decimal(17,2) NULL,
	Interest__c decimal(18,2) NULL,
	Principal__c decimal(18,2) NULL,
	Principal_Balance__c decimal(18,2) NULL,
	Funding_Partner_Notes__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_payment_contract__c decimal(18,2) NULL,
	Allow_Renewal_Email__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Non_Subject_Property_Rental_Income__c decimal(18,2) NULL,
	Total_Monthly_Payments_of_Liabilities__c decimal(18,2) NULL,
	Contract_GDS__c decimal(18,2) NULL,
	Contract_TDS__c decimal(18,2) NULL,
	Monthly_payment_qualifying__c decimal(18,2) NULL,
	Qualifying_GDS__c decimal(18,2) NULL,
	Qualifying_Rate__c decimal(18,3) NULL,
	Qualifying_TDS__c decimal(18,2) NULL,
	PBC_Email_Distro__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Type_Pricings__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	PBC_Approved_Date__c datetime2(0) NULL,
	Purchase_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Request_ILR_Update__c bit NULL,
	Finder_Fee_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Finder_Fee_Percent_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Next_Payment__c datetime2(0) NULL,
	Request_Date__c datetime2(0) NULL,
	Annual_Income_Primary__c decimal(18,2) NULL,
	Loan_Amount_Required_Primary__c decimal(18,2) NULL,
	Outstanding_Debts_Primary__c decimal(18,2) NULL,
	Annual_Income_Co_App__c decimal(18,2) NULL,
	Loan_Amount_Required_Co_App__c decimal(18,2) NULL,
	Outstanding_Debts_Co_App__c decimal(18,2) NULL,
	Appraisal_Value_at_Renewal_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Primary_Writeb__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Primary_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Primary_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Annual_Income_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Amount_Required_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Outstanding_Debts_Co_App_Writeback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Renewal_Premium_Fee__c decimal(18,2) NULL,
	Chosen_Rate__c decimal(18,2) NULL,
	Negative_Amortization_Formula__c decimal(18,2) NULL,
	PST_on_Insurance_Premium__c decimal(18,2) NULL,
	Broker_Referral_Fee_Currency__c decimal(18,2) NULL,
	Broker_Referral_Fee_Percent__c decimal(18,2) NULL,
	Total_Fee_del__c decimal(18,2) NULL,
	SUMPRODUCT_Approv_Mort_AND_Annual_Rate__c decimal(18,2) NULL,
	SUMPRODUCT_Approv_Mort_AND_Lender_Fee__c decimal(18,2) NULL,
	Origination_Fee_del__c decimal(18,2) NULL,
	Total_Funding_Amount_del__c decimal(18,2) NULL,
	Duration_Between_Closing_and_Funded__c decimal(18,0) NULL,
	AML_Exception_Comment__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	AML_Exception__c bit NULL,
	WC_Action_Required__c bit NULL,
	Short_Term_Renewal__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Can_you_tell_us_who_the_lender_is__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Phone__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Request_a_discharge__c bit NULL,
	What_is_the_term_in_months_you_require__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Client_Form_Expiration_Date__c datetime2(0) NULL,
	Discharge_Statement_Requested__c bit NULL,
	PoS_Start_Date__c datetime2(0) NULL,
	PoS_Start_Date_Age_In_Days__c decimal(18,0) NULL,
	Possession_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Deal_Pending_Reason__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Working_Agent__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Licence_Class__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Mortgage_Processing_Fee__c decimal(18,2) NULL,
	Mortgage_Processing_FeeDV__c decimal(18,2) NULL,
	Net_Lender_Fee__c decimal(18,2) NULL,
	QBO_QB_Error_Message__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_QB_Sync_Date__c datetime2(0) NULL,
	QBO_QuickBooks_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	QBO_Synced__c bit NULL,
	Trust_Ledger_QB_ID__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Test__c decimal(18,2) NULL,
	X1_Day_Before_Maturity__c datetime2(0) NULL,
	Deal_Pending__c bit NULL,
	X50_Lender_Fee__c decimal(18,2) NULL,
	Corporation_Deal__c bit NULL,
	Manual_AML_Run_Flag__c bit NULL,
	Prediction_Score__c decimal(18,2) NULL,
	Likely_to_Fund__c decimal(18,2) NULL,
	EFT_File_Date_Phase_2__c datetime2(0) NULL,
	Sold_Price__c decimal(18,2) NULL,
	Sold_Firm_Date__c datetime2(0) NULL,
	PoS_Closing_Date__c datetime2(0) NULL,
	Sold_Conditional_Date__c datetime2(0) NULL,
	Number_of_Offers__c decimal(18,0) NULL,
	Purchase_Score__c decimal(18,2) NULL,
	Refi_Score__c decimal(18,2) NULL,
	Funded_Date_Credit_Report_Age__c datetime2(0) NULL,
	Funded_Date_Today__c decimal(18,2) NULL,
	ACRA_FD_T__c decimal(18,0) NULL,
	Legal_Fee__c decimal(18,2) NULL
);


-- cal_bi_analytics_dev.dbo.stg_sf_opportunity_full definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity_full;

CREATE TABLE cal_bi_analytics_dev.dbo.stg_sf_opportunity_full (
	Id nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Name nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_from_Origination__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Approved_Mortgage__c decimal(18,2) NULL,
	CreatedDate datetime2(0) NULL,
	LastModifiedDate datetime2(0) NULL,
	Created_Date__c datetime2(0) NULL,
	CloseDate datetime2(0) NULL,
	Funding_Date__c datetime2(0) NULL,
	Funded_Date__c datetime2(0) NULL,
	Interest_Adjustment_Date__c datetime2(0) NULL,
	First_Payment_Date__c datetime2(0) NULL,
	Maturity_Date__c datetime2(0) NULL,
	New_Maturity_Date_on_Renewal__c datetime2(0) NULL,
	Repayment_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Term_In_Months__c decimal(3,0) NULL,
	Amortization_Period__c decimal(3,0) NULL,
	Annual_Percentage_Rate__c decimal(18,4) NULL,
	Chosen_Rate_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Note_Rate__c decimal(18,2) NULL,
	Requested_Term_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Monthly_Payment__c decimal(18,2) NULL,
	Payment_Frequency__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Primary_Credit_Score__c decimal(18,0) NULL,
	Credit_Report_Date_del__c datetime2(0) NULL,
	Approved_LTV__c decimal(18,2) NULL,
	Appraised_Value__c decimal(18,2) NULL,
	Appraisal_Date__c datetime2(0) NULL,
	Dwelling_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Tenure__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Occupancy_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Position__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Province__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_City__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Property_Zip_Code__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Updated_Mortgage_Status__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Possession_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	BoC_Overnight_Rate__c decimal(18,3) NULL,
	StageName nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Appraisal_Value_at_Renewal__c decimal(18,2) NULL,
	Renewal_Appraisal_Date__c datetime2(0) NULL,
	Lender__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	TMO_Account_Number_New__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renew_Amortization_Total_Interest_Pay__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Remaining_Amortization__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Negative_Amortization_Formula__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Compounded_Periods__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Number_of_Payments__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Loan_Type__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Purpose__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Renewed_Date__c datetime2 NULL,
	Existing_Mortgage_Holder__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_2__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Existing_Mortgage_Holder_3__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback_Monthly_Calc__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Holdback_Spread__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Pre_Paid_Holdback__c nvarchar(MAX) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Corporation_Deal__c nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Payment_Method__c varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	Lender_Fee_Amount_Paid__c decimal(38,18) NULL,
	Pricing_Option_Lender_Fee__c decimal(38,18) NULL,
	Lender_Fee_Dollar_Value__c decimal(38,18) NULL,
	Lender_Fee_Deferment__c decimal(38,18) NULL,
	Custom_Lender_Fee_Deferment_Amount__c decimal(38,18) NULL,
	PoS_Status__c varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	POS_Possession_Date__c datetime2 NULL,
	Listed_Price__c decimal(38,18) NULL,
	Listed_On__c datetime2 NULL,
	Sold_Firm_Date__c datetime2 NULL,
	Sold_Price__c decimal(38,18) NULL,
	PoS_Closing_Date__c datetime2 NULL,
	Total_Interest_Due__c decimal(38,18) NULL,
	Grand_Total__c decimal(38,18) NULL,
	Appraised_Value_PoS__c decimal(38,18) NULL
);


-- cal_bi_analytics_dev.dbo.sysdiagrams definition

-- Drop table

-- DROP TABLE cal_bi_analytics_dev.dbo.sysdiagrams;

CREATE TABLE cal_bi_analytics_dev.dbo.sysdiagrams (
	name sysname COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	principal_id int NOT NULL,
	diagram_id int IDENTITY(1,1) NOT NULL,
	version int NULL,
	definition varbinary(MAX) NULL,
	CONSTRAINT PK__sysdiagr__C2B05B61F4A44A65 PRIMARY KEY (diagram_id),
	CONSTRAINT UK_principal_name UNIQUE (principal_id,name)
);


-- dbo.dpv_news_letter source

ALTER VIEW dpv_news_letter
AS
WITH MonthEnds AS (
    SELECT 
        MAX(dayrk) AS dayrk
    FROM dpv_smart_view
    WHERE FORMAT(CAST(CAST(dayrk AS CHAR(8)) AS DATE), 'yyyyMM') < FORMAT(GETDATE(), 'yyyyMM')
    GROUP BY FORMAT(CAST(CAST(dayrk AS CHAR(8)) AS DATE), 'yyyyMM')
)
SELECT sv.*,CASE 
		WHEN CHARINDEX('CNSTCTN', sv.borrowername) = 0 THEN 
				(ISNULL(sv.loanbalance, 0) + ISNULL(sv.aggregateseniorliens, 0)) / sv.aggregateappraisedvalue
				ELSE ISNULL(sv.propertyltv, 0) / 100
			END
	 AS CurrentLTV 
FROM MonthEnds vme
INNER JOIN dpv_smart_view sv ON vme.dayrk = sv.DayRk
WHERE sv.BeaconScore1 NOT IN('I','N','R','N/A') AND sv.BeaconScore2 NOT IN('R','N','N/A') AND sv.BeaconScore3 NOT IN('R','N','N/A')
-- AND vme.dayrk = '20250228' AND account IN('104584','109564','111321','103065');


-- dbo.dpv_rmbs_remittance_report source

ALTER VIEW dpv_rmbs_remittance_report
AS
SELECT DISTINCT
	t1.TransactionDate AS TransactionDate,
	t2.LoanNumber as LoanNumber,
	t1.ServicerName,
	t1.Series,
	t1.TransactionAmount,
	t1.TransactionType,
	Cash,
	PrincipalFlag,
	t2.CloseDate
FROM
(
SELECT loan_account,
	   date_rec AS TransactionDate,
	   'CAL' AS ServicerName,
	   'CAL1' AS Series,
	   To_Principal AS TransactionAmount,
	   'Principal' AS TransactionType,
	   '1' AS Cash,
	   '1' as PrincipalFlag
FROM vw_fct_loan_History
where To_Principal is not null
UNION
SELECT loan_account,
	   date_rec AS TransactionDate,
	   'CAL' AS ServicerName,
	   'CAL1' AS Series,
	   To_Interest as TransactionAmount,
	   'Interest' AS TransactionType,
	   '1' AS Cash,
	   '0' as PrincipalFlag
FROM vw_fct_loan_History
where To_Interest is not null
UNION
SELECT loan_account,
	   date_rec AS TransactionDate,
	   'CAL' AS ServicerName,
	   'CAL1' AS Series,
	   To_Interest as TransactionAmount,
	   NULL AS TransactionType,
	   '1' AS Cash,
	   NULL as PrincipalFlag
FROM vw_fct_loan_History
where To_Interest IS NULL AND To_Principal IS NULL
) t1
RIGHT OUTER JOIN dpv_rmbs_report t2 ON t1.loan_account = t2.LoanNumber;


-- dbo.dpv_rmbs_report source

ALTER VIEW [dbo].[dpv_rmbs_report]
AS
SELECT a.* FROM (
SELECT     
  --t1.day_rk AS DayRk,    
  --t1.purchase_rk AS PurchaseRk,    
  --t1.loan_rk AS LoanRk,
  t3.dayrk AS DayRk,
  ROW_NUMBER() OVER (PARTITION BY t3.account, LEFT(t3.DayRK,6) ORDER BY t3.DayRK DESC) AS month_rank,
  t3.account AS LoanNumber,
  -- t2.account_no AS LoanNumber,    
  'CAL' AS ServicerName,    
  'CAL1' AS Series,    
  t3.BorrowerName AS BorrowerName,    
  t2.account_no_origination AS TMOAccountNumberfromOrigination,    
  t2.approved_mortgage_formula AS OriginalPrincipalBalance,    
  t3.principalbalance AS RemainingPrincipalBalance,  
  t2.intrerest_adjustment_date AS InterestAdjustmentDate,    
  t2.first_payment_date AS FirstPaymentDate,    
  t2.purchase_date AS PurchaseDate,    
  t2.close_date AS CloseDate,    
  t2.funding_date AS AdvanceDate,
  t2.funded_Date AS FundedDate,    
  t2.maturity_date AS MaturityDate,
  t2.new_maturity_date_on_renewal AS NewMaturityDateOnRenewal,    
  CASE WHEN t2.status = 'Renewed' THEN t2.new_maturity_date_on_renewal END AS RenewalDate,    
  -- t2.repayment_type AS RepaymentType,    
  CASE WHEN t2.repayment_type = 'Interest Only' THEN 1 ELSE 0 END AS InterestOnly,    
  t2.term_in_months AS OriginalTermMonths,    
  t2.amortization_period AS OriginalAmortizationMonths,    
  t2.annual_interest_rate AS OriginalRate,    
  t2.chosen_rate_type AS OriginalRateType,    
  t2.note_rate AS SFCurrentRate,    
  t3.NoteRate AS TMOCurrentRate,
  t2.chosen_rate_type AS CurrentRateType,    
  t2.requested_term_type AS PrepayPenaltyType,    
  t3.ApplyToPNL AS PaymentAmount,-- Changed to TMO as Jacky confirmed on Apr-08
  -- t2.payment_frequency AS PaymentFrequency,    
  CASE WHEN t2.payment_frequency = 'Monthly' THEN 12    
    -- WHEN t2.payment_frequency = 'Weekly' THEN 52     
    END PaymentFrequency,    
  t3.InterestPaidTo AS PaidToDate,  
  t3.NextPayment AS NextPaymentDate,    
  t2.primary_applicant_credit_score AS OriginalBeacon,    
  t2.applicant_credit_report_date AS OriginalBeaconDate,    
  t2.primary_applicant_credit_score AS CurrentBeacon,    
  t2.applicant_credit_report_date AS CurrentBeaconDate,    
  t2.approved_ltv AS OriginalLTV,    
  t2.appraised_value AS OriginalAppraisalAmount,    
  t2.appraisal_date AS OriginalAppraisalDate,    
  CASE WHEN t2.Status = 'Renewed' THEN t2.appraisal_value_at_renewal ELSE t2.appraised_value END CurrentAppraisalAmount,    
  CASE WHEN t2.Status = 'Renewed' THEN t2.renewal_appraisal_date ELSE t2.appraisal_date END CurrentAppraisalDate, 
  t3.LoanBalance AS LoanBalance,    
  t3.PropertyLTV AS PropertyLTV,    
  t3.AggregateSeniorLiens AS AggregateSeniorLiens,    
  t3.AggregateAppraisedValue AS AggregateAppraisedValue,    
  t3.GDSRQual AS GDS,    
  t3.TDSRQual AS TDS,    
  t2.dwelling_type AS PropertyType,    
  t2.property_tenure AS PropertyTenure, -- Changed to salesforce on Apr-08
  t2.property_occupancy_type AS OccupancyType,    
  t2.type AS LoanPurpose,    
  -- t2.loan_position AS LienRank,    
  CASE WHEN t2.loan_position  = 'First' THEN 1    
    WHEN t2.loan_position  = 'Second' THEN 2    
    WHEN t2.loan_position  = 'Third' THEN 3    
    ELSE NULL    
     END AS LienRank,    
  NULL AS IncomeType,    
  t2.province AS Province,    
  t2.property_city AS City,    
  t2.property_postal_code AS PostalCode,    
  t3.DaysLate AS ArrearsDays,    
  -- NULL AS ArrearsPrincipalAndInterest,    
  t3.ApplyToPNL,    
  --CASE WHEN t2.repayment_type = 'Principal & Interest' THEN t3.ApplyToPNL*t3.DaysLate    
  --  WHEN t2.repayment_type = 'Interest Only' THEN ((t3.PrincipalBalance*t3.NoteRate)/365)*t3.DaysLate     
  --END AS ArrearsPrincipalAndInterest,    
  -- t2.updated_mortgage_status AS UpdatedMortgageStatus,    
  CASE WHEN t2.updated_mortgage_status = 'Power of Sale' THEN 1 ELSE 0 END Legal,    
  -- t2.possession_type AS REO,
  CASE WHEN t2.possession_type IS NOT NULL THEN 1 ELSE 0 END AS REO,    
  t2.bank_of_canada_overnight_rate AS ARMIndexName,    
  t3.InterestRate AS ARMFloor,    
  t2.status AS Status,
  t2.lender AS Lender,
  t4.payment_history AS [12MonthPayHistory],
  t3.AccountStatus AS AccountStatus
FROM   
-- fct_opportunity t1
-- vw_fct_opportunity_monthly  t1
dpv_smart_view t3
LEFT OUTER JOIN 
(SELECT * FROM dim_opportunity WHERE valid_flag= 'Y') t2 -- ON t1.loan_rk = t2.loan_rk AND t1.purchase_rk = t2.purchase_rk
 ON t2.account_no = t3.Account
LEFT OUTER JOIN vw_account_payment_history_rolling_one_year t4 ON t4.account_no = t2.account_no AND t4.reporting_month = LEFT(t3.DayRk,6)
-- WHERE t2.valid_flag = 'Y' 
)a WHERE a.month_rank = 1;


-- dbo.dpv_rmbs_report_old source

ALTER VIEW [dbo].[dpv_rmbs_report_old]      
AS      
/*      
        
  Objective: Business view for RMBS report      
  Created By: Shabbir Pinjari      
  Created On: 17-Jan-2025      
  Version No: 1.0      
        
  #### Change History #####      
  Revision By:      
  Revision On:      
  Change Details:      
        
*/      
SELECT       
  t1.day_rk AS DayRk,      
  t1.purchase_rk AS PurchaseRk,      
  t1.loan_rk AS LoanRk,      
  t2.account_no AS LoanNumber,      
  'CAL' AS ServicerName,      
  'CAL1' AS Series,      
  t2.borrower_name AS BorrowerName,      
  t2.account_no_origination AS TMOAccountNumberfromOrigination,      
  t2.approved_mortgage_formula AS OriginalPrincipalBalance,      
  t3.principalbalance AS RemainingPrincipalBalance,    
  t2.intrerest_adjustment_date AS InterestAdjustmentDate,      
  t2.first_payment_date AS FirstPaymentDate,      
  t2.purchase_date AS PurchaseDate,      
  t2.close_date AS CloseDate,      
  t2.funding_date AS AdvanceDate,      
  t2.funded_Date AS FundedDate,      
  t2.maturity_date AS MaturityDate,      
  t2.new_maturity_date_on_renewal AS NewMaturityDateOnRenewal,      
  CASE WHEN t2.status = 'Renewed' THEN t2.new_maturity_date_on_renewal END AS RenewalDate,      
  -- t2.repayment_type AS RepaymentType,      
  CASE WHEN t2.repayment_type = 'Interest Only' THEN 1 ELSE 0 END AS InterestOnly,      
  t2.term_in_months AS OriginalTermMonths,      
  t2.amortization_period AS OriginalAmortizationMonths,      
  t2.annual_interest_rate AS OriginalRate,      
  t2.chosen_rate_type AS OriginalRateType,      
  t2.note_rate AS SFCurrentRate,      
  t3.NoteRate AS TMOCurrentRate,      
  t2.chosen_rate_type AS CurrentRateType,      
  t2.requested_term_type AS PrepayPenaltyType,      
  t2.payment_amount AS PaymentAmount,      
  -- t2.payment_frequency AS PaymentFrequency,      
  CASE WHEN t2.payment_frequency = 'Monthly' THEN 12      
    -- WHEN t2.payment_frequency = 'Weekly' THEN 52       
    END PaymentFrequency,      
  t3.InterestPaidTo AS PaidToDate,      
  t3.NextPayment AS NextPaymentDate,      
  t2.primary_applicant_credit_score AS OriginalBeacon,      
  t2.applicant_credit_report_date AS OriginalBeaconDate,      
  t2.primary_applicant_credit_score AS CurrentBeacon,      
  t2.applicant_credit_report_date AS CurrentBeaconDate,      
  t2.approved_ltv AS OriginalLTV,      
  t2.appraised_value AS OriginalAppraisalAmount,      
  t2.appraisal_date AS OriginalAppraisalDate,      
  CASE WHEN t2.Status = 'Renewed' THEN t2.appraisal_value_at_renewal ELSE t2.appraised_value END CurrentAppraisalAmount,      
  CASE WHEN t2.Status = 'Renewed' THEN t2.renewal_appraisal_date ELSE t2.appraisal_date END CurrentAppraisalDate,      
  t3.LoanBalance AS LoanBalance,      
  t3.PropertyLTV AS PropertyLTV,      
  t3.AggregateSeniorLiens AS AggregateSeniorLiens,      
  t3.AggregateAppraisedValue AS AggregateAppraisedValue,      
  t3.GDSRQual AS GDS,      
  t3.TDSRQual AS TDS,      
  t2.dwelling_type AS PropertyType,      
  t3.propertytype AS PropertyTenure,      
  t3.PropertyOccupancy AS OccupancyType,      
  t2.type AS LoanPurpose,      
  -- t2.loan_position AS LienRank,      
  CASE WHEN t2.loan_position  = 'First' THEN 1      
    WHEN t2.loan_position  = 'Second' THEN 2      
    WHEN t2.loan_position  = 'Third' THEN 3      
    ELSE NULL      
     END AS LienRank,      
  NULL AS IncomeType,      
  t2.province AS Province,      
  t2.property_city AS City,      
  t2.property_postal_code AS PostalCode,      
  t3.DaysLate AS ArrearsDays,      
  -- NULL AS ArrearsPrincipalAndInterest,      
  t3.ApplyToPNL,      
  --CASE WHEN t2.repayment_type = 'Principal & Interest' THEN t3.ApplyToPNL*t3.DaysLate      
  --  WHEN t2.repayment_type = 'Interest Only' THEN ((t3.PrincipalBalance*t3.NoteRate)/365)*t3.DaysLate       
  --END AS ArrearsPrincipalAndInterest,      
  -- t2.updated_mortgage_status AS UpdatedMortgageStatus,      
  CASE WHEN t2.updated_mortgage_status = 'Power of Sale' THEN 1 ELSE 0 END Legal,      
  -- t2.possession_type AS REO,      
  CASE WHEN t2.possession_type IS NOT NULL THEN 1 ELSE 0 END AS REO,      
  t2.bank_of_canada_overnight_rate AS ARMIndexName,      
  t3.InterestRate AS ARMFloor,      
  t2.status AS Status,      
  t2.lender AS Lender,  
  t4.payment_history AS [12MonthPayHistory]  
FROM     
--fct_opportunity t1      
vw_fct_opportunity_monthly  t1  
LEFT OUTER JOIN dim_opportunity t2 ON t1.loan_rk = t2.loan_rk AND t1.purchase_rk = t2.purchase_rk      
LEFT OUTER JOIN dpv_smart_view t3 ON t1.day_rk = t3.DayRk AND t1.loan_rk = t3.LoanRk   
LEFT OUTER JOIN vw_account_payment_history t4 ON t4.account_no = t2.account_no  
-- WHERE t2.close_date BETWEEN '2024-12-01' AND '2024-12-31'      
-- WHERE t2.purchase_date BETWEEN '2024-12-01' AND '2024-12-31'      
-- WHERE t2.Account_no IN('10100','14299','13972')      
-- WHERE t1.day_rk = '20250224' AND t2.account_no = '104266'      
-- ) a WHERE a.ArrearsPrincipalAndInterest IS NOT NULL;


-- dbo.dpv_rmbs_sf_report source

ALTER VIEW [dbo].[dpv_rmbs_sf_report]
AS
SELECT     
  --t1.day_rk AS DayRk,    
  --t1.purchase_rk AS PurchaseRk,    
  --t1.loan_rk AS LoanRk,    
  t2.account_no AS LoanNumber,    
  'CAL' AS ServicerName,    
  'CAL1' AS Series,    
  t2.borrower_name AS BorrowerName,    
  t2.account_no_origination AS TMOAccountNumberfromOrigination,    
  t2.approved_mortgage_formula AS OriginalPrincipalBalance,    
  -- t3.principalbalance AS RemainingPrincipalBalance,  
  t2.intrerest_adjustment_date AS InterestAdjustmentDate,    
  t2.first_payment_date AS FirstPaymentDate,    
  t2.purchase_date AS PurchaseDate,    
  t2.close_date AS CloseDate,
  CONVERT(INT,FORMAT(t2.close_date,'yyyyMMdd')) AS SF_CloseDate,
  t2.funding_date AS AdvanceDate,    
  t2.funded_Date AS FundedDate,    
  t2.maturity_date AS MaturityDate,    
  t2.new_maturity_date_on_renewal AS NewMaturityDateOnRenewal,    
  CASE WHEN t2.status = 'Renewed' THEN t2.new_maturity_date_on_renewal END AS RenewalDate,    
  -- t2.repayment_type AS RepaymentType,    
  CASE WHEN t2.repayment_type = 'Interest Only' THEN 1 ELSE 0 END AS InterestOnly,    
  t2.term_in_months AS OriginalTermMonths,    
  t2.amortization_period AS OriginalAmortizationMonths,    
  t2.annual_interest_rate AS OriginalRate,    
  t2.chosen_rate_type AS OriginalRateType,    
  t2.note_rate AS SFCurrentRate,    
  -- t3.NoteRate AS TMOCurrentRate,    
  t2.chosen_rate_type AS CurrentRateType,    
  t2.requested_term_type AS PrepayPenaltyType,    
  t2.payment_amount AS PaymentAmount,    
  -- t2.payment_frequency AS PaymentFrequency,    
  CASE WHEN t2.payment_frequency = 'Monthly' THEN 12    
    -- WHEN t2.payment_frequency = 'Weekly' THEN 52     
    END PaymentFrequency,    
  --t3.InterestPaidTo AS PaidToDate,    
  --t3.NextPayment AS NextPaymentDate,    
  t2.primary_applicant_credit_score AS OriginalBeacon,    
  t2.applicant_credit_report_date AS OriginalBeaconDate,    
  t2.primary_applicant_credit_score AS CurrentBeacon,    
  t2.applicant_credit_report_date AS CurrentBeaconDate,    
  t2.approved_ltv AS OriginalLTV,    
  t2.appraised_value AS OriginalAppraisalAmount,    
  t2.appraisal_date AS OriginalAppraisalDate,    
  CASE WHEN t2.Status = 'Renewed' THEN t2.appraisal_value_at_renewal ELSE t2.appraised_value END CurrentAppraisalAmount,    
  CASE WHEN t2.Status = 'Renewed' THEN t2.renewal_appraisal_date ELSE t2.appraisal_date END CurrentAppraisalDate,    
  --t3.LoanBalance AS LoanBalance,    
  --t3.PropertyLTV AS PropertyLTV,    
  --t3.AggregateSeniorLiens AS AggregateSeniorLiens,    
  --t3.AggregateAppraisedValue AS AggregateAppraisedValue,    
  --t3.GDSRQual AS GDS,    
  --t3.TDSRQual AS TDS,    
  t2.dwelling_type AS PropertyType,    
  --t3.propertytype AS PropertyTenure,    
  --t3.PropertyOccupancy AS OccupancyType,    
  t2.type AS LoanPurpose,    
  -- t2.loan_position AS LienRank,    
  CASE WHEN t2.loan_position  = 'First' THEN 1    
    WHEN t2.loan_position  = 'Second' THEN 2    
    WHEN t2.loan_position  = 'Third' THEN 3    
    ELSE NULL    
     END AS LienRank,    
  NULL AS IncomeType,    
  t2.province AS Province,    
  t2.property_city AS City,    
  t2.property_postal_code AS PostalCode,    
  --t3.DaysLate AS ArrearsDays,    
  -- NULL AS ArrearsPrincipalAndInterest,    
  --t3.ApplyToPNL,    
  --CASE WHEN t2.repayment_type = 'Principal & Interest' THEN t3.ApplyToPNL*t3.DaysLate    
  --  WHEN t2.repayment_type = 'Interest Only' THEN ((t3.PrincipalBalance*t3.NoteRate)/365)*t3.DaysLate     
  --END AS ArrearsPrincipalAndInterest,    
  -- t2.updated_mortgage_status AS UpdatedMortgageStatus,    
  CASE WHEN t2.updated_mortgage_status = 'Power of Sale' THEN 1 ELSE 0 END Legal,    
  -- t2.possession_type AS REO,    
  CASE WHEN t2.possession_type IS NOT NULL THEN 1 ELSE 0 END AS REO,    
  t2.bank_of_canada_overnight_rate AS ARMIndexName,    
  --t3.InterestRate AS ARMFloor,    
  t2.status AS Status,
  t2.lender AS Lender
  --t4.payment_history AS [12MonthPayHistory]
FROM   
--fct_opportunity t1    
-- vw_fct_opportunity_monthly  t1
dim_opportunity t2
WHERE t2.valid_flag = 'Y' AND t2.status IN('Funded','Renewed','Auto-Renewed') 
AND t2.lender IN('First Mortgage Holdings Inc','Joint – FMLP / MCC Mortgage Holdings Inc.','MCC Mortgage Holdings Inc')
--LEFT OUTER JOIN dpv_smart_view t3 ON t1.day_rk = t3.DayRk AND t1.loan_rk = t3.LoanRk 
--LEFT OUTER JOIN vw_account_payment_history t4 ON t4.account_no = t2.account_no;


-- dbo.dpv_smart_view source

ALTER VIEW [dbo].[dpv_smart_view]
AS
/*
  
  Objective: Business view for news letter data as per total sheet
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By: Shabbir Pinjari
  Revision On: 25-Feb-2025
  Change Details: Added column lender rate from lender portfolio
				: 28-Mar-2025, Taking borrower_name from lender portfolio
  
*/
SELECT 
	 t0.day_rk DayRk
	,t0.loan_rk AS LoanRk
	,t1.loan_rec_id AS LoanRecId
	,t1.los_loan_rec_id AS LosLoanRecId
	,t1.borrower_rec_id AS BorrowerRecId
	,t1.account_no AS Account
	,t1.ach AS ACH
	,t1.hold AS Hold
	,t3.borrower_name AS BorrowerName 
	,t1.by_last_name AS ByLastName
	,t1.first_name AS FirstName
	,t1.mi AS MI
	,t1.last_name AS LastName
	,t1.intrest_paid_to AS InterestPaidTo
	,t1.payment_due_date AS PaymentDueDate
	,t1.payment_frequency AS PaymentFrequency
	,t1.regular_payment AS RegularPayment
	,t1.apply_to_pi AS ApplyToPNL
	,t1.apply_to_reserve AS ApplyToReserve
	,t1.apply_to_impound AS ApplyToImpound
	,t1.apply_to_other AS ApplyToOther
	,t1.maturity_date AS MaturityDate
	,t3.TermLeft
	,t3.DaysLate
	,t1.paid_off_date AS PaidOffDate
	,t1.note_rate AS NoteRate
	,t1.sold_rate AS SoldRate
	,t1.loan_priority AS LoanPriority
	,t1.loan_priority_desc AS LoanPriorityDescription
	,t1.principal_balance AS PrincipalBalance
	,t1.trust_balance AS TrustBalance
	,t1.impound_balance AS ImpoundBalance
	,t1.reserve_balance AS ReserveBalance
	,t1.unpaid_late_charges AS UnpaidLateCharges
	,t1.unpaid_charges AS UnpaidCharges
	,t1.unpaid_intrest AS UnpaidInterest
	,t1.street AS Street
	,t1.city AS City
	,t1.STATE AS State
	,t1.zip_code AS ZipCode
	,t1.home_phone AS HomePhone
	,t1.work_phone AS WorkPhone
	,t1.cell_phone AS CellPhone
	,t1.fax_phone AS FaxPhone
	,t1.tin AS TIN
	,t1.loan_type AS LoanType
	,t1.rate_type AS RateType
	,t1.email_id AS MailAddress
	,t1.property_description AS PropertyDescription
	,t1.property_street AS PropertyStreet
	,t1.property_city AS PropertyCity
	,t1.property_state AS PropertyState
	,t1.property_zip AS PropertyZip
	,t1.property_country AS PropertyCounty
	,t1.property_type AS PropertyType
	,t1.property_occupancy AS PropertyOccupancy
	,t1.property_ltv AS PropertyLTV
	,t1.property_apn AS PropertyAPN
	,t1.aggregate_appraised_value AS AggregateAppraisedValue
	,t1.calculated_ltv AS CalculatedLTV
	,t1.closing_date AS ClosingDate
	,t1.first_payment_date AS FirstPaymentDate
	,t1.purhcase_date AS PurchaseDate
	,t1.booking_date AS BookingDate
	,t1.next_revision AS NextRevision
	,t1.original_balance_amt AS OriginalBalance
	,t1.unearned_discount AS UnearnedDiscount
	,t1.loan_code AS LoanCode
	,t1.appraisal_date AS AppraisalDate
	,t1.aggregate_senior_liens AS AggregateSeniorLiens
	,t1.loan_officer AS LoanOfficer
	,t1.dob AS DOB
	-- t1.loan_status, AS 
	,t1.loan_timestamp AS LoanTS
	,t1.account_status AS AccountStatus
	,t1.region_rk AS RegtionRk
	,t1.region_name AS RegionName
	,t2.loan_custom_info_rk AS LoanCustomInfoRk
	-- t2.account_no, AS 
	,t2.adhoc_a AS AdhocA
	,t2.account_name AS AccountName
	,t2.accrued_interest AS AccruedInterest
	,t2.actual_ltv AS ActualLTV
	,t2.administration_fee_renewal AS AdministrationFeerenewal
	,t2.administration_renewal_fee AS AdministrationRenewalFee
	,t2.administrative_fees AS AdministrativeFees
	,t2.amortization_term_in_years AS AmortizationTerminYears
	,t2.application_purpose AS ApplicationPurpose
	,t2.arm_floor AS ARMFLOOR
	,t2.arrears_balance AS ArrearsBalance
	,t2.authorized_amount AS AuthorizedAmount
	,t2.adhoc_b AS AdhocB
	,t2.balance_of_auto_renewal_lf AS BalanceofAutoRenewalLF
	,t2.balance_of_renewal_lender_fee AS BalanceofRenewalLenderFee
	,t2.bank_of_canada_overnight_rate AS BankOfCanadaOvernightRate
	,t2.beacon_score_1 AS BeaconScore1
	,t2.beacon_score_2 AS BeaconScore2
	,t2.beacon_score_3 AS BeaconScore3
	,t2.adhoc_c AS AdhocC
	,t2.calculated_gds AS CalculatedGDS
	,t2.calculated_tds AS CalculatedTDS
	,t2.cash_back AS Cashback
	,t2.chosen_rate_type AS ChosenRateType
	,t2.coborrower_1 AS CoBorrower1
	,t2.coborrower_2 AS CoBorrower2
	,t2.coborrower_3 AS CoBorrower3
	,t2.collection_cost AS CollectionCost
	,t2.daily_prorated_lender_fee AS DailyProRatedLenderFee
	,t2.daily_prorated_prepayment_costs AS DailyProRatedPrepaymentCosts
	,t2.days_from_letter AS DaysfromLetter
	,t2.days_in_arrears AS DaysinArrears
	,t2.default_legal_proceedings_fee AS DefaultLegalProceedingsFee
	,t2.discharge_administration_fee AS DischargeAdministrationFee
	,t2.discharge_coding AS DischargeCoding
	,t2.discharge_mortgage_statement_fee AS DischargeMortgageStatementFee
	,t2.discharge_of_mortgage_fee AS DischargeofMortgageFee
	,t2.discharging_prinicpal AS DischargingPrinicpal
	,t2.effective_date AS EffectiveDate
	,t2.final_discharge AS FinalDischarge
	,t2.first_loan_number AS FirstLoanNumber
	,t2.first_payment_date AS FirstPaymentDateCustom
	,t2.fmlp AS FMLP
	,t2.funding_partner AS FundingPartner
	,t2.funds AS Funds
	,t2.gdsrqual AS GDSRQual
	,t2.income_1 AS Income1
	,t2.income_2 AS Income2
	,t2.income_3 AS Income3
	,t2.income_type_1 AS IncomeType1
	,t2.income_type_2 AS IncomeType2
	,t2.income_type_3 AS IncomeType3
	,t2.installments_in_arrears AS InstallmentsinArrears
	,t2.insurance_policy_certificate AS InsurancePolicyCertificate
	,t2.insurer AS Insurer
	,t2.insurer_policy AS InsurerPolicy
	,t2.interest AS Interest
	,t2.interest_adjustment_date AS InterestAdjustmentDate
	,t2.interest_arrears AS InterestArrears
	,t2.last_contact_date AS LastContactDate
	,t2.late_payment_interest AS LatePaymentInterest
	,t2.law_firm AS LawFirm
	,t2.legal AS Legal
	,t2.legal_action AS LegalAction
	,t2.lender AS Lender
	,t2.lender_fee AS LenderFee
	,t2.lender_fee_in_dollars_original AS LenderFeeinDollarsOriginal
	,t2.lender_fee_in_percent_original AS LenderFeeinPercentOriginal
	,t2.loan_charges_to_mcc AS LoanChargestoMCC
	,t2.loan_purpose AS LoanPurpose
	,t2.loan_status AS LoanStatus
	,t2.loan_type AS LoanTypeCustom
	,t2.main_claim_filed AS MainClaimFiled
	,t2.main_claim_funds_received AS MainClaimFundsReceived
	,t2.main_claim_received AS MainClaimReceived
	,t2.maintenance_of_property AS MaintenanceofProperty
	,t2.mbs_pool_number AS PoolNumber
	,t2.mortgage_agent AS MortgageAgent
	,t2.mortgage_brokerage AS MortgageBrokerage
	,t2.next_payment AS NextPayment
	,t2.next_step AS NextStep
	,t2.nsf_pymt_due_date AS NSFPymtDueDate
	,t2.number_of_units AS NumberofUnits
	,t2.opening_balance AS OpeningBalance
	,t2.original_amortization_months AS OriginalAmortizatioMonths
	,t2.original_appraisal_amount AS OriginalAppraisalAmount
	,t2.original_appraisal_date AS OriginalAppraisalDate
	,t2.original_beacon_date AS OriginalBeaconDate
	,t2.original_ltv AS OriginalLTV
	,t2.original_rate AS OriginalRate
	,t2.original_rate_type AS OriginaRateType
	,t2.original_term_months AS OriginalTermMonths
	,t2.ownership_type AS OwnershipType
	,t2.payment_frequency AS PaymentFrequencyCustom
	,t2.payment_to_be_returned_once_cleared AS PaymentTobeReturnedOnceCleared
	,t2.penalty_in_months AS PenaltyinMonths
	,t2.penalty_interest AS PenaltyInterest
	,t2.per_diem_offset AS PerDiemOffset
	,t2.percent_owned AS PercentOwned
	,t2.period_start_date AS PeriodStartDate
	,t2.person_account_current_income_type AS PersonAccountCurrentIncomeType
	,t2.pool_number AS MBSPoolNumber
	,t2.postage_and_delivery_costs AS PostageandDeliveryCosts
	,t2.posted_date AS PostedDate
	,t2.prepaid_credit_if_applicable AS PrepaidCreditifapplicable
	,t2.prepayment_costs AS PrepaymentCosts
	,t2.prepayment_term_type AS PrePaymentTermType
	,t2.principal AS Principal
	,t2.principal_arrears AS PrincipalArrears
	,t2.principal_balance AS PrincipalBalanceCustom
	,t2.product_name AS ProductName
	,t2.prorated_lender_fee AS ProRatedLenderFee
	,t2.pymt_plan_due_day AS PaymentPlanDueDay
	,t2.pymt_with_nsf AS PaymentWithNSF
	,t2.reason_for_arrears AS ReasonforArrears
	,t2.reduction_to_mortgagor AS ReductiontoMortgagor
	,t2.remaining_amortization AS RemainingAmortization
	,t2.renewal_date AS RenewedDateUserInput
	,t2.renewed_date AS RenewedDate
	,t2.reo AS REO
	,t2.repayment_type AS RepaymentType
	,t2.supp_claim_funds_received AS SuppClaimFundsReceived
	,t2.supp_claim_received AS SuppClaimReceived
	,t2.supplementary_claim_filed AS SupplementaryClaimFiled
	,t2.tdsrqual AS TDSRQual
	,t2.term_in_months AS TermInMonths
	,t2.txn_definition AS TxnDefinition
	,t2.adhoc_type AS AdhocType
	,t2.wire_fee AS WireFee
	,t2.property_type AS PropertyTypeCustom
	,t1.valid_flag AS ValidFlag
	,t2.valid_flag AS CustomInfoValidFlag
	,t1.valid_from_date AS ValidFromDate
	,t1.valid_to_date AS ValidToDate
	,t1.created_on AS CreatedOn
	,t1.created_by AS CreatedBy
	,t1.mdm_checksum AS CheckSum
	,t1.batch_id AS BatchId
	,isnull(t3.loan_balance, 0) LoanBalance
	,isnull(t3.loan_balance, 0) + isnull(t1.unpaid_charges, 0) + isnull(t1.unpaid_intrest, 0) TotalLoanBalance
	,CASE 
		WHEN charindex('CNSTCTN', t3.borrower_name) = 0
			THEN CASE isnull(t1.aggregate_appraised_value, 0)
					WHEN 0
						THEN 0
					ELSE (isnull(t3.loan_balance, 0) + isnull(t1.unpaid_charges, 0) + isnull(t1.unpaid_intrest, 0) + isnull(t1.aggregate_senior_liens, 0)) / t1.aggregate_appraised_value
					END
		ELSE (isnull(t1.property_ltv, 0)) / 100
		END TrueLTV
		,t3.syndicated_percent
		,t3.InterestRate
FROM 
fct_loan t0  
LEFT OUTER JOIN vw_dim_loan t1 ON t0.loan_rk = t1.loan_rk
LEFT OUTER JOIN fct_loan_custom_info t4 ON t0.day_rk = t4.day_rk and t0.loan_rk = T4.loan_rk
LEFT OUTER JOIN vw_dim_loan_custom_info t2 ON t2.loan_custom_info_rk  = t4.loan_custom_info_rk
LEFT OUTER JOIN  (
	SELECT 
		t1.day_rk,
		t1.loan_rk,
		max(t2.lender_rate) as InterestRate
		,max(term_left) AS TermLeft
		,max(days_late) as DaysLate
		,max(borrower_name) borrower_name
		,sum(loan_balance) loan_balance
		,sum(pct_owned) syndicated_percent
	FROM fct_lender_portfolio t1 
	left outer join dim_lender_portfolio t2 on t1.lender_portfolio_rk = t2.lender_portfolio_rk
    GROUP BY t1.day_rk, t1.loan_rk
	) t3 ON t0.day_rk = t3.day_rk and t0.loan_rk = t3.loan_rk;


-- dbo.vw_Region_Mapping source

ALTER VIEW dbo.vw_Region_Mapping
AS
/*

Objective: Get the region id based on the city and loan type(ex: FMLP or MCOCI etc)
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.loan_rk
	,t1.city
	,t2.loan_type
	,ISNULL(t3.region_rk, - 1) region_Rk
FROM (
	SELECT *
	FROM vw_dim_loan
	WHERE valid_flag = 'Y'
	) t1
LEFT OUTER JOIN (
	SELECT loan_rec_id
		,ISNULL(CASE 
				WHEN LEN(fmlp) > 0
					THEN REPLACE(fmlp, '*', '')
				ELSE 'MCOCI'
				END, 'MCOCI') loan_type
	FROM vw_dim_loan_custom_info
	WHERE valid_flag = 'Y'
	) t2 ON t1.loan_rec_id = t2.loan_rec_id
LEFT OUTER JOIN (
	SELECT *
	FROM vw_dim_region
	WHERE valid_flag = 'Y'
	) t3 ON t1.city = t3.city_name
	AND t2.loan_type = t3.loan_type;


-- dbo.vw_account_payment_history source

ALTER view vw_account_payment_history
as
select 
account_no , 
string_Agg(month_rk,',') WITHIN GROUP (ORDER BY month_rk desc) month_rk,
string_Agg(isnull(days_late,'-'),',') WITHIN GROUP (ORDER BY month_rk desc) late_days,
string_Agg(payment_code,',') WITHIN GROUP (ORDER BY month_rk desc) payment_history
from
(
select 
t10.* ,
cast(t11.days_late as varchar(5)) days_late
,isnull(payment_dim.payment_code,'-')  payment_code
from
(
select 
t2.month_rk , t2.day_rk
,t1.account_no
from 
(
select distinct account_no from
vw_account_payment_history_raw
) t1
left outer join 
(
select 
month_rk,max(day_Rk) day_Rk 
from dim_day t1
where w_date <= EOMONTH(DATEADD(month,-1, getdate()))
and w_date >= DATEADD(month,-12, getdate())
group by month_rk
) t2 on 1 = 1
)
t10
left outer join vw_account_payment_history_raw t11 on t10.day_Rk = t11.day_Rk and t10.account_no = t11.account_no
left outer join
( 
select '0' payment_code , -9999 lower_limit , 31 upper_limit
union
select '3' payment_code , 31 lower_limit , 61 upper_limit
union
select '6' payment_code , 61 lower_limit , 91 upper_limit
union
select '9' payment_code , 91 lower_limit , 999999 upper_limit
) payment_dim on isnull(t11.days_late,-10001) >= lower_limit and isnull(t11.days_late, -10001 ) < upper_limit
)
t100
group by account_no 
--where t11.days_late   is not null;


-- dbo.vw_account_payment_history_raw source

ALTER view vw_account_payment_history_raw
as
Select 
t1.month_rk , t1.day_rk, t4.account_no
, max(t4.days_late) days_late
from 
(
select 
month_rk,max(day_Rk) day_Rk 
from dim_day t1
where w_date <= EOMONTH(DATEADD(month,-1, getdate()))
and w_date >= DATEADD(month,-12, getdate())
group by month_rk
) t1
inner join fct_lender_portfolio t2 on t1.day_Rk = t2.day_rk
inner join dim_lender_portfolio t4 on t2.lender_portfolio_rk = t4.lender_portfolio_rk 
group by t1.month_rk , t1.day_rk, t4.account_no;


-- dbo.vw_account_payment_history_rolling_one_year source

ALTER view [dbo].[vw_account_payment_history_rolling_one_year] as
with  
base_month as
(
select 
month_rk base_line_month , max(w_Date) base_line_month_date
from dim_day t1
where w_date <= EOMONTH(DATEADD(month,-1, getdate()))
and w_date >= DATEADD(month,-12, getdate())
group by month_rk
) 
,time_span as
(
select 
t2.base_line_month,month_rk,max(day_Rk) day_rk 
from dim_day t1
inner join base_month t2 on t1.month_rk <= t2.base_line_month 
		and t1.w_Date >  EOMONTH(DATEADD(month,-12, base_line_month_date))
group by month_rk , t2.base_line_month
) 
, flp as (select * from fct_lender_portfolio)
, dlp as (select * from dim_lender_portfolio)
--select * from time_span where base_line_month = 202502 order by 2 desc
,his_raw as(
Select 
base_line_month,time_span.month_rk , time_span.day_rk, dlp.account_no
, max(dlp.days_late) days_late
from time_span
inner join flp  on time_span.day_Rk = flp.day_rk
inner join dlp  on flp.lender_portfolio_rk = dlp.lender_portfolio_rk 
--where base_line_month = 202502
group by time_span.base_line_month,time_span.month_rk , time_span.day_rk, dlp.account_no
)
, acc_list as ( select distinct account_no from his_raw )
--select * from time_span
, payment_his_raw as (
select 
t10.* 
,cast(t11.days_late as varchar(5)) days_late
,isnull(payment_dim.payment_code,'-')  payment_code
from
(
select 
t2.base_line_month,month_rk , t2.day_rk
,t1.account_no
from acc_list t1
left outer join 
time_span t2 on 1 = 1
) t10
left outer join his_raw  t11 on  t11.base_line_month = t10.base_line_month 
							and  t10.day_Rk = t11.day_Rk and t10.account_no = t11.account_no
left outer join
( 
select '0' payment_code , -9999 lower_limit , 31 upper_limit
union
select '3' payment_code , 31 lower_limit , 61 upper_limit
union
select '6' payment_code , 61 lower_limit , 91 upper_limit
union
select '9' payment_code , 91 lower_limit , 999999 upper_limit
) payment_dim on isnull(t11.days_late,-10001) >= lower_limit and isnull(t11.days_late, -10001 ) < upper_limit
)
, payment_his as
(

select 
base_line_month reporting_month,
account_no , 
string_Agg(month_rk,',') WITHIN GROUP (ORDER BY base_line_month,month_rk) month_rk,
string_Agg(isnull(days_late,'-'),',') WITHIN GROUP (ORDER BY base_line_month,month_rk) late_days,
string_Agg(payment_code,'') WITHIN GROUP (ORDER BY base_line_month,month_rk) payment_history
from payment_his_raw 
group by base_line_month , account_no
)
select * from payment_his -- WHERE account_no IN('108050') AND reporting_month = '202412';


-- dbo.vw_api_data_get_lender_Portfolio_bkp_26012026 source

ALTER VIEW vw_api_data_get_lender_portfolio
AS
/*

Objective: Process lender portfolio api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,ISNULL(t4.loan_rk, - 1) loan_rk
	,ISNULL(t3.lender_rk, - 1) lender_rk
	,t1.key_value lender_account_code
	,t2.borrower_name
	,t2.account_no
	,dbo.fn_get_actual_date(t2.first_funding_date) first_funding_date
	,dbo.fn_get_actual_date(t2.last_funding_date) last_funding_date
	,t2.pct_owned
	,t2.lender_rate
	,t2.note_rate
	,dbo.fn_get_actual_date(t2.maturity_date) maturity_date
	,t2.term_left
	,dbo.fn_get_actual_date(t2.next_payment_date) next_payment_date
	,t2.regular_payment
	,t2.loan_balance
	,t2.days_late
FROM (
	SELECT *
	FROM api_response
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_PORTFOLIO'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		borrower_name VARCHAR(255) '$.BorrowerName'
		,account_no VARCHAR(55) '$.LoanAccount'
		,first_funding_date DATE '$.FirstFunding'
		,last_funding_date DATE '$.LastFunding'
		,pct_owned DECIMAL(10, 4) '$.PctOwned'
		,lender_rate DECIMAL(10, 4) '$.LenderRate'
		,note_rate DECIMAL(10, 4) '$.NoteRate'
		,maturity_date DATE '$.MaturityDate'
		,term_left INT '$.TermLeft'
		,next_payment_date DATE '$.NextPayment'
		,regular_payment DECIMAL(20, 2) '$.RegularPayment'
		,loan_balance DECIMAL(20, 2) '$.PrincipalBalance'
		,days_late INT '$.DaysLate'
		) t2
LEFT OUTER JOIN (
	SELECT *
	FROM vw_dim_lender
	WHERE valid_flag = 'Y'
	) t3 ON t1.key_value = t3.account_code
LEFT OUTER JOIN (
	SELECT *
	FROM vw_dim_loan
	WHERE valid_flag = 'Y'
	) t4 ON t2.account_no = t4.account_no;


-- dbo.vw_api_data_get_lender_Portfolio_bkp_260120261 source

ALTER VIEW [dbo].[vw_api_data_get_lender_portfolio]
AS
/*

Objective: Process lender portfolio api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,ISNULL(t4.loan_rk, - 1) loan_rk
	,ISNULL(t3.lender_rk, - 1) lender_rk
	,t1.key_value lender_account_code
	,t2.borrower_name
	,t2.account_no
	,dbo.fn_get_actual_date(t2.first_funding_date) first_funding_date
	,dbo.fn_get_actual_date(t2.last_funding_date) last_funding_date
	,t2.pct_owned
	,t2.lender_rate
	,t2.note_rate
	,dbo.fn_get_actual_date(t2.maturity_date) maturity_date
	,t2.term_left
	,dbo.fn_get_actual_date(t2.next_payment_date) next_payment_date
	,t2.regular_payment
	,t2.loan_balance
	,t2.days_late
FROM (
	SELECT *
	FROM api_response
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_PORTFOLIO'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		borrower_name VARCHAR(255) '$.BorrowerName'
		,account_no VARCHAR(55) '$.LoanAccount'
		,first_funding_date DATE '$.FirstFunding'
		,last_funding_date DATE '$.LastFunding'
		,pct_owned DECIMAL(10, 4) '$.PctOwned'
		,lender_rate DECIMAL(10, 4) '$.LenderRate'
		,note_rate DECIMAL(10, 4) '$.NoteRate'
		,maturity_date DATE '$.MaturityDate'
		,term_left INT '$.TermLeft'
		,next_payment_date DATE '$.NextPayment'
		,regular_payment DECIMAL(20, 2) '$.RegularPayment'
		,loan_balance DECIMAL(20, 2) '$.PrincipalBalance'
		,days_late INT '$.DaysLate'
		) t2
LEFT OUTER JOIN (
	SELECT *
	FROM vw_dim_lender
	WHERE valid_flag = 'Y'
	) t3 ON t1.key_value = t3.account_code
LEFT OUTER JOIN (
	SELECT *
	FROM vw_dim_loan
	WHERE valid_flag = 'Y'
	) t4 ON t2.account_no = t4.account_no;


-- dbo.vw_api_data_get_lender_by_ts source

ALTER VIEW vw_api_data_get_lender_by_ts
AS
/*

Objective: Process lenders api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,t2.lender_rec_id
	,t2.account_code
	,t2.account_no
	,t2.full_name
	,t2.account_type
	,t2.individual_id
	,t2.account_status
	,t2.lender_timestamp
FROM (
	SELECT *
	FROM api_response
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_BY_TS'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		lender_rec_id VARCHAR(55) '$.RecID'
		,account_code VARCHAR(100) '$.Account'
		,account_no VARCHAR(100) '$.AccountNumber'
		,full_name VARCHAR(255) '$.FullName'
		,account_type VARCHAR(10) '$.AccountType'
		,individual_id VARCHAR(100) '$.IndividualId'
		,account_status VARCHAR(50) '$.Categories'
		,lender_timestamp DATETIME '$.SysTimeStamp'
		) t2;


-- dbo.vw_api_data_get_lender_by_ts_full source

ALTER VIEW [dbo].[vw_api_data_get_lender_by_ts_full]
AS
/*

Objective: Process lenders api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,t2.lender_rec_id
	,t2.account_code
	,t2.account_no
	,t2.full_name
	,t2.account_type
	,t2.individual_id
	,t2.account_status
	,t2.lender_timestamp
FROM (
	SELECT *
	FROM api_response_full
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_BY_TS'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		lender_rec_id VARCHAR(55) '$.RecID'
		,account_code VARCHAR(100) '$.Account'
		,account_no VARCHAR(100) '$.AccountNumber'
		,full_name VARCHAR(255) '$.FullName'
		,account_type VARCHAR(10) '$.AccountType'
		,individual_id VARCHAR(100) '$.IndividualId'
		,account_status VARCHAR(50) '$.Categories'
		,lender_timestamp DATETIME '$.SysTimeStamp'
		) t2;


-- dbo.vw_api_data_get_lender_portfolio source

ALTER VIEW [dbo].[vw_api_data_get_lender_portfolio]
AS
/*

Objective: Process lender portfolio api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
WITH latest_portfolio
AS (
	SELECT account_no
		,days_late AS portfolio_days_late
		,created_on AS portfolio_created_on
	FROM (
		SELECT account_no
			,days_late
			,created_on
			,ROW_NUMBER() OVER (
				PARTITION BY account_no ORDER BY created_on DESC
				) AS rn
		FROM dim_lender_portfolio
		WHERE pct_owned <> '0.0000'
		) p
	WHERE rn = 1
	)
	,latest_custom_info
AS (
	SELECT account_no
		,pymt_plan_due_day
		,created_on AS custom_info_created_on
	FROM (
		SELECT account_no
			,pymt_plan_due_day
			,created_on
			,ROW_NUMBER() OVER (
				PARTITION BY account_no ORDER BY created_on DESC
				) AS rn
		FROM dim_loan_custom_info
		) c
	WHERE rn = 1
	)
	,portfolio_custom
AS (
	SELECT p.account_no
		,p.portfolio_days_late
		,c.pymt_plan_due_day
	FROM latest_portfolio p
	LEFT JOIN latest_custom_info c ON p.account_no = c.account_no
	)
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,ISNULL(t4.loan_rk, - 1) AS loan_rk
	,ISNULL(t3.lender_rk, - 1) AS lender_rk
	,t1.key_value AS lender_account_code
	,t2.borrower_name
	,t2.account_no
	,dbo.fn_get_actual_date(t2.first_funding_date) AS first_funding_date
	,dbo.fn_get_actual_date(t2.last_funding_date) AS last_funding_date
	,t2.pct_owned
	,t2.lender_rate
	,t2.note_rate
	,dbo.fn_get_actual_date(t2.maturity_date) AS maturity_date
	,t2.term_left
	,dbo.fn_get_actual_date(t2.next_payment_date) AS next_payment_date
	,t2.regular_payment
	,t2.loan_balance
	,t2.days_late
	,CASE 
		WHEN property_type = 'Construction'
			THEN 0
		WHEN t2.days_late IS NULL
			OR t2.days_late = 0
			THEN 0
		WHEN (t2.days_late - ISNULL(pc.pymt_plan_due_day, 0)) > 0
			THEN t2.days_late - ISNULL(pc.pymt_plan_due_day, 0)
		ELSE 0
		END AS adusted_days_late
FROM (
	SELECT *
	FROM api_response
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_PORTFOLIO'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		borrower_name VARCHAR(255) '$.BorrowerName'
		,account_no VARCHAR(55) '$.LoanAccount'
		,first_funding_date DATE '$.FirstFunding'
		,last_funding_date DATE '$.LastFunding'
		,pct_owned DECIMAL(10, 4) '$.PctOwned'
		,lender_rate DECIMAL(10, 4) '$.LenderRate'
		,note_rate DECIMAL(10, 4) '$.NoteRate'
		,maturity_date DATE '$.MaturityDate'
		,term_left INT '$.TermLeft'
		,next_payment_date DATE '$.NextPayment'
		,regular_payment DECIMAL(20, 2) '$.RegularPayment'
		,loan_balance DECIMAL(20, 2) '$.PrincipalBalance'
		,days_late INT '$.DaysLate'
		) t2
LEFT JOIN portfolio_custom pc ON t2.account_no = pc.account_no
LEFT JOIN (
	SELECT *
	FROM vw_dim_lender
	WHERE valid_flag = 'Y'
	) t3 ON t1.key_value = t3.account_code
LEFT JOIN (
	SELECT *
	FROM vw_dim_loan
	WHERE valid_flag = 'Y'
	) t4 ON t2.account_no = t4.account_no;


-- dbo.vw_api_data_get_lender_portfolio_full source

ALTER    VIEW [dbo].[vw_api_data_get_lender_portfolio_full]
AS
/*

Objective: Process lender portfolio api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
WITH latest_portfolio
AS (
	SELECT account_no
		,days_late AS portfolio_days_late
		,created_on AS portfolio_created_on
	FROM (
		SELECT account_no
			,days_late
			,created_on
			,ROW_NUMBER() OVER (
				PARTITION BY account_no ORDER BY created_on DESC
				) AS rn
		FROM dim_lender_portfolio
		WHERE pct_owned <> '0.0000'
		) p
	WHERE rn = 1
	)
	,latest_custom_info
AS (
	SELECT account_no
		,pymt_plan_due_day
		,created_on AS custom_info_created_on
	FROM (
		SELECT account_no
			,pymt_plan_due_day
			,created_on
			,ROW_NUMBER() OVER (
				PARTITION BY account_no ORDER BY created_on DESC
				) AS rn
		FROM dim_loan_custom_info
		) c
	WHERE rn = 1
	)
	,portfolio_custom
AS (
	SELECT p.account_no
		,p.portfolio_days_late
		,c.pymt_plan_due_day
	FROM latest_portfolio p
	LEFT JOIN latest_custom_info c ON p.account_no = c.account_no
	)
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	,ISNULL(t4.loan_rk, - 1) AS loan_rk
	,'-1' AS lender_rk
	,t1.key_value AS lender_account_code
	,t2.borrower_name
	,t2.account_no
	,dbo.fn_get_actual_date(t2.first_funding_date) AS first_funding_date
	,dbo.fn_get_actual_date(t2.last_funding_date) AS last_funding_date
	,t2.pct_owned
	,t2.lender_rate
	,t2.note_rate
	,dbo.fn_get_actual_date(t2.maturity_date) AS maturity_date
	,t2.term_left
	,dbo.fn_get_actual_date(t2.next_payment_date) AS next_payment_date
	,t2.regular_payment
	,t2.loan_balance
	,t2.days_late
	,CASE 
		WHEN property_type = 'Construction'
			THEN 0
		WHEN t2.days_late IS NULL
			OR t2.days_late = 0
			THEN 0
		WHEN (t2.days_late - ISNULL(pc.pymt_plan_due_day, 0)) > 0
			THEN t2.days_late - ISNULL(pc.pymt_plan_due_day, 0)
		ELSE 0
		END AS adusted_days_late
FROM (
	SELECT *
	FROM api_response_full
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LENDER_PORTFOLIO'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		borrower_name VARCHAR(255) '$.BorrowerName'
		,account_no VARCHAR(55) '$.LoanAccount'
		,first_funding_date DATE '$.FirstFunding'
		,last_funding_date DATE '$.LastFunding'
		,pct_owned DECIMAL(10, 4) '$.PctOwned'
		,lender_rate DECIMAL(10, 4) '$.LenderRate'
		,note_rate DECIMAL(10, 4) '$.NoteRate'
		,maturity_date DATE '$.MaturityDate'
		,term_left INT '$.TermLeft'
		,next_payment_date DATE '$.NextPayment'
		,regular_payment DECIMAL(20, 2) '$.RegularPayment'
		,loan_balance DECIMAL(20, 2) '$.PrincipalBalance'
		,days_late INT '$.DaysLate'
		) t2
LEFT JOIN portfolio_custom pc ON t2.account_no = pc.account_no
LEFT JOIN (
	SELECT *
	FROM vw_dim_loan
	WHERE valid_flag = 'Y'
	) t4 ON t2.account_no = t4.account_no;


-- dbo.vw_api_data_get_loan_additional_info source

ALTER   VIEW [dbo].[vw_api_data_get_loan_additional_info]
AS              
/*              
              
Objective: Process additional loans information api data into tabular format              
Created By: Shabbir Pinjari              
Created On: 28-May-2025              
Version No: 1.0              
              
#### Change History #####              
Revision By:              
Revision On:              
Change Details:              
              
*/              
SELECT             
 t1.as_at_date_rk,              
 t1.api_response_rk,              
 ISNULL(t4.loan_rk, -1) AS loan_rk,              
 -- ISNULL(t3.lender_rk, -1) lender_rk              
 -- ,t1.key_value lender_account_code              
 t2.loan_rec_id,              
 t2.account_no,            
 t2.sort_name,            
 t2.amort_type,              
 t2.loan_purpose,              
 t2.Loan_type,              
 dbo.fn_get_actual_date(t2.maturity_date) AS maturity_date,              
 t2.neg_amort_to_interest,              
 dbo.fn_get_actual_date(t2.next_due_date) AS next_due_date,              
 t2.note_rate,              
 t2.original_balance_amt,              
 dbo.fn_get_actual_date(t2.paid_off_date) AS paid_off_date,              
 dbo.fn_get_actual_date(t2.paid_to_date) AS paid_to_date,              
 t2.payment_frequency,              
 t2.pmt_other,              
 t2.pmt_pi,              
 t2.pmt_reserve,              
 t2.prepayment_penalty,              
 t2.principal_balance,              
 t2.priority,              
 t2.rate_type,              
 t2.regular_payment,              
 t2.reserve_balance,              
 t2.delivery_options,              
 t2.email_format,              
 t2.enable_insurance_tracking,              
 t2.full_name,              
 t2.legal_structure_type,              
 t2.notes,              
 t2.place_on_hold,              
 t2.rolodex_print,              
 t2.salutation,              
 t2.send_late_notices,              
 t2.send_payment_receipt,              
 t2.send_payment_statement,              
 t2.tin_type,              
 --t2.appraiser_fmv,              
 TRY_CAST(t2.appraiser_fmv AS DECIMAL(18,4)) AS appraiser_fmv,
 t2.country_code,              
 t2.flood_zone,              
 t2.legal_description,              
 t2.pledged_equity,              
 t2.[primary_prop],              
 t2.purchase_price,              
 t2.thomas_map,              
 t2.zoning,            
 t2.loan_timestamp, 
 t2.account_number as account_number_pac,
 t2.account_type,
 t2.individual_name,
 t2.routing_number as institution_id,
            
 -- custom fields extraction            
 ISNULL(MAX(CASE             
    WHEN t3.name = 'Income 1'            
     THEN TRIM(t3.Value)            
    END), '') income_1,            
ISNULL(MAX(CASE             
    WHEN t3.name = 'Income Type 1'            
     THEN TRIM(t3.Value)            
    END), '') income_type_1,            
ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 1'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_1            
,ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 2'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_2            
,ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 3'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_3            
            
FROM (              
 SELECT *              
 FROM api_response              
 WHERE api_rk = (              
   SELECT api_rk              
   FROM vw_api_master              
   WHERE api_code = 'GET_LOAN_BY_AN'              
 )              
 AND is_processed = 0    
 AND is_error = 0           
) t1              
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (              
  loan_rec_id varchar(55) '$.RecID',              
  account_no varchar(55) '$.Account',            
  sort_name varchar(255) '$.SortName',            
  amort_type int '$.Terms.AmortType',              
  loan_purpose varchar(55) '$.Terms.LoanPurpose',              
  Loan_type int '$.Terms.LoanType',              
  maturity_date date '$.Terms.MaturityDate',              
  neg_amort_to_interest varchar(10) '$.Terms.NegAmortToInterest',              
  next_due_date date '$.Terms.NextDueDate',              
  note_rate decimal(9,4) '$.Terms.NoteRate',              
  original_balance_amt decimal(18,2) '$.Terms.OrigBal',              
  paid_off_date date '$.Terms.PaidOffDate',              
  paid_to_date date '$.Terms.PaidToDate',              
  payment_frequency varchar(25) '$.Terms.PaymentFrequency',              
  pmt_other decimal(18,2) '$.Terms.PmtOther',              
  pmt_pi decimal(18,2) '$.Terms.PmtPI',              
  pmt_reserve decimal(18,2) '$.Terms.PmtReserve',              
  prepayment_penalty decimal(18,2) '$.Terms.PrepaymentPenalty',              
  principal_balance decimal(18,2) '$.Terms.PrincipalBalance',              
  priority int '$.Terms.Priority',              
  rate_type int '$.Terms.RateType',              
  regular_payment decimal(18,2) '$.Terms.RegularPayment',              
  reserve_balance decimal(18,2) '$.Terms.ReserveBalance',              
  delivery_options int '$.PrimaryBorrower.DeliveryOptions',              
  email_format int '$.PrimaryBorrower.EmailFormat',              
  enable_insurance_tracking varchar(10) '$.PrimaryBorrower.EnableInsuranceTracking',              
  full_name varchar(255) '$.PrimaryBorrower.FullName',              
  legal_structure_type int '$.PrimaryBorrower.LegalStructureType',      notes varchar(8000) '$.PrimaryBorrower.Notes',              
  place_on_hold varchar(10) '$.PrimaryBorrower.PlaceOnHold',              
  rolodex_print varchar(10) '$.PrimaryBorrower.RolodexPrint',              
  salutation varchar(5) '$.PrimaryBorrower.Salutation',              
  send_late_notices varchar(10) '$.PrimaryBorrower.SendLateNotices',              
  send_payment_receipt varchar(10) '$.PrimaryBorrower.SendPaymentReceipt',              
  send_payment_statement varchar(10) '$.PrimaryBorrower.SendPaymentStatement',              
  tin_type int '$.PrimaryBorrower.TINType',              
  --appraiser_fmv decimal(18,4) '$.PrimaryProperty.AppraiserFMV',
  appraiser_fmv varchar(50) '$.PrimaryProperty.AppraiserFMV',
  country_code varchar(5) '$.PrimaryProperty.CountryCode',              
  flood_zone varchar(25) '$.PrimaryProperty.FloodZone',              
  legal_description varchar(255) '$.PrimaryProperty.LegalDescription',              
  pledged_equity decimal(18,2) '$.PrimaryProperty.PledgedEquity',              
  [primary_prop] varchar(10) '$.PrimaryProperty.Primary',              
  purchase_price decimal(18,2) '$.PrimaryProperty.PurchasePrice',              
  thomas_map varchar(25) '$.PrimaryProperty.ThomasMap',              
  zoning varchar(55) '$.PrimaryProperty.Zoning',            
  loan_timestamp datetime '$.SysTimeStamp',
  account_number varchar(50) '$.AccountNumber',
  account_type varchar(10) '$.AccountType',
  individual_name varchar(255) '$.IndividualName',
  routing_number varchar(50) '$.RoutingNumber'
) t2              
            
-- Extract custom fields            
CROSS APPLY OPENJSON(t1.api_response, '$.Data.CustomFields')              
WITH (              
  Name varchar(50) '$.Name',              
  Value varchar(255) '$.Value'              
)t3            
            
LEFT OUTER JOIN (              
 SELECT *              
 FROM vw_dim_loan              
 WHERE valid_flag = 'Y'              
) t4 ON t2.account_no = t4.account_no    
GROUP BY             
 t1.as_at_date_rk,              
 t1.api_response_rk,              
 t4.loan_rk,              
 t2.loan_rec_id,              
 t2.account_no,              
 t2.sort_name,            
 t2.amort_type,              
 t2.loan_purpose,              
 t2.Loan_type,              
 t2.maturity_date,              
 t2.neg_amort_to_interest,              
 t2.next_due_date,              
 t2.note_rate,              
 t2.original_balance_amt,              
 t2.paid_off_date,              
 t2.paid_to_date,              
 t2.payment_frequency,              
 t2.pmt_other,              
 t2.pmt_pi,              
 t2.pmt_reserve,              
 t2.prepayment_penalty,              
 t2.principal_balance,              
 t2.priority,              
 t2.rate_type,              
 t2.regular_payment,              
 t2.reserve_balance,              
 t2.delivery_options,              
 t2.email_format,              
 t2.enable_insurance_tracking,              
 t2.full_name,     
 t2.legal_structure_type,              
 t2.notes,              
 t2.place_on_hold,              
 t2.rolodex_print,              
 t2.salutation,              
 t2.send_late_notices,              
 t2.send_payment_receipt,              
 t2.send_payment_statement,              
 t2.tin_type,              
 t2.appraiser_fmv,              
 t2.country_code,              
 t2.flood_zone,              
 t2.legal_description,              
 t2.pledged_equity,              
 t2.[primary_prop],              
 t2.purchase_price,              
 t2.thomas_map,              
 t2.zoning,            
 t2.loan_timestamp,
 t2.account_number,
 t2.account_type,
 t2.individual_name,
 t2.routing_number;


-- dbo.vw_api_data_get_loan_additional_info_full source

ALTER    VIEW [dbo].[vw_api_data_get_loan_additional_info_full]
AS              
/*              
              
Objective: Process additional loans information api data into tabular format              
Created By: Shabbir Pinjari              
Created On: 28-May-2025              
Version No: 1.0              
              
#### Change History #####              
Revision By:              
Revision On:              
Change Details:              
              
*/              
SELECT             
 t1.as_at_date_rk,              
 t1.api_response_rk,              
 ISNULL(t4.loan_rk, -1) AS loan_rk,              
 -- ISNULL(t3.lender_rk, -1) lender_rk              
 -- ,t1.key_value lender_account_code              
 t2.loan_rec_id,              
 t2.account_no,            
 t2.sort_name,            
 t2.amort_type,              
 t2.loan_purpose,              
 t2.Loan_type,              
 dbo.fn_get_actual_date(t2.maturity_date) AS maturity_date,              
 t2.neg_amort_to_interest,              
 dbo.fn_get_actual_date(t2.next_due_date) AS next_due_date,              
 t2.note_rate,              
 t2.original_balance_amt,              
 dbo.fn_get_actual_date(t2.paid_off_date) AS paid_off_date,              
 dbo.fn_get_actual_date(t2.paid_to_date) AS paid_to_date,              
 t2.payment_frequency,              
 t2.pmt_other,              
 t2.pmt_pi,              
 t2.pmt_reserve,              
 t2.prepayment_penalty,              
 t2.principal_balance,              
 t2.priority,              
 t2.rate_type,              
 t2.regular_payment,              
 t2.reserve_balance,              
 t2.delivery_options,              
 t2.email_format,              
 t2.enable_insurance_tracking,              
 t2.full_name,              
 t2.legal_structure_type,              
 t2.notes,              
 t2.place_on_hold,              
 t2.rolodex_print,              
 t2.salutation,              
 t2.send_late_notices,              
 t2.send_payment_receipt,              
 t2.send_payment_statement,              
 t2.tin_type,              
 --t2.appraiser_fmv,              
 TRY_CAST(t2.appraiser_fmv AS DECIMAL(18,4)) AS appraiser_fmv,
 t2.country_code,              
 t2.flood_zone,              
 t2.legal_description,              
 t2.pledged_equity,              
 t2.[primary_prop],              
 t2.purchase_price,              
 t2.thomas_map,              
 t2.zoning,            
 t2.loan_timestamp,
 t2.account_number as account_number_pac,
 t2.account_type,
 t2.individual_name,
 t2.routing_number as institution_id,
            
 -- custom fields extraction            
 ISNULL(MAX(CASE             
    WHEN t3.name = 'Income 1'            
     THEN TRIM(t3.Value)            
    END), '') income_1,            
ISNULL(MAX(CASE             
    WHEN t3.name = 'Income Type 1'            
     THEN TRIM(t3.Value)            
    END), '') income_type_1,            
ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 1'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_1            
,ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 2'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_2            
,ISNULL(MAX(CASE             
    WHEN t3.name = 'Beacon Score 3'            
     THEN TRIM(t3.Value)            
    END), 0) beacon_score_3            
            
FROM (              
 SELECT *              
 FROM api_response_full     
 WHERE api_rk = (              
   SELECT api_rk              
   FROM vw_api_master              
   WHERE api_code = 'GET_LOAN_BY_AN'              
 )      
) t1              
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (              
  loan_rec_id varchar(55) '$.RecID',              
  account_no varchar(55) '$.Account',            
  sort_name varchar(255) '$.SortName',            
  amort_type int '$.Terms.AmortType',              
  loan_purpose varchar(55) '$.Terms.LoanPurpose',              
  Loan_type int '$.Terms.LoanType',              
  maturity_date date '$.Terms.MaturityDate',              
  neg_amort_to_interest varchar(10) '$.Terms.NegAmortToInterest',              
  next_due_date date '$.Terms.NextDueDate',              
  note_rate decimal(9,4) '$.Terms.NoteRate',              
  original_balance_amt decimal(18,2) '$.Terms.OrigBal',              
  paid_off_date date '$.Terms.PaidOffDate',              
  paid_to_date date '$.Terms.PaidToDate',              
  payment_frequency varchar(25) '$.Terms.PaymentFrequency',              
  pmt_other decimal(18,2) '$.Terms.PmtOther',              
  pmt_pi decimal(18,2) '$.Terms.PmtPI',              
  pmt_reserve decimal(18,2) '$.Terms.PmtReserve',              
  prepayment_penalty decimal(18,2) '$.Terms.PrepaymentPenalty',              
  principal_balance decimal(18,2) '$.Terms.PrincipalBalance',              
  priority int '$.Terms.Priority',              
  rate_type int '$.Terms.RateType',              
  regular_payment decimal(18,2) '$.Terms.RegularPayment',              
  reserve_balance decimal(18,2) '$.Terms.ReserveBalance',              
  delivery_options int '$.PrimaryBorrower.DeliveryOptions',              
  email_format int '$.PrimaryBorrower.EmailFormat',              
  enable_insurance_tracking varchar(10) '$.PrimaryBorrower.EnableInsuranceTracking',              
  full_name varchar(255) '$.PrimaryBorrower.FullName',              
  legal_structure_type int '$.PrimaryBorrower.LegalStructureType',      notes varchar(8000) '$.PrimaryBorrower.Notes',              
  place_on_hold varchar(10) '$.PrimaryBorrower.PlaceOnHold',              
  rolodex_print varchar(10) '$.PrimaryBorrower.RolodexPrint',              
  salutation varchar(5) '$.PrimaryBorrower.Salutation',              
  send_late_notices varchar(10) '$.PrimaryBorrower.SendLateNotices',              
  send_payment_receipt varchar(10) '$.PrimaryBorrower.SendPaymentReceipt',              
  send_payment_statement varchar(10) '$.PrimaryBorrower.SendPaymentStatement',              
  tin_type int '$.PrimaryBorrower.TINType',              
  --appraiser_fmv decimal(18,4) '$.PrimaryProperty.AppraiserFMV',
  appraiser_fmv varchar(50) '$.PrimaryProperty.AppraiserFMV',
  country_code varchar(5) '$.PrimaryProperty.CountryCode',              
  flood_zone varchar(25) '$.PrimaryProperty.FloodZone',              
  legal_description varchar(255) '$.PrimaryProperty.LegalDescription',              
  pledged_equity decimal(18,2) '$.PrimaryProperty.PledgedEquity',              
  [primary_prop] varchar(10) '$.PrimaryProperty.Primary',              
  purchase_price decimal(18,2) '$.PrimaryProperty.PurchasePrice',              
  thomas_map varchar(25) '$.PrimaryProperty.ThomasMap',              
  zoning varchar(55) '$.PrimaryProperty.Zoning',            
  loan_timestamp datetime '$.SysTimeStamp',   
  account_number varchar(50) '$.AccountNumber',
  account_type varchar(10) '$.AccountType',
  individual_name varchar(255) '$.IndividualName',
  routing_number varchar(50) '$.RoutingNumber'
) t2              
            
-- Extract custom fields            
CROSS APPLY OPENJSON(t1.api_response, '$.Data.CustomFields')              
WITH (              
  Name varchar(50) '$.Name',              
  Value varchar(255) '$.Value'              
)t3            
            
LEFT OUTER JOIN (              
 SELECT *              
 FROM vw_dim_loan              
 WHERE valid_flag = 'Y'              
) t4 ON t2.account_no = t4.account_no    
GROUP BY             
 t1.as_at_date_rk,              
 t1.api_response_rk,              
 t4.loan_rk,              
 t2.loan_rec_id,              
 t2.account_no,              
 t2.sort_name,            
 t2.amort_type,              
 t2.loan_purpose,              
 t2.Loan_type,              
 t2.maturity_date,              
 t2.neg_amort_to_interest,              
 t2.next_due_date,              
 t2.note_rate,              
 t2.original_balance_amt,              
 t2.paid_off_date,              
 t2.paid_to_date,              
 t2.payment_frequency,              
 t2.pmt_other,              
 t2.pmt_pi,              
 t2.pmt_reserve,              
 t2.prepayment_penalty,              
 t2.principal_balance,              
 t2.priority,              
 t2.rate_type,              
 t2.regular_payment,              
 t2.reserve_balance,              
 t2.delivery_options,              
 t2.email_format,              
 t2.enable_insurance_tracking,              
 t2.full_name,     
 t2.legal_structure_type,              
 t2.notes,              
 t2.place_on_hold,              
 t2.rolodex_print,              
 t2.salutation,              
 t2.send_late_notices,              
 t2.send_payment_receipt,              
 t2.send_payment_statement,              
 t2.tin_type,              
 t2.appraiser_fmv,              
 t2.country_code,              
 t2.flood_zone,              
 t2.legal_description,              
 t2.pledged_equity,              
 t2.[primary_prop],              
 t2.purchase_price,              
 t2.thomas_map,              
 t2.zoning,            
 t2.loan_timestamp,
 t2.account_number,
 t2.account_type,
 t2.individual_name,
 t2.routing_number;


-- dbo.vw_api_data_get_loan_by_ts source

ALTER VIEW vw_api_data_get_loan_by_ts
AS
/*

Objective: Process the loans api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t1.as_at_date_rk
	,t1.api_response_rk
	--t1.working_date ,
	,loan_rec_id
	,los_loan_rec_id
	,borrower_rec_id
	,account_no
	,ach
	,iif(len(trim(first_name)) = 0, '', trim(first_name) + ' ') + iif(len(trim(mi)) = 0, '', trim(mi) + ' ') + iif(len(trim(last_name)) = 0, '', trim(last_name)) borrower_name
	,hold
	,by_last_name
	,first_name
	,mi
	,last_name
	,dbo.fn_get_actual_date(intrest_paid_to) intrest_paid_to
	,dbo.fn_get_actual_date(payment_due_date) payment_due_date
	,payment_frequency
	,regular_payment
	,apply_to_pi
	,apply_to_reserve
	,apply_to_impound
	,apply_to_other
	,dbo.fn_get_actual_date(maturity_date) maturity_date
	,term_left
	,late_days
	--case when paid_off_date= '1900-01-01' then null else paid_off_date end paid_off_date,
	,dbo.fn_get_actual_date(paid_off_date) paid_off_date
	,note_rate
	,sold_rate
	,loan_priority
	,principal_balance
	,trust_balance
	,impound_balance
	,reserve_balance
	,unpaid_late_charges
	,unpaid_charges
	,unpaid_intrest
	,street
	,city
	,[state]
	,zip_code
	,home_phone
	,work_phone
	,cell_phone
	,fax_phone
	,tin
	,loan_type
	,rate_type
	,email_id
	,property_description
	,property_street
	,property_city
	,property_state
	,property_zip
	,property_country
	,property_type
	,property_occupancy
	,property_ltv
	,property_apn
	,aggregate_appraised_value
	,calculated_ltv
	,dbo.fn_get_actual_date(closing_date) closing_date
	,dbo.fn_get_actual_date(first_payment_date) first_payment_date
	,dbo.fn_get_actual_date(purhcase_date) purhcase_date
	,dbo.fn_get_actual_date(booking_date) booking_date
	,dbo.fn_get_actual_date(next_revision) next_revision
	,original_balance_amt
	,unearned_discount
	,loan_code
	,dbo.fn_get_actual_date(appraisal_date) appraisal_date
	,aggregate_senior_liens
	,loan_officer
	,dbo.fn_get_actual_date(dob) dob
	,loan_status
	,loan_timestamp
	,CASE 
		WHEN dbo.fn_get_actual_date(paid_off_date) IS NULL
			THEN CASE 
					WHEN isnull(principal_balance, 0) > 0
						THEN 'O'
					ELSE 'C'
					END
		ELSE 'C'
		END account_status
FROM (
	SELECT *
	FROM api_response
	WHERE api_rk = (
			SELECT api_rk
			FROM vw_api_master
			WHERE api_code = 'GET_LOAN_BY_TS'
			)
		AND is_processed = 0
		AND is_error = 0
	) t1
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
		loan_rec_id VARCHAR(55) '$.RecID'
		,los_loan_rec_id VARCHAR(55) '$.LOSLoanRecID'
		,borrower_rec_id VARCHAR(55) '$.BorrowerRecID'
		,account_no VARCHAR(55) '$.Account'
		,ach INT '$.ACH'
		,hold VARCHAR(10) '$.Hold'
		,by_last_name VARCHAR(255) '$.ByLastName'
		,first_name VARCHAR(255) '$.PrimaryBorrower.FirstName'
		,mi VARCHAR(255) '$.PrimaryBorrower.MI'
		,last_name VARCHAR(255) '$.PrimaryBorrower.LastName'
		,intrest_paid_to DATE '$.InterestPaidTo'
		,payment_due_date DATE '$.PaymentDueDate'
		,payment_frequency VARCHAR(25) '$.PaymentFrequency'
		,regular_payment DECIMAL(18, 2) '$.RegularPayment'
		,apply_to_pi DECIMAL(18, 2) '$.ApplyToPI'
		,apply_to_reserve DECIMAL(18, 2) '$.ApplyToReserve'
		,apply_to_impound DECIMAL(18, 2) '$.ApplyToImpound'
		,apply_to_other DECIMAL(18, 2) '$.ApplyToOther'
		,maturity_date DATE '$.MaturityDate'
		,term_left INT '$.TermLeft'
		,late_days INT '$.DaysLate'
		,paid_off_date DATE '$.PaidOffDate'
		,note_rate DECIMAL(9, 4) '$.NoteRate'
		,sold_rate DECIMAL(9, 4) '$.SoldRate'
		,loan_priority INT '$.Priority'
		,principal_balance DECIMAL(18, 2) '$.PrincipalBalance'
		,trust_balance DECIMAL(18, 2) '$.TrustBalance'
		,impound_balance DECIMAL(18, 2) '$.ImpoundBalance'
		,reserve_balance DECIMAL(18, 2) '$.ReserveBalance'
		,unpaid_late_charges DECIMAL(18, 2) '$.UnpaidLateCharges'
		,unpaid_charges DECIMAL(18, 2) '$.UnpaidCharges'
		,unpaid_intrest DECIMAL(18, 2) '$.UnpaidInterest'
		,street VARCHAR(255) '$.PrimaryBorrower.Street'
		,city VARCHAR(255) '$.PrimaryBorrower.City'
		,STATE VARCHAR(255) '$.PrimaryBorrower.State'
		,zip_code VARCHAR(255) '$.PrimaryBorrower.ZipCode'
		,home_phone VARCHAR(100) '$.PrimaryBorrower.PhoneHome'
		,work_phone VARCHAR(100) '$.PrimaryBorrower.PhoneWork'
		,cell_phone VARCHAR(100) '$.PrimaryBorrower.PhoneCell'
		,fax_phone VARCHAR(100) '$.PrimaryBorrower.PhoneFax'
		,tin VARCHAR(100) '$.PrimaryBorrower.TIN'
		,loan_type INT '$.LoanType'
		,rate_type INT '$.RateType'
		,email_id VARCHAR(255) '$.EmailAddress'
		,property_description VARCHAR(255) '$.PropertyDescription'
		,property_street VARCHAR(255) '$.PropertyStreet'
		,property_city VARCHAR(255) '$.PropertyCity'
		,property_state VARCHAR(255) '$.PropertyState'
		,property_zip VARCHAR(25) '$.PropertyZip'
		,property_country VARCHAR(100) '$.PropertyCounty'
		,property_type VARCHAR(55) '$.PropertyType'
		,property_occupancy VARCHAR(55) '$.PropertyOccupancy'
		,property_ltv DECIMAL(9, 4) '$.PropertyLTV'
		,property_apn VARCHAR(55) '$.PropertyAPN'
		,aggregate_appraised_value DECIMAL(18, 2) '$.AggregateAppraisedValue'
		,calculated_ltv DECIMAL(9, 4) '$.CalculatedLTV'
		,closing_date DATE '$.ClosingDate'
		,first_payment_date DATE '$.FirstPaymentDate'
		,purhcase_date DATE '$.PurchaseDate'
		,booking_date DATE '$.BookingDate'
		,next_revision DATE '$.NextRevision'
		,original_balance_amt DECIMAL(18, 2) '$.OriginalBalance'
		,unearned_discount DECIMAL(18, 2) '$.UnearnedDiscount'
		,loan_code VARCHAR(55) '$.LoanCode'
		,appraisal_date DATE '$.AppraisalDate'
		,aggregate_senior_liens DECIMAL(18, 2) '$.AggregateSeniorLiens'
		,loan_officer VARCHAR(255) '$.LoanOfficer'
		,dob DATE '$.PrimaryBorrower.DOB'
		,loan_status VARCHAR(55) '$.__type'
		,loan_timestamp DATETIME '$.SysTimeStamp'
		) t2;


-- dbo.vw_api_data_get_loan_by_ts_custom_info source

ALTER VIEW vw_api_data_get_loan_by_ts_custom_info
AS
/*

Objective: Process the custom loans api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT t4.as_at_date_rk
	,t4.loan_rec_id
	,t4.account_no
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'a'
					THEN TRIM(custom_field_value)
				END), '') adhoc_a
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Account Name'
					THEN TRIM(custom_field_value)
				END), '') account_name
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Accrued Interest'
					THEN TRIM(custom_field_value)
				END), '') accrued_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Actual LTV'
					THEN TRIM(custom_field_value)
				END), '') actual_ltv
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administration Fee renewal'
					THEN TRIM(custom_field_value)
				END), '') administration_fee_renewal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administration Renewal Fee'
					THEN TRIM(custom_field_value)
				END), '') administration_renewal_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administrative Fees'
					THEN TRIM(custom_field_value)
				END), '') administrative_fees
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Amortization Term in Years'
					THEN TRIM(custom_field_value)
				END), '') amortization_term_in_years
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Application Purpose'
					THEN TRIM(custom_field_value)
				END), '') application_purpose
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'ARM Floor'
					THEN TRIM(custom_field_value)
				END), '') arm_floor
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Arrears Balance'
					THEN TRIM(custom_field_value)
				END), '') arrears_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Authorized Amount'
					THEN TRIM(custom_field_value)
				END), '') authorized_amount
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'b'
					THEN TRIM(custom_field_value)
				END), '') adhoc_b
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Balance of Auto Renewal LF'
					THEN TRIM(custom_field_value)
				END), '') balance_of_auto_renewal_lf
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Balance of Renewal Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') balance_of_renewal_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Bank of Canada Overnight Rate'
					THEN TRIM(custom_field_value)
				END), '') bank_of_canada_overnight_rate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 1'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 2'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 3'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'c'
					THEN TRIM(custom_field_value)
				END), '') adhoc_c
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Calculated GDS'
					THEN TRIM(custom_field_value)
				END), '') calculated_gds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Calculated TDS'
					THEN TRIM(custom_field_value)
				END), '') calculated_tds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Cash back'
					THEN TRIM(custom_field_value)
				END), '') cash_back
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Chosen Rate Type'
					THEN TRIM(custom_field_value)
				END), '') chosen_rate_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 1'
					THEN TRIM(custom_field_value)
				END), '') coborrower_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 2'
					THEN TRIM(custom_field_value)
				END), '') coborrower_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 3'
					THEN TRIM(custom_field_value)
				END), '') coborrower_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Collection Cost'
					THEN TRIM(custom_field_value)
				END), '') collection_cost
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Daily ProRated Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') daily_prorated_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Daily ProRated Prepayment Costs'
					THEN TRIM(custom_field_value)
				END), '') daily_prorated_prepayment_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Days from Letter'
					THEN TRIM(custom_field_value)
				END), '') days_from_letter
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Days in Arrears'
					THEN TRIM(custom_field_value)
				END), '') days_in_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Default Legal Proceedings Fee'
					THEN TRIM(custom_field_value)
				END), '') default_legal_proceedings_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Administration Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_administration_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Coding'
					THEN TRIM(custom_field_value)
				END), '') discharge_coding
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Mortgage Statement Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_mortgage_statement_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge of Mortgage Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_of_mortgage_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharging Prinicpal'
					THEN TRIM(custom_field_value)
				END), '') discharging_prinicpal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Effective Date'
					THEN TRIM(custom_field_value)
				END), '') effective_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Final Discharge'
					THEN TRIM(custom_field_value)
				END), '') final_discharge
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'First Loan Number'
					THEN TRIM(custom_field_value)
				END), '') first_loan_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'First Payment Date'
					THEN TRIM(custom_field_value)
				END), '') first_payment_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'FMLP'
					THEN TRIM(custom_field_value)
				END), '') fmlp
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Funding Partner'
					THEN TRIM(custom_field_value)
				END), '') funding_partner
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Funds'
					THEN TRIM(custom_field_value)
				END), '') funds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'GDSRQual'
					THEN TRIM(custom_field_value)
				END), '') gdsrqual
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 1'
					THEN TRIM(custom_field_value)
				END), '') income_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 2'
					THEN TRIM(custom_field_value)
				END), '') income_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 3'
					THEN TRIM(custom_field_value)
				END), '') income_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income Type 1'
					THEN TRIM(custom_field_value)
				END), '') income_type_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income Type 2'
					THEN TRIM(custom_field_value)
				END), '') income_type_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'IncomeType 3'
					THEN TRIM(custom_field_value)
				END), '') income_type_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Installments in Arrears'
					THEN TRIM(custom_field_value)
				END), '') installments_in_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurance Policy Certificate'
					THEN TRIM(custom_field_value)
				END), '') insurance_policy_certificate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurer'
					THEN TRIM(custom_field_value)
				END), '') insurer
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurer Policy'
					THEN TRIM(custom_field_value)
				END), '') insurer_policy
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest'
					THEN TRIM(custom_field_value)
				END), '') interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest Adjustment Date'
					THEN TRIM(custom_field_value)
				END), '') interest_adjustment_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest Arrears'
					THEN TRIM(custom_field_value)
				END), '') interest_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Last Contact Date'
					THEN TRIM(custom_field_value)
				END), '') last_contact_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Late Payment Interest'
					THEN TRIM(custom_field_value)
				END), '') late_payment_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Law Firm'
					THEN TRIM(custom_field_value)
				END), '') law_firm
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Legal'
					THEN TRIM(custom_field_value)
				END), '') legal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Legal Action'
					THEN TRIM(custom_field_value)
				END), '') legal_action
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender'
					THEN TRIM(custom_field_value)
				END), '') lender
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee in Dollars Original'
					THEN TRIM(custom_field_value)
				END), '') lender_fee_in_dollars_original
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee in Percent Original'
					THEN TRIM(custom_field_value)
				END), '') lender_fee_in_percent_original
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Charges to MCC'
					THEN TRIM(custom_field_value)
				END), '') loan_charges_to_mcc
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Purpose'
					THEN TRIM(custom_field_value)
				END), '') loan_purpose
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Status'
					THEN TRIM(custom_field_value)
				END), '') loan_status
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Type'
					THEN TRIM(custom_field_value)
				END), '') loan_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Filed'
					THEN TRIM(custom_field_value)
				END), '') main_claim_filed
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Funds Received'
					THEN TRIM(custom_field_value)
				END), '') main_claim_funds_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Received'
					THEN TRIM(custom_field_value)
				END), '') main_claim_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Maintenance of Property'
					THEN TRIM(custom_field_value)
				END), '') maintenance_of_property
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'MBS Pool Number'
					THEN TRIM(custom_field_value)
				END), '') mbs_pool_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Agent'
					THEN TRIM(custom_field_value)
				END), '') mortgage_agent
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Brokerage'
					THEN TRIM(custom_field_value)
				END), '') mortgage_brokerage
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Next Payment'
					THEN TRIM(custom_field_value)
				END), '') next_payment
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Next Step'
					THEN TRIM(custom_field_value)
				END), '') next_step
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'NSF Pymt Due Date'
					THEN TRIM(custom_field_value)
				END), '') nsf_pymt_due_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Number of Units'
					THEN TRIM(custom_field_value)
				END), '') number_of_units
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Opening Balance'
					THEN TRIM(custom_field_value)
				END), '') opening_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Amortization Months'
					THEN TRIM(custom_field_value)
				END), '') original_amortization_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Appraisal Amount'
					THEN TRIM(custom_field_value)
				END), '') original_appraisal_amount
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Appraisal Date'
					THEN TRIM(custom_field_value)
				END), '') original_appraisal_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Beacon Date'
					THEN TRIM(custom_field_value)
				END), '') original_beacon_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original LTV'
					THEN TRIM(custom_field_value)
				END), 0) original_ltv
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Rate'
					THEN TRIM(custom_field_value)
				END), '') original_rate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Rate Type'
					THEN TRIM(custom_field_value)
				END), '') original_rate_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Term Months'
					THEN TRIM(custom_field_value)
				END), '') original_term_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Ownership Type'
					THEN TRIM(custom_field_value)
				END), '') ownership_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Payment Frequency'
					THEN TRIM(custom_field_value)
				END), '') payment_frequency
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Payment to be returned once cleared'
					THEN TRIM(custom_field_value)
				END), '') payment_to_be_returned_once_cleared
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Penalty in Months'
					THEN TRIM(custom_field_value)
				END), '') penalty_in_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Penalty Interest'
					THEN TRIM(custom_field_value)
				END), '') penalty_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Per Diem Offset'
					THEN TRIM(custom_field_value)
				END), '') per_diem_offset
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Percent Owned'
					THEN TRIM(custom_field_value)
				END), '') percent_owned
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Period Start Date'
					THEN TRIM(custom_field_value)
				END), '') period_start_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Person Account Current Income Type'
					THEN TRIM(custom_field_value)
				END), '') person_account_current_income_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Pool Number'
					THEN TRIM(custom_field_value)
				END), '') pool_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Postage and Delivery Costs'
					THEN TRIM(custom_field_value)
				END), '') postage_and_delivery_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Posted Date'
					THEN TRIM(custom_field_value)
				END), '') posted_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepaid Credit if applicable'
					THEN TRIM(custom_field_value)
				END), '') prepaid_credit_if_applicable
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepayment Costs'
					THEN TRIM(custom_field_value)
				END), '') prepayment_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepayment Term Type'
					THEN TRIM(custom_field_value)
				END), '') prepayment_term_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal'
					THEN TRIM(custom_field_value)
				END), '') principal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal Arrears'
					THEN TRIM(custom_field_value)
				END), '') principal_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal Balance'
					THEN TRIM(custom_field_value)
				END), '') principal_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Product Name'
					THEN TRIM(custom_field_value)
				END), '') product_name
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'ProRated Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') prorated_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'PYMT PLAN DUE DAY'
					THEN TRIM(custom_field_value)
				END), 0) pymt_plan_due_day
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Pymt with NSF'
					THEN TRIM(custom_field_value)
				END), '') pymt_with_nsf
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Reason for Arrears'
					THEN TRIM(custom_field_value)
				END), '') reason_for_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Reduction to Mortgagor'
					THEN TRIM(custom_field_value)
				END), '') reduction_to_mortgagor
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Remaining Amortization'
					THEN TRIM(custom_field_value)
				END), '') remaining_amortization
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Renewal Date'
					THEN TRIM(custom_field_value)
				END), '') renewal_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Renewed Date'
					THEN TRIM(custom_field_value)
				END), '') renewed_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'REO'
					THEN TRIM(custom_field_value)
				END), '') reo
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Repayment Type'
					THEN TRIM(custom_field_value)
				END), '') repayment_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supp Claim Funds Received'
					THEN TRIM(custom_field_value)
				END), '') supp_claim_funds_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supp Claim Received'
					THEN TRIM(custom_field_value)
				END), '') supp_claim_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supplementary Claim Filed'
					THEN TRIM(custom_field_value)
				END), '') supplementary_claim_filed
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'TDSRQual'
					THEN TRIM(custom_field_value)
				END), '') tdsrqual
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Term In Months'
					THEN TRIM(custom_field_value)
				END), '') term_in_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Txn Definition'
					THEN TRIM(custom_field_value)
				END), '') txn_definition
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Type'
					THEN TRIM(custom_field_value)
				END), '') adhoc_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Wire Fee'
					THEN TRIM(custom_field_value)
				END), '') wire_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Property Type'
					THEN TRIM(custom_field_value)
				END), '') property_type
FROM (
	SELECT t3.as_at_date_rk
		,loan_rec_id
		,account_no
		,'{"CustomFields":' + t3.CustomFields + '}' loan_custom_field
	FROM (
		SELECT t1.as_at_date_rk
			,t2.*
		FROM (
			SELECT *
			FROM api_response
			WHERE api_rk = (
					SELECT api_rk
					FROM vw_api_master
					WHERE api_code = 'GET_LOAN_BY_TS'
					)
				AND is_processed = 0
				AND is_error = 0
			) t1
		CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
				loan_rec_id VARCHAR(200) '$.RecID'
				,account_no VARCHAR(55) '$.Account'
				,[CustomFields] NVARCHAR(MAX) AS JSON
				) t2
		) t3
	) t4
CROSS APPLY OPENJSON(t4.loan_custom_field, '$.CustomFields') WITH (
		custom_field_name VARCHAR(200) '$.Name'
		,custom_field_value VARCHAR(200) '$.Value'
		) t5
WHERE LEN(custom_field_value) > 0
	AND custom_field_value IS NOT NULL
GROUP BY t4.as_at_date_rk
	,t4.loan_rec_id
	,t4.account_no

---- customer field mutiple rows for one loan
--Select * from stg_api_data 
--SELECT * FROM  vw_Api_Data_Get_Loan_By_TS_Custom_Info;


-- dbo.vw_api_data_get_loan_by_ts_custom_info_full source

ALTER VIEW [dbo].[vw_api_data_get_loan_by_ts_custom_info_full]
AS
/*

Objective: Process the custom loans api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By: Shabbir Pinjari
Revision On: 01-Oct-2025
Change Details: Added columns(mortgage_processing_fee_percent,mortgage_processing_fee_in_dollars,loan_modified) as requested

*/
SELECT t4.as_at_date_rk
	,t4.loan_rec_id
	,t4.account_no
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'a'
					THEN TRIM(custom_field_value)
				END), '') adhoc_a
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Account Name'
					THEN TRIM(custom_field_value)
				END), '') account_name
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Accrued Interest'
					THEN TRIM(custom_field_value)
				END), '') accrued_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Actual LTV'
					THEN TRIM(custom_field_value)
				END), '') actual_ltv
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administration Fee renewal'
					THEN TRIM(custom_field_value)
				END), '') administration_fee_renewal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administration Renewal Fee'
					THEN TRIM(custom_field_value)
				END), '') administration_renewal_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Administrative Fees'
					THEN TRIM(custom_field_value)
				END), '') administrative_fees
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Amortization Term in Years'
					THEN TRIM(custom_field_value)
				END), '') amortization_term_in_years
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Application Purpose'
					THEN TRIM(custom_field_value)
				END), '') application_purpose
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'ARM Floor'
					THEN TRIM(custom_field_value)
				END), '') arm_floor
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Arrears Balance'
					THEN TRIM(custom_field_value)
				END), '') arrears_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Authorized Amount'
					THEN TRIM(custom_field_value)
				END), '') authorized_amount
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'b'
					THEN TRIM(custom_field_value)
				END), '') adhoc_b
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Balance of Auto Renewal LF'
					THEN TRIM(custom_field_value)
				END), '') balance_of_auto_renewal_lf
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Balance of Renewal Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') balance_of_renewal_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Bank of Canada Overnight Rate'
					THEN TRIM(custom_field_value)
				END), '') bank_of_canada_overnight_rate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 1'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 2'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Beacon Score 3'
					THEN TRIM(custom_field_value)
				END), 0) beacon_score_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'c'
					THEN TRIM(custom_field_value)
				END), '') adhoc_c
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Calculated GDS'
					THEN TRIM(custom_field_value)
				END), '') calculated_gds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Calculated TDS'
					THEN TRIM(custom_field_value)
				END), '') calculated_tds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Cash back'
					THEN TRIM(custom_field_value)
				END), '') cash_back
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Chosen Rate Type'
					THEN TRIM(custom_field_value)
				END), '') chosen_rate_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 1'
					THEN TRIM(custom_field_value)
				END), '') coborrower_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 2'
					THEN TRIM(custom_field_value)
				END), '') coborrower_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'CoBorrower 3'
					THEN TRIM(custom_field_value)
				END), '') coborrower_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Collection Cost'
					THEN TRIM(custom_field_value)
				END), '') collection_cost
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Daily ProRated Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') daily_prorated_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Daily ProRated Prepayment Costs'
					THEN TRIM(custom_field_value)
				END), '') daily_prorated_prepayment_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Days from Letter'
					THEN TRIM(custom_field_value)
				END), '') days_from_letter
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Days in Arrears'
					THEN TRIM(custom_field_value)
				END), '') days_in_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Default Legal Proceedings Fee'
					THEN TRIM(custom_field_value)
				END), '') default_legal_proceedings_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Administration Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_administration_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Coding'
					THEN TRIM(custom_field_value)
				END), '') discharge_coding
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge Mortgage Statement Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_mortgage_statement_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharge of Mortgage Fee'
					THEN TRIM(custom_field_value)
				END), '') discharge_of_mortgage_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Discharging Prinicpal'
					THEN TRIM(custom_field_value)
				END), '') discharging_prinicpal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Effective Date'
					THEN TRIM(custom_field_value)
				END), '') effective_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Final Discharge'
					THEN TRIM(custom_field_value)
				END), '') final_discharge
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'First Loan Number'
					THEN TRIM(custom_field_value)
				END), '') first_loan_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'First Payment Date'
					THEN TRIM(custom_field_value)
				END), '') first_payment_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'FMLP'
					THEN TRIM(custom_field_value)
				END), '') fmlp
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Funding Partner'
					THEN TRIM(custom_field_value)
				END), '') funding_partner
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Funds'
					THEN TRIM(custom_field_value)
				END), '') funds
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'GDSRQual'
					THEN TRIM(custom_field_value)
				END), '') gdsrqual
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 1'
					THEN TRIM(custom_field_value)
				END), '') income_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 2'
					THEN TRIM(custom_field_value)
				END), '') income_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income 3'
					THEN TRIM(custom_field_value)
				END), '') income_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income Type 1'
					THEN TRIM(custom_field_value)
				END), '') income_type_1
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Income Type 2'
					THEN TRIM(custom_field_value)
				END), '') income_type_2
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'IncomeType 3'
					THEN TRIM(custom_field_value)
				END), '') income_type_3
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Installments in Arrears'
					THEN TRIM(custom_field_value)
				END), '') installments_in_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurance Policy Certificate'
					THEN TRIM(custom_field_value)
				END), '') insurance_policy_certificate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurer'
					THEN TRIM(custom_field_value)
				END), '') insurer
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Insurer Policy'
					THEN TRIM(custom_field_value)
				END), '') insurer_policy
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest'
					THEN TRIM(custom_field_value)
				END), '') interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest Adjustment Date'
					THEN TRIM(custom_field_value)
				END), '') interest_adjustment_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Interest Arrears'
					THEN TRIM(custom_field_value)
				END), '') interest_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Last Contact Date'
					THEN TRIM(custom_field_value)
				END), '') last_contact_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Late Payment Interest'
					THEN TRIM(custom_field_value)
				END), '') late_payment_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Law Firm'
					THEN TRIM(custom_field_value)
				END), '') law_firm
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Legal'
					THEN TRIM(custom_field_value)
				END), '') legal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Legal Action'
					THEN TRIM(custom_field_value)
				END), '') legal_action
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender'
					THEN TRIM(custom_field_value)
				END), '') lender
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee in Dollars Original'
					THEN TRIM(custom_field_value)
				END), '') lender_fee_in_dollars_original
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Lender Fee in Percent Original'
					THEN TRIM(custom_field_value)
				END), '') lender_fee_in_percent_original
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Charges to MCC'
					THEN TRIM(custom_field_value)
				END), '') loan_charges_to_mcc
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Purpose'
					THEN TRIM(custom_field_value)
				END), '') loan_purpose
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Status'
					THEN TRIM(custom_field_value)
				END), '') loan_status
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Type'
					THEN TRIM(custom_field_value)
				END), '') loan_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Filed'
					THEN TRIM(custom_field_value)
				END), '') main_claim_filed
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Funds Received'
					THEN TRIM(custom_field_value)
				END), '') main_claim_funds_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Main Claim Received'
					THEN TRIM(custom_field_value)
				END), '') main_claim_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Maintenance of Property'
					THEN TRIM(custom_field_value)
				END), '') maintenance_of_property
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'MBS Pool Number'
					THEN TRIM(custom_field_value)
				END), '') mbs_pool_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Agent'
					THEN TRIM(custom_field_value)
				END), '') mortgage_agent
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Brokerage'
					THEN TRIM(custom_field_value)
				END), '') mortgage_brokerage
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Next Payment'
					THEN TRIM(custom_field_value)
				END), '') next_payment
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Next Step'
					THEN TRIM(custom_field_value)
				END), '') next_step
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'NSF Pymt Due Date'
					THEN TRIM(custom_field_value)
				END), '') nsf_pymt_due_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Number of Units'
					THEN TRIM(custom_field_value)
				END), '') number_of_units
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Opening Balance'
					THEN TRIM(custom_field_value)
				END), '') opening_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Amortization Months'
					THEN TRIM(custom_field_value)
				END), '') original_amortization_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Appraisal Amount'
					THEN TRIM(custom_field_value)
				END), '') original_appraisal_amount
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Appraisal Date'
					THEN TRIM(custom_field_value)
				END), '') original_appraisal_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Beacon Date'
					THEN TRIM(custom_field_value)
				END), '') original_beacon_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original LTV'
					THEN TRIM(custom_field_value)
				END), 0) original_ltv
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Rate'
					THEN TRIM(custom_field_value)
				END), '') original_rate
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Rate Type'
					THEN TRIM(custom_field_value)
				END), '') original_rate_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Original Term Months'
					THEN TRIM(custom_field_value)
				END), '') original_term_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Ownership Type'
					THEN TRIM(custom_field_value)
				END), '') ownership_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Payment Frequency'
					THEN TRIM(custom_field_value)
				END), '') payment_frequency
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Payment to be returned once cleared'
					THEN TRIM(custom_field_value)
				END), '') payment_to_be_returned_once_cleared
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Penalty in Months'
					THEN TRIM(custom_field_value)
				END), '') penalty_in_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Penalty Interest'
					THEN TRIM(custom_field_value)
				END), '') penalty_interest
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Per Diem Offset'
					THEN TRIM(custom_field_value)
				END), '') per_diem_offset
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Percent Owned'
					THEN TRIM(custom_field_value)
				END), '') percent_owned
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Period Start Date'
					THEN TRIM(custom_field_value)
				END), '') period_start_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Person Account Current Income Type'
					THEN TRIM(custom_field_value)
				END), '') person_account_current_income_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Pool Number'
					THEN TRIM(custom_field_value)
				END), '') pool_number
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Postage and Delivery Costs'
					THEN TRIM(custom_field_value)
				END), '') postage_and_delivery_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Posted Date'
					THEN TRIM(custom_field_value)
				END), '') posted_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepaid Credit if applicable'
					THEN TRIM(custom_field_value)
				END), '') prepaid_credit_if_applicable
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepayment Costs'
					THEN TRIM(custom_field_value)
				END), '') prepayment_costs
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Prepayment Term Type'
					THEN TRIM(custom_field_value)
				END), '') prepayment_term_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal'
					THEN TRIM(custom_field_value)
				END), '') principal
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal Arrears'
					THEN TRIM(custom_field_value)
				END), '') principal_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Principal Balance'
					THEN TRIM(custom_field_value)
				END), '') principal_balance
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Product Name'
					THEN TRIM(custom_field_value)
				END), '') product_name
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'ProRated Lender Fee'
					THEN TRIM(custom_field_value)
				END), '') prorated_lender_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'PYMT PLAN DUE DAY'
					THEN TRIM(custom_field_value)
				END), 0) pymt_plan_due_day
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Pymt with NSF'
					THEN TRIM(custom_field_value)
				END), '') pymt_with_nsf
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Reason for Arrears'
					THEN TRIM(custom_field_value)
				END), '') reason_for_arrears
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Reduction to Mortgagor'
					THEN TRIM(custom_field_value)
				END), '') reduction_to_mortgagor
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Remaining Amortization'
					THEN TRIM(custom_field_value)
				END), '') remaining_amortization
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Renewal Date'
					THEN TRIM(custom_field_value)
				END), '') renewal_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Renewed Date'
					THEN TRIM(custom_field_value)
				END), '') renewed_date
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'REO'
					THEN TRIM(custom_field_value)
				END), '') reo
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Repayment Type'
					THEN TRIM(custom_field_value)
				END), '') repayment_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supp Claim Funds Received'
					THEN TRIM(custom_field_value)
				END), '') supp_claim_funds_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supp Claim Received'
					THEN TRIM(custom_field_value)
				END), '') supp_claim_received
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Supplementary Claim Filed'
					THEN TRIM(custom_field_value)
				END), '') supplementary_claim_filed
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'TDSRQual'
					THEN TRIM(custom_field_value)
				END), '') tdsrqual
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Term In Months'
					THEN TRIM(custom_field_value)
				END), '') term_in_months
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Txn Definition'
					THEN TRIM(custom_field_value)
				END), '') txn_definition
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Type'
					THEN TRIM(custom_field_value)
				END), '') adhoc_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Wire Fee'
					THEN TRIM(custom_field_value)
				END), '') wire_fee
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Property Type'
					THEN TRIM(custom_field_value)
				END), '') property_type
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Processing Fee Percent'
					THEN TRIM(custom_field_value)
				END), '') mortgage_processing_fee_percent
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Mortgage Processing Fee in Dollars'
					THEN TRIM(custom_field_value)
				END), '') mortgage_processing_fee_in_dollars
	,ISNULL(MAX(CASE 
				WHEN custom_field_name = 'Loan Modified'
					THEN TRIM(custom_field_value)
				END), '') loan_modified
FROM (
	SELECT t3.as_at_date_rk
		,loan_rec_id
		,account_no
		,'{"CustomFields":' + t3.CustomFields + '}' loan_custom_field
	FROM (
		SELECT t1.as_at_date_rk
			,t2.*
		FROM (
			SELECT *
			FROM api_response_full
			WHERE api_rk = (
					SELECT api_rk
					FROM vw_api_master
					WHERE api_code = 'GET_LOAN_BY_TS'
					)
				AND is_processed = 0
				AND is_error = 0
			) t1
		CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (
				loan_rec_id VARCHAR(200) '$.RecID'
				,account_no VARCHAR(55) '$.Account'
				,[CustomFields] NVARCHAR(MAX) AS JSON
				) t2
		) t3
	) t4
CROSS APPLY OPENJSON(t4.loan_custom_field, '$.CustomFields') WITH (
		custom_field_name VARCHAR(200) '$.Name'
		,custom_field_value VARCHAR(200) '$.Value'
		) t5
WHERE LEN(custom_field_value) > 0
	AND custom_field_value IS NOT NULL
GROUP BY t4.as_at_date_rk
	,t4.loan_rec_id
	,t4.account_no

---- customer field mutiple rows for one loan
--Select * from stg_api_data 
--SELECT * FROM  vw_api_data_get_loan_by_ts_custom_info;


-- dbo.vw_api_data_get_loan_by_ts_full source

ALTER VIEW [dbo].[vw_api_data_get_loan_by_ts_full]  
AS  

SELECT t1.as_at_date_rk  
 ,t1.api_response_rk   
 ,loan_rec_id  
 ,los_loan_rec_id  
 ,borrower_rec_id  
 ,account_no  
 ,ach  
 ,iif(len(trim(first_name)) = 0, '', trim(first_name) + ' ') + iif(len(trim(mi)) = 0, '', trim(mi) + ' ') + iif(len(trim(last_name)) = 0, '', trim(last_name)) borrower_name  
 ,hold  
 ,by_last_name  
 ,first_name  
 ,mi  
 ,last_name  
 ,dbo.fn_get_actual_date(intrest_paid_to) intrest_paid_to  
 ,dbo.fn_get_actual_date(payment_due_date) payment_due_date  
 ,payment_frequency  
 ,regular_payment  
 ,apply_to_pi  
 ,apply_to_reserve  
 ,apply_to_impound  
 ,apply_to_other  
 ,dbo.fn_get_actual_date(maturity_date) maturity_date  
 ,term_left  
 ,late_days  
 ,dbo.fn_get_actual_date(paid_off_date) paid_off_date  
 ,note_rate  
 ,sold_rate  
 ,loan_priority  
 ,principal_balance  
 ,trust_balance  
 ,impound_balance  
 ,reserve_balance  
 ,unpaid_late_charges  
 ,unpaid_charges  
 ,unpaid_intrest  
 ,street  
 ,city  
 ,[state]  
 ,zip_code  
 ,home_phone  
 ,work_phone  
 ,cell_phone  
 ,fax_phone  
 ,tin  
 ,loan_type  
 ,rate_type  
 ,email_id  
 ,property_description  
 ,property_street  
 ,property_city  
 ,property_state  
 ,property_zip  
 ,property_country  
 ,property_type  
 ,property_occupancy  
 ,property_ltv  
 ,property_apn  
 ,aggregate_appraised_value  
 ,calculated_ltv  
 ,dbo.fn_get_actual_date(closing_date) closing_date  
 ,dbo.fn_get_actual_date(first_payment_date) first_payment_date  
 ,dbo.fn_get_actual_date(purhcase_date) purhcase_date  
 ,dbo.fn_get_actual_date(booking_date) booking_date  
 ,dbo.fn_get_actual_date(next_revision) next_revision  
 ,original_balance_amt  
 ,unearned_discount  
 ,loan_code  
 ,dbo.fn_get_actual_date(appraisal_date) appraisal_date  
 ,aggregate_senior_liens  
 ,loan_officer  
 ,dbo.fn_get_actual_date(dob) dob  
 ,loan_status  
 ,loan_timestamp  
 ,CASE   
  WHEN dbo.fn_get_actual_date(paid_off_date) IS NULL  
   THEN CASE   
     WHEN isnull(principal_balance, 0) > 0  
      THEN 'O'  
     ELSE 'C'  
     END  
  ELSE 'C'  
  END account_status  
FROM (  
 SELECT *  
 FROM Api_response_full
 WHERE api_rk = (  
   SELECT api_rk  
   FROM vw_api_master  
   WHERE api_code = 'GET_LOAN_BY_TS'  
   )  
  AND is_processed = 0  
  AND is_error = 0  
 ) t1  
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (  
  loan_rec_id VARCHAR(55) '$.RecID'  
  ,los_loan_rec_id VARCHAR(55) '$.LOSLoanRecID'  
  ,borrower_rec_id VARCHAR(55) '$.BorrowerRecID'  
  ,account_no VARCHAR(55) '$.Account'  
  ,ach INT '$.ACH'  
  ,hold VARCHAR(10) '$.Hold'  
  ,by_last_name VARCHAR(255) '$.ByLastName'  
  ,first_name VARCHAR(255) '$.PrimaryBorrower.FirstName'  
  ,mi VARCHAR(255) '$.PrimaryBorrower.MI'  
  ,last_name VARCHAR(255) '$.PrimaryBorrower.LastName'  
  ,intrest_paid_to DATE '$.InterestPaidTo'  
  ,payment_due_date DATE '$.PaymentDueDate'  
  ,payment_frequency VARCHAR(25) '$.PaymentFrequency'  
  ,regular_payment DECIMAL(18, 2) '$.RegularPayment'  
  ,apply_to_pi DECIMAL(18, 2) '$.ApplyToPI'  
  ,apply_to_reserve DECIMAL(18, 2) '$.ApplyToReserve'  
  ,apply_to_impound DECIMAL(18, 2) '$.ApplyToImpound'  
  ,apply_to_other DECIMAL(18, 2) '$.ApplyToOther'  
  ,maturity_date DATE '$.MaturityDate'  
  ,term_left INT '$.TermLeft'  
  ,late_days INT '$.DaysLate'  
  ,paid_off_date DATE '$.PaidOffDate'  
  ,note_rate DECIMAL(9, 4) '$.NoteRate'  
  ,sold_rate DECIMAL(9, 4) '$.SoldRate'  
  ,loan_priority INT '$.Priority'  
  ,principal_balance DECIMAL(18, 2) '$.PrincipalBalance'  
  ,trust_balance DECIMAL(18, 2) '$.TrustBalance'  
  ,impound_balance DECIMAL(18, 2) '$.ImpoundBalance'  
  ,reserve_balance DECIMAL(18, 2) '$.ReserveBalance'  
  ,unpaid_late_charges DECIMAL(18, 2) '$.UnpaidLateCharges'  
  ,unpaid_charges DECIMAL(18, 2) '$.UnpaidCharges'  
  ,unpaid_intrest DECIMAL(18, 2) '$.UnpaidInterest'  
  ,street VARCHAR(255) '$.PrimaryBorrower.Street'  
  ,city VARCHAR(255) '$.PrimaryBorrower.City'  
  ,STATE VARCHAR(255) '$.PrimaryBorrower.State'  
  ,zip_code VARCHAR(255) '$.PrimaryBorrower.ZipCode'  
  ,home_phone VARCHAR(100) '$.PrimaryBorrower.PhoneHome'  
  ,work_phone VARCHAR(100) '$.PrimaryBorrower.PhoneWork'  
  ,cell_phone VARCHAR(100) '$.PrimaryBorrower.PhoneCell'  
  ,fax_phone VARCHAR(100) '$.PrimaryBorrower.PhoneFax'  
  ,tin VARCHAR(100) '$.PrimaryBorrower.TIN'  
  ,loan_type INT '$.LoanType'  
  ,rate_type INT '$.RateType'  
  ,email_id VARCHAR(255) '$.EmailAddress'  
  ,property_description VARCHAR(255) '$.PropertyDescription'  
  ,property_street VARCHAR(255) '$.PropertyStreet'  
  ,property_city VARCHAR(255) '$.PropertyCity'  
  ,property_state VARCHAR(255) '$.PropertyState'  
  ,property_zip VARCHAR(25) '$.PropertyZip'  
  ,property_country VARCHAR(100) '$.PropertyCounty'  
  ,property_type VARCHAR(55) '$.PropertyType'  
  ,property_occupancy VARCHAR(55) '$.PropertyOccupancy'  
  ,property_ltv DECIMAL(9, 4) '$.PropertyLTV'  
  ,property_apn VARCHAR(55) '$.PropertyAPN'  
  ,aggregate_appraised_value DECIMAL(18, 2) '$.AggregateAppraisedValue'  
  ,calculated_ltv DECIMAL(18, 4) '$.CalculatedLTV'
  ,closing_date DATE '$.ClosingDate'  
  ,first_payment_date DATE '$.FirstPaymentDate'  
  ,purhcase_date DATE '$.PurchaseDate'  
  ,booking_date DATE '$.BookingDate'  
  ,next_revision DATE '$.NextRevision'  
  ,original_balance_amt DECIMAL(18, 2) '$.OriginalBalance'  
  ,unearned_discount DECIMAL(18, 2) '$.UnearnedDiscount'  
  ,loan_code VARCHAR(55) '$.LoanCode'  
  ,appraisal_date DATE '$.AppraisalDate'  
  ,aggregate_senior_liens DECIMAL(18, 2) '$.AggregateSeniorLiens'  
  ,loan_officer VARCHAR(255) '$.LoanOfficer'  
  ,dob DATE '$.PrimaryBorrower.DOB'  
  ,loan_status VARCHAR(55) '$.__type'  
  ,loan_timestamp DATETIME '$.SysTimeStamp'  
  ) t2;


-- dbo.vw_api_data_get_loan_by_ts_unified_full source

ALTER VIEW dbo.vw_api_data_get_loan_by_ts_unified_full
AS
/*
FINAL UNIFIED VIEW (PROD READY)
Includes:
1. All Base Loan Columns
2. All Custom Info Columns (Pivoted)
No column missing.
*/

SELECT
    -- ===== ALL BASE LOAN COLUMNS =====
    l.as_at_date_rk,
    l.api_response_rk,
    l.loan_rec_id,
    l.los_loan_rec_id,
    l.borrower_rec_id,
    l.account_no,
    l.ach,
    l.borrower_name,
    l.hold,
    l.by_last_name,
    l.first_name,
    l.mi,
    l.last_name,
    l.intrest_paid_to,
    l.payment_due_date,
    l.payment_frequency,
    l.regular_payment,
    l.apply_to_pi,
    l.apply_to_reserve,
    l.apply_to_impound,
    l.apply_to_other,
    l.maturity_date,
    l.term_left,
    l.late_days,
    l.paid_off_date,
    l.note_rate,
    l.sold_rate,
    l.loan_priority,
    l.principal_balance,
    l.trust_balance,
    l.impound_balance,
    l.reserve_balance,
    l.unpaid_late_charges,
    l.unpaid_charges,
    l.unpaid_intrest,
    l.street,
    l.city,
    l.state,
    l.zip_code,
    l.home_phone,
    l.work_phone,
    l.cell_phone,
    l.fax_phone,
    l.tin,
    l.loan_type,
    l.rate_type,
    l.email_id,
    l.property_description,
    l.property_street,
    l.property_city,
    l.property_state,
    l.property_zip,
    l.property_country,
    l.property_type,
    l.property_occupancy,
    l.property_ltv,
    l.property_apn,
    l.aggregate_appraised_value,
    l.calculated_ltv,
    l.closing_date,
    l.first_payment_date,
    l.purhcase_date,
    l.booking_date,
    l.next_revision,
    l.original_balance_amt,
    l.unearned_discount,
    l.loan_code,
    l.appraisal_date,
    l.aggregate_senior_liens,
    l.loan_officer,
    l.dob,
    l.loan_status,
    l.loan_timestamp,
    l.account_status,

    -- ===== ALL CUSTOM INFO COLUMNS =====
    c.adhoc_a,
    c.account_name,
    c.accrued_interest,
    c.actual_ltv,
    c.administration_fee_renewal,
    c.administration_renewal_fee,
    c.administrative_fees,
    c.amortization_term_in_years,
    c.application_purpose,
    c.arm_floor,
    c.arrears_balance,
    c.authorized_amount,
    c.adhoc_b,
    c.balance_of_auto_renewal_lf,
    c.balance_of_renewal_lender_fee,
    c.bank_of_canada_overnight_rate,
    c.beacon_score_1,
    c.beacon_score_2,
    c.beacon_score_3,
    c.adhoc_c,
    c.calculated_gds,
    c.calculated_tds,
    c.cash_back,
    c.chosen_rate_type,
    c.coborrower_1,
    c.coborrower_2,
    c.coborrower_3,
    c.collection_cost,
    c.daily_prorated_lender_fee,
    c.daily_prorated_prepayment_costs,
    c.days_from_letter,
    c.days_in_arrears,
    c.default_legal_proceedings_fee,
    c.discharge_administration_fee,
    c.discharge_coding,
    c.discharge_mortgage_statement_fee,
    c.discharge_of_mortgage_fee,
    c.discharging_prinicpal,
    c.effective_date,
    c.final_discharge,
    c.first_loan_number,
    c.fmlp,
    c.funding_partner,
    c.funds,
    c.gdsrqual,
    c.income_1,
    c.income_2,
    c.income_3,
    c.income_type_1,
    c.income_type_2,
    c.income_type_3,
    c.installments_in_arrears,
    c.insurance_policy_certificate,
    c.insurer,
    c.insurer_policy,
    c.interest,
    c.interest_adjustment_date,
    c.interest_arrears,
    c.last_contact_date,
    c.late_payment_interest,
    c.law_firm,
    c.legal,
    c.legal_action,
    c.lender,
    c.lender_fee,
    c.lender_fee_in_dollars_original,
    c.lender_fee_in_percent_original,
    c.loan_charges_to_mcc,
    c.loan_purpose,
    c.main_claim_filed,
    c.main_claim_funds_received,
    c.main_claim_received,
    c.maintenance_of_property,
    c.mbs_pool_number,
    c.mortgage_agent,
    c.mortgage_brokerage,
    c.next_payment,
    c.next_step,
    c.nsf_pymt_due_date,
    c.number_of_units,
    c.opening_balance,
    c.original_amortization_months,
    c.original_appraisal_amount,
    c.original_appraisal_date,
    c.original_beacon_date,
    c.original_ltv,
    c.original_rate,
    c.original_rate_type,
    c.original_term_months,
    c.ownership_type,
    c.payment_to_be_returned_once_cleared,
    c.penalty_in_months,
    c.penalty_interest,
    c.per_diem_offset,
    c.percent_owned,
    c.period_start_date,
    c.person_account_current_income_type,
    c.pool_number,
    c.postage_and_delivery_costs,
    c.posted_date,
    c.prepaid_credit_if_applicable,
    c.prepayment_costs,
    c.prepayment_term_type,
    c.principal,
    c.principal_arrears,
    c.product_name,
    c.prorated_lender_fee,
    c.pymt_plan_due_day,
    c.pymt_with_nsf,
    c.reason_for_arrears,
    c.reduction_to_mortgagor,
    c.remaining_amortization,
    c.renewal_date,
    c.renewed_date,
    c.reo,
    c.repayment_type,
    c.supp_claim_funds_received,
    c.supp_claim_received,
    c.supplementary_claim_filed,
    c.tdsrqual,
    c.term_in_months,
    c.txn_definition,
    c.adhoc_type,
    c.wire_fee,
    c.mortgage_processing_fee_percent,
    c.mortgage_processing_fee_in_dollars,
    c.loan_modified

FROM dbo.vw_api_data_get_loan_by_ts_full l
LEFT JOIN dbo.vw_api_data_get_loan_by_ts_custom_info_full c
    ON l.loan_rec_id = c.loan_rec_id
   AND l.account_no = c.account_no
   AND l.as_at_date_rk = c.as_at_date_rk;


-- dbo.vw_api_data_get_loan_history_by_ts source

ALTER VIEW [dbo].[vw_api_data_get_loan_history_by_ts]    
  
AS    
/*    
    
Objective: Process the loans history api data into tabular format    
Created By: Shabbir Pinjari    
Created On: 21-Mar-2025    
Version No: 1.0    
    
#### Change History #####    
Revision By:    
Revision On:    
Change Details:    
    
*/    
SELECT t1.as_at_date_rk    
 ,t1.api_response_rk    
 --t1.working_date ,    
 ,ach_batch_number    
 ,ach_trace_number    
 ,ach_trans_number    
 ,dbo.fn_get_actual_date_time(ach_transmission_datetime) ach_transmission_datetime
 ,dbo.fn_get_actual_date(due_date) due_date     
 ,dbo.fn_get_actual_date(date_rec) date_rec    
 ,group_rec_id    
 ,late_charge    
 ,loan_account    
 ,loan_balance    
 ,loan_rec_id    
 ,nsf_source_rec_id    
 ,notes    
 ,dbo.fn_get_actual_date(paid_to) paid_to    
 ,pay_method    
 ,rec_id    
 ,reference    
 ,source_app    
 ,source_typ    
 ,sys_created_by    
 ,CAST(dbo.fn_get_actual_date_time(sys_created_date) AS DATETIME) sys_created_date
 ,to_broker_fee    
 ,to_charges_int    
 ,to_charges_prin    
 ,to_current_bill    
 ,to_default_interest    
 ,to_impound    
 ,to_interest    
 ,to_late_charge    
 ,to_lender_fee    
 ,to_other_payments    
 ,to_other_tax_free    
 ,to_other_taxable    
 ,to_past_due    
 ,to_prepay    
 ,to_principal    
 ,to_reserve    
 ,to_unearned_discount    
 ,to_unpaid_interest    
 ,total_amount    
FROM (    
 SELECT *    
 FROM api_response    
 WHERE api_rk = (    
   SELECT api_rk    
   FROM vw_api_master    
   WHERE api_code = 'GET_LOAN_HISTORY_BY_TS'    
   )    
  AND is_processed = 0    
  AND is_error = 0    
 ) t1    
CROSS APPLY OPENJSON(t1.api_response, '$.Data') WITH (    
  ach_batch_number varchar(50) '$.ACH_BatchNumber',    
  ach_trace_number varchar(100) '$.ACH_TraceNumber',    
  ach_trans_number varchar(50) '$.ACH_TransNumber',    
  ach_transmission_datetime datetime '$.ACH_Transmission_DateTime',    
  due_date Date '$.DateDue',    
  date_rec Date '$.DateRec',    
  group_rec_id varchar(50) '$.GroupRecID',    
  late_charge Decimal(18,2) '$.LateCharge',    
  loan_account varchar(50) '$.LoanAccount',    
  loan_balance Decimal(18,2) '$.LoanBalance',    
  loan_rec_id varchar(100) '$.LoanRecID',    
  nsf_source_rec_id varchar(100) '$.NSFSourceRecID',    
  notes varchar(100) '$.Notes',    
  paid_to Date '$.PaidTo',    
  pay_method int '$.PayMethod',    
  rec_id varchar(100) '$.RecID',    
  reference varchar(100) '$.Reference',    
  source_app varchar(50) '$.SourceApp',    
  source_typ varchar(50) '$.SourceTyp',    
  sys_created_by varchar(255) '$.SysCreatedBy',    
  sys_created_date varchar(50) '$.SysCreatedDate',    
  to_broker_fee Decimal(18,2) '$.ToBrokerFee',    
  to_charges_int Decimal(18,2) '$.ToChargesInt',    
  to_charges_prin Decimal(18,2) '$.ToChargesPrin',    
  to_current_bill Decimal(18,2) '$.ToCurrentBill',    
  to_default_interest Decimal(18,2) '$.ToDefaultInterest',    
  to_impound Decimal(18,2) '$.ToImpound',    
  to_interest Decimal(18,2) '$.ToInterest',    
  to_late_charge Decimal(18,2) '$.ToLateCharge',    
  to_lender_fee Decimal(18,2) '$.ToLenderFee',    
  to_other_payments Decimal(18,2) '$.ToOtherPayments',    
  to_other_tax_free Decimal(18,2) '$.ToOtherTaxFree',    
  to_other_taxable Decimal(18,2) '$.ToOtherTaxable',    
  to_past_due Decimal(18,2) '$.ToPastDue',    
  to_prepay Decimal(18,2) '$.ToPrepay',    
  to_principal Decimal(18,2) '$.ToPrincipal',    
  to_reserve Decimal(18,2) '$.ToReserve',    
  to_unearned_discount Decimal(18,2) '$.ToUnearnedDiscount',    
  to_unpaid_interest Decimal(18,2) '$.ToUnpaidInterest',    
  total_amount Decimal(18,2) '$.TotalAmount'    
  ) t2;


-- dbo.vw_api_master source

ALTER   view vw_api_master   
as  
select     
t1.*,  
t2.*,  
t3.*  
from (Select * from api_master where valid_flag = 'Y') t1    
CROSS APPLY OPENJSON ( t1.api_prop,'$.Header')    
WITH (       
token Varchar(200)    '$.Token',  
dbase_name Varchar(200)    '$.Database',  
--off_set int    '$.Offset',  
page_size int    '$.PageSize'  
) t2  
CROSS APPLY OPENJSON ( t1.api_prop,'$.Offset')    
WITH (       
off_set int    '$.Offset'  
) t3;


-- dbo.vw_dim_customer source

ALTER VIEW dbo.vw_dim_customer
AS
/*
  
  Objective: Base view of dim_customer table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
  SELECT customer_rk,
         borrower_name,
         by_last_name,
         first_name,
         mi,
         last_name,
         tin,
         dob,
         email_id,
         valid_flag,
         valid_from_date,
         valid_to_date,
         created_on,
         created_by,
         mdm_checksum,
         batch_id
  FROM   dim_customer;


-- dbo.vw_dim_day source

ALTER VIEW dbo.vw_dim_day
AS
/*
  
  Objective: Base view of dim_day table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT day_rk
	,month_rk
	,year_rk
	,w_Date
	,w_quarter
	,w_month
	,w_week
	,w_day
	,w_day_of_year
	,w_day_of_week
	,w_quarter_name
	,w_month_name
	,w_week_name
	,w_day_name
	,is_first_day_of_month
	,is_last_day_of_month
FROM dim_day;


-- dbo.vw_dim_lender source

ALTER VIEW dbo.vw_dim_lender
AS
/*
  
  Objective: Base view of dim_lender table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT lender_rk
	,lender_rec_id
	,account_code
	,account_no
	,full_name
	,account_type
	,individual_id
	,account_status
	,lender_timestamp
	,valid_flag
	,valid_from_date
	,valid_to_date
	,created_on
	,created_by
	,mdm_checksum
	,batch_id
FROM dim_lender;


-- dbo.vw_dim_lender_portfolio source

ALTER VIEW dbo.vw_dim_lender_portfolio
AS
/*
  
  Objective: Base view of dim_lender_portfolio table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT lender_portfolio_rk
	,lender_rk
	,loan_rk
	,lender_account_code
	,borrower_name
	,account_no
	,first_funding_date
	,last_funding_date
	,pct_owned AS syndicated_percent
	,lender_rate AS interest_rate
	,note_rate
	,maturity_date
	,term_left
	,next_payment_date
	,regular_payment
	,loan_balance
	,days_late
	,valid_flag
	,valid_from_date
	,valid_to_date
	,created_on
	,created_by
	,mdm_checksum
	,batch_id
FROM dim_lender_portfolio;


-- dbo.vw_dim_loan source

ALTER VIEW dbo.vw_dim_loan
AS
/*
  
  Objective: Base view of dim_loan table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT t1.loan_rk
	,t1.loan_rec_id
	,t1.los_loan_rec_id
	,t1.borrower_rec_id
	,t1.account_no
	,t1.ach
	,t1.hold
	,t1.customer_rk
	,t3.borrower_name
	,t3.by_last_name
	,t3.first_name
	,t3.mi
	,t3.last_name
	,t1.intrest_paid_to
	,t1.payment_due_date
	,t1.payment_frequency
	,t1.regular_payment
	,t1.apply_to_pi
	,t1.apply_to_reserve
	,t1.apply_to_impound
	,t1.apply_to_other
	,t1.maturity_date
	--,t1.term_left
	--,t1.late_days
	,t1.paid_off_date
	,t1.note_rate
	,t1.sold_rate
	,t1.loan_priority
	,CASE 
		WHEN t1.loan_priority = 1
			THEN '1st'
		WHEN t1.loan_priority = 2
			THEN '2nd'
		WHEN t1.loan_priority = 3
			THEN '3rd'
		ELSE 'Not Defined'
		END loan_priority_desc
	,t1.principal_balance
	,t1.trust_balance
	,t1.impound_balance
	,t1.reserve_balance
	,t1.unpaid_late_charges
	,t1.unpaid_charges
	,t1.unpaid_intrest
	,t1.street
	,t1.city
	,t1.STATE
	,t1.zip_code
	,t1.home_phone
	,t1.work_phone
	,t1.cell_phone
	,t1.fax_phone
	,t3.tin
	,t1.loan_type
	,t1.rate_type
	,t3.email_id
	,t1.property_description
	,t1.property_street
	,t1.property_city
	,t1.property_state
	,t1.property_zip
	,t1.property_country
	,t1.property_type
	,t1.property_occupancy
	,t1.property_ltv
	,t1.property_apn
	,t1.aggregate_appraised_value
	,t1.calculated_ltv
	,t1.closing_date
	,t1.first_payment_date
	,t1.purhcase_date
	,t1.booking_date
	,t1.next_revision
	,t1.original_balance_amt
	,t1.unearned_discount
	,t1.loan_code
	,t1.appraisal_date
	,t1.aggregate_senior_liens
	,t1.loan_officer
	,t3.dob
	,t1.loan_status
	,t1.loan_timestamp
	,t1.valid_flag
	,t1.valid_from_date
	,t1.valid_to_date
	,t1.created_on
	,t1.created_by
	,t1.mdm_checksum
	,t1.batch_id
	,t1.account_status
	,t1.region_rk
	,t2.region_name
FROM (
	SELECT *
	FROM dim_loan
	) t1
LEFT OUTER JOIN vw_dim_region t2 ON t1.region_rk = t2.region_rk
LEFT OUTER JOIN vw_dim_customer t3 ON t1.customer_rk = t3.customer_rk;


-- dbo.vw_dim_loan_custom_info source

ALTER VIEW dbo.vw_dim_loan_custom_info
AS
/*
  
  Objective: Base view of dim_loan_custom_info table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT loan_custom_info_rk
	,loan_rk
	,loan_rec_id
	,account_no
	,adhoc_a
	,account_name
	,accrued_interest
	,actual_ltv
	,administration_fee_renewal
	,administration_renewal_fee
	,administrative_fees
	,amortization_term_in_years
	,application_purpose
	,arm_floor
	,arrears_balance
	,authorized_amount
	,adhoc_b
	,balance_of_auto_renewal_lf
	,balance_of_renewal_lender_fee
	,bank_of_canada_overnight_rate
	,beacon_score_1
	,beacon_score_2
	,beacon_score_3
	,adhoc_c
	,calculated_gds
	,calculated_tds
	,cash_back
	,chosen_rate_type
	,coborrower_1
	,coborrower_2
	,coborrower_3
	,collection_cost
	,daily_prorated_lender_fee
	,daily_prorated_prepayment_costs
	,days_from_letter
	,days_in_arrears
	,default_legal_proceedings_fee
	,discharge_administration_fee
	,discharge_coding
	,discharge_mortgage_statement_fee
	,discharge_of_mortgage_fee
	,discharging_prinicpal
	,effective_date
	,final_discharge
	,first_loan_number
	,first_payment_date
	,fmlp
	,funding_partner
	,funds
	,gdsrqual
	,income_1
	,income_2
	,income_3
	,income_type_1
	,income_type_2
	,income_type_3
	,installments_in_arrears
	,insurance_policy_certificate
	,insurer
	,insurer_policy
	,interest
	,interest_adjustment_date
	,interest_arrears
	,last_contact_date
	,late_payment_interest
	,law_firm
	,legal
	,legal_action
	,lender
	,lender_fee
	,lender_fee_in_dollars_original
	,lender_fee_in_percent_original
	,loan_charges_to_mcc
	,loan_purpose
	,loan_status
	,loan_type
	,main_claim_filed
	,main_claim_funds_received
	,main_claim_received
	,maintenance_of_property
	,mbs_pool_number
	,mortgage_agent
	,mortgage_brokerage
	,next_payment
	,next_step
	,nsf_pymt_due_date
	,number_of_units
	,opening_balance
	,original_amortization_months
	,original_appraisal_amount
	,original_appraisal_date
	,original_beacon_date
	,original_ltv
	,original_rate
	,original_rate_type
	,original_term_months
	,ownership_type
	,payment_frequency
	,payment_to_be_returned_once_cleared
	,penalty_in_months
	,penalty_interest
	,per_diem_offset
	,percent_owned
	,period_start_date
	,person_account_current_income_type
	,pool_number
	,postage_and_delivery_costs
	,posted_date
	,prepaid_credit_if_applicable
	,prepayment_costs
	,prepayment_term_type
	,principal
	,principal_arrears
	,principal_balance
	,product_name
	,prorated_lender_fee
	,pymt_plan_due_day
	,pymt_with_nsf
	,reason_for_arrears
	,reduction_to_mortgagor
	,remaining_amortization
	,renewal_date
	,renewed_date
	,reo
	,repayment_type
	,supp_claim_funds_received
	,supp_claim_received
	,supplementary_claim_filed
	,tdsrqual
	,term_in_months
	,txn_definition
	,adhoc_type
	,wire_fee
	,property_type
	,valid_flag
	,valid_from_date
	,valid_to_date
	,created_on
	,created_by
	,mdm_checksum
	,batch_id
FROM dim_loan_custom_info;


-- dbo.vw_dim_opportunity source

ALTER VIEW [dbo].[vw_dim_opportunity]
AS
/*
  
  Objective: Base view of dim_opportunity table
  Created By: Shabbir Pinjari
  Created On: 17-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT 
	 purchase_rk,
	 id,
	 loan_rk,
	 account_no,
	 borrower_name,
	 account_no_origination,
	 approved_mortgage_formula,
	 purchase_date,
	 last_modified_date,
	 close_date,
	 funding_date,
	 funded_Date,
	 intrerest_adjustment_date,
	 first_payment_date,
	 maturity_date,
	 new_maturity_date_on_renewal,
	 repayment_type,
	 term_in_months,
	 amortization_period,
	 annual_interest_rate,
	 chosen_rate_type,
	 note_rate,
	 requested_term_type,
	 payment_amount,
	 payment_frequency,
	 primary_applicant_credit_score,
	 applicant_credit_report_date,
	 approved_ltv,
	 appraised_value,
	 appraisal_date,
	 dwelling_type,
	 property_tenure,
	 property_occupancy_type,
	 type,
	 loan_position,
	 province,
	 property_city,
	 property_postal_code,
	 updated_mortgage_status,
	 possession_type,
	 bank_of_canada_overnight_rate,
	 status,
	 appraisal_value_at_renewal,
	 renewal_appraisal_date,
	-- Current_Income_Type__pc,
	 lender,
	 valid_flag,
	 valid_from_date,
	 valid_to_date,
	 created_on,
	 created_by,
	 mdm_checksum,
	 batch_id
FROM dim_opportunity;


-- dbo.vw_dim_region source

ALTER VIEW dbo.vw_dim_region
AS
/*
  
  Objective: Base view of dim_region table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT region_rk
	,loan_type
	,city_name
	,region_name
	,valid_flag
	,valid_from_date
	,valid_to_date
	,created_by
	,created_on
FROM dim_region;


-- dbo.vw_dim_rmbs_purchase source

ALTER view [dbo].[vw_dim_rmbs_purchase]
as
select * from dim_rmbs_purchase where valid_flag = 'Y' ;


-- dbo.vw_entity_detail source

ALTER VIEW vw_entity_detail  
AS  
/*  
  Objective: Base view of entity detail  
  Created By: Shabbir Pinjari  
  Created On: 31-Jan-2025  
  Version No: 1.0  
  #### Change History #####  
  Revision By:  
  Revision On:  
  Change Details:  
*/  
SELECT   
   entity_id,  
   src_obj_id,
   src_obj_col_name,
   src_obj_uid,  
   stg_obj_name,
   obj_type,  
   src_code,  
   is_active,  
   additional_info,  
   created_by,  
   created_on,  
   updated_by,  
   updated_on ,
   last_data_loaded_sucessfully_on,
   last_data_loaded_failed_on
FROM dbo.entity_detail
WHERE is_active = 1;


-- dbo.vw_entity_detail_full source

ALTER VIEW [dbo].[vw_entity_detail_full]  
AS  
/*  
  Objective: Base view of entity detail  
  Created By: Shabbir Pinjari  
  Created On: 31-Jan-2025  
  Version No: 1.0  
  #### Change History #####  
  Revision By:  
  Revision On:  
  Change Details:  
*/  
SELECT   
   entity_id,  
   src_obj_id,
   src_obj_col_name,
   src_obj_uid,  
   stg_obj_name,
   obj_type,  
   src_code,  
   is_active,  
   additional_info,  
   created_by,  
   created_on,  
   updated_by,  
   updated_on ,
   last_data_loaded_sucessfully_on,
   last_data_loaded_failed_on
FROM dbo.entity_detail_full
WHERE is_active = 1;


-- dbo.vw_fct_lender_portfolio source

ALTER VIEW dbo.vw_fct_lender_portfolio
AS
/*
  
  Objective: Base view of fct_lender_portfolio table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT 
	  t1.day_rk,
      t1.lender_portfolio_rk,
      t1.valid_flag,
      t1.created_on,
      t1.created_by,
      t1.updated_on,
      t1.updated_by,
      t1.batch_id
FROM dbo.fct_lender_portfolio t1
;


-- dbo.vw_fct_loan source

ALTER VIEW dbo.vw_fct_loan
AS
/*
  
  Objective: Base view of fct_loan table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT 
	  day_rk,
	  loan_rk,
	  valid_flag,
	  created_on,
	  created_by,
	  updated_on,
	  updated_by,
	  batch_id
FROM dbo.fct_loan;


-- dbo.vw_fct_loan_custom_info source

ALTER VIEW dbo.vw_fct_loan_custom_info
AS
/*
  
  Objective: Base view of fct_loan_custom_info table
  Created By: Shabbir Pinjari
  Created On: 13-Jan-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT 
	  day_rk,
	  loan_custom_info_rk,
	  valid_flag,
	  created_on,
	  created_by,
	  updated_on,
	  updated_by,
	  batch_id
FROM dbo.fct_loan_custom_info;


-- dbo.vw_fct_loan_history source

ALTER VIEW vw_fct_loan_history
AS
/*
  
  Objective: Base view of fct_loan_history table
  Created By: Shabbir Pinjari
  Created On: 26-Mar-2025
  Version No: 1.0
  
  #### Change History #####
  Revision By:
  Revision On:
  Change Details:
  
*/
SELECT 
	  day_rk,
	  ach_batch_number,
	  ach_trace_number,
	  ach_trans_number,
	  ach_transmission_datetime,
	  due_date,
	  date_rec,
	  group_rec_id,
	  late_charge,
	  loan_account,
	  loan_balance,
	  loan_rec_id,
	  nsf_source_rec_id,
	  notes,
	  paid_to,
	  pay_method,
	  rec_id,
	  reference,
	  source_app,
	  source_typ,
	  sys_created_by,
	  sys_created_date,
	  to_broker_fee,
	  to_charges_int,
	  to_charges_prin,
	  to_current_bill,
	  to_default_interest,
	  to_impound,
	  to_interest,
	  to_late_charge,
	  to_lender_fee,
	  to_other_payments,
	  to_other_tax_free,
	  to_other_taxable,
	  to_past_due,
	  to_prepay,
	  to_principal,
	  to_reserve,
	  to_unearned_discount,
	  to_unpaid_interest,
	  total_amount,
	  valid_flag,
	  valid_from_date,
	  valid_to_date,
	  created_on,
	  created_by,
	  mdm_checksum,
	  batch_id
FROM fct_loan_history
WHERE valid_flag = 'Y';


-- dbo.vw_fct_opportunity_monthly source

ALTER view vw_fct_opportunity_monthly as   
select   
t2.month_rk ,t1.*   
from fct_opportunity t1  
Inner join   
(  
select max(dd.day_rk) day_Rk , month_Rk  
from fct_opportunity fo  
left outer join dim_day dd on dd.day_Rk = fo.day_Rk  
group by month_Rk  
) t2 on t1.day_Rk = t2.day_Rk;


-- dbo.vw_get_loan_delta_accounts_full source

ALTER view [dbo].[vw_get_loan_delta_accounts_full] as
select distinct account_no
from dbo.stg_get_loan_by_ts_full v;


-- dbo.vw_latest_fund_adjusted_lender source

ALTER  view vw_latest_fund_adjusted_lender
as
with 
fund_adjustment_detail_latest
as
(
select 
* 
from fund_adjustment_detail   
where batch_id = ( select max(batch_id) from  fund_adjustment_detail)
and is_processed = 1 and process_status  = 'PS'
)
, fund_adjustment_account_code as
(
select distinct account_code 
from fund_adjustment_detail_latest
union
select distinct portfolio_account_code
from fund_adjustment_detail_latest
where adjustment_type = 'T'
)
,adjustment_porfolio_api_detail as
(
select     
FORMAT(GETDATE(),'yyyyMMdd_hhmmss') batch_id,  
t1.api_rk,t1.api_code,  
replace(t1.api_url,'#LENDER_ACCOUNT_CODE',t2.account_code) api_url,  
t1.api_desc,t1.api_type,t1.api_prop,t1.api_override_applicable,t1.api_override_parameter_value,t1.last_run_successfully,  
t1.execution_seq_no,t1.valid_flag,t1.valid_from_date,t1.valid_to_date,t1.created_by,t1.created_on,  
t1.updated_by,t1.updated_on,t1.token,t1.dbase_name  
,t2.account_code key_value  
from (Select * from vw_api_master t1 where api_code = 'GET_LENDER_PORTFOLIO') t1
join  
(select distinct account_code  from fund_adjustment_account_code where account_code is not null ) t2 on 1 =1  
)
select * from adjustment_porfolio_api_detail;


-- dbo.vw_lender_detail_by_time_stamp source

ALTER VIEW vw_lender_detail_by_time_stamp
AS
/*

Objective: Lists all the lenders api details
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id
	,t4.api_rk
	,t4.api_code
	,
	--t4.api_url,
	w_year
	,REPLACE(REPLACE(t4.api_url, '#FROM_DATE', '01-01-' + cast(t5.w_year AS VARCHAR(4)) + ' 00:00:00'), '#TO_DATE', '12-31-' + cast(t5.w_year AS VARCHAR(4)) + ' 23:59:59') api_url
	,t4.api_desc
	,t4.api_type
	,t4.api_prop
	,t4.api_override_applicable
	,t4.api_override_parameter_value
	,t4.execution_seq_no
	,t4.last_run_successfully
	,t4.valid_flag
	,t4.valid_from_date
	,t4.valid_to_date
	,t4.created_by
	,t4.created_on
	,t4.updated_by
	,t4.updated_on
	,t4.token
	,t4.dbase_name
	,t4.page_size
	,t4.off_set
	,
	--convert(varchar, t5.w_date , 32) working_date
	CONVERT(VARCHAR, t5.w_year, 32) key_value
FROM (
	SELECT t4.api_rk
		,t4.api_code
		,t4.api_url
		,t4.api_desc
		,t4.api_type
		,t4.api_prop
		,t4.api_override_applicable
		,t4.api_override_parameter_value
		,t4.execution_seq_no
		,t4.last_run_successfully
		,t4.valid_flag
		,t4.valid_from_date
		,t4.valid_to_date
		,t4.created_by
		,t4.created_on
		,t4.updated_by
		,t4.updated_on
		,t4.token
		,t4.dbase_name
		,t4.page_size
		,t4.off_set
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN CONVERT(DATE, from_date)
			ELSE CONVERT(DATE, DATEFROMPARTS(YEAR(GETDATE()), 1, 1))
			END from_date
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN CONVERT(DATE, to_date)
			ELSE CONVERT(DATE, DATEFROMPARTS(YEAR(GETDATE()), 12, 31))
			END to_date
	FROM (
		SELECT t1.*
			,t2.*
		FROM (
			SELECT *
			FROM vw_api_master t1
			WHERE api_code = 'GET_LENDER_BY_TS'
			) t1
		CROSS APPLY OPENJSON(t1.api_override_parameter_value, '$.ParameterValue') WITH (
				from_date VARCHAR(200) '$.StartDate'
				,to_date VARCHAR(200) '$.EndDate'
				) t2
		) t4
	) t4
JOIN (
	SELECT year_rk AS w_year
		,MIN(w_date) year_start_date
		,MAX(w_date) year_end_date
	FROM vw_dim_day
	GROUP BY year_rk
	) t5 ON year_start_date BETWEEN t4.from_date
		AND t4.to_date


--update api_master set api_override_applicable = 'N'

--select * from vw_lender_detail_by_time_stamp order by w_year
--

--Select * from dim_day;


-- dbo.vw_lender_detail_by_time_stamp_full source

ALTER   VIEW [dbo].[vw_lender_detail_by_time_stamp_full]
AS
/*

Objective: Lists all the lenders api details
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id
	,t4.api_rk
	,t4.api_code
	,
	--t4.api_url,
	w_year
	,REPLACE(REPLACE(t4.api_url, '#FROM_DATE', '02-22-' + cast(t5.w_year AS VARCHAR(4)) + ' 00:00:00'), '#TO_DATE', '02-22-' + cast(t5.w_year AS VARCHAR(4)) + ' 23:59:59') api_url
	,t4.api_desc
	,t4.api_type
	,t4.api_prop
	,t4.api_override_applicable
	,t4.api_override_parameter_value
	,t4.execution_seq_no
	,t4.last_run_successfully
	,t4.valid_flag
	,t4.valid_from_date
	,t4.valid_to_date
	,t4.created_by
	,t4.created_on
	,t4.updated_by
	,t4.updated_on
	,t4.token
	,t4.dbase_name
	,t4.page_size
	,t4.off_set
	,
	--convert(varchar, t5.w_date , 32) working_date
	CONVERT(VARCHAR, t5.w_year, 32) key_value
FROM (
	SELECT t4.api_rk
		,t4.api_code
		,t4.api_url
		,t4.api_desc
		,t4.api_type
		,t4.api_prop
		,t4.api_override_applicable
		,t4.api_override_parameter_value
		,t4.execution_seq_no
		,t4.last_run_successfully
		,t4.valid_flag
		,t4.valid_from_date
		,t4.valid_to_date
		,t4.created_by
		,t4.created_on
		,t4.updated_by
		,t4.updated_on
		,t4.token
		,t4.dbase_name
		,t4.page_size
		,t4.off_set
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN CONVERT(DATE, from_date)
			ELSE CONVERT(DATE, DATEFROMPARTS(YEAR(GETDATE()), 1, 1))
			END from_date
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN CONVERT(DATE, to_date)
			ELSE CONVERT(DATE, DATEFROMPARTS(YEAR(GETDATE()), 12, 31))
			END to_date
	FROM (
		SELECT t1.*
			,t2.*
		FROM (
			SELECT *
			FROM vw_api_master t1
			WHERE api_code = 'GET_LENDER_BY_TS'
			) t1
		CROSS APPLY OPENJSON(t1.api_override_parameter_value, '$.ParameterValue') WITH (
				from_date VARCHAR(200) '$.StartDate'
				,to_date VARCHAR(200) '$.EndDate'
				) t2
		) t4
	) t4
JOIN (
	SELECT year_rk AS w_year
		,MIN(w_date) year_start_date
		,MAX(w_date) year_end_date
	FROM vw_dim_day
	GROUP BY year_rk
	) t5 ON year_start_date BETWEEN t4.from_date
		AND t4.to_date


--update api_master set api_override_applicable = 'N'

--select * from vw_lender_detail_by_time_stamp order by w_year
--

--Select * from dim_day;


-- dbo.vw_lender_portfolio source

ALTER   VIEW [dbo].[vw_lender_portfolio] as      
      
select         
FORMAT(GETDATE(),'yyyyMMdd_hhmmss') batch_id,      
t1.api_rk,t1.api_code,      
replace(t1.api_url,'#LENDER_ACCOUNT_CODE',t2.account_code) api_url,      
t1.api_desc,t1.api_type,t1.api_prop,t1.api_override_applicable,t1.api_override_parameter_value,t1.last_run_successfully,      
t1.execution_seq_no,t1.valid_flag,t1.valid_from_date,t1.valid_to_date,t1.created_by,t1.created_on,      
t1.updated_by,t1.updated_on,t1.token,t1.dbase_name      
,t2.account_code key_value      
from (Select * from vw_api_master t1 where api_code = 'GET_LENDER_PORTFOLIO') t1        
join  vw_dim_lender t2 on 1 =1   
WHERE t2.valid_flag = 'Y' 
--Select * from vw_lender_portfolio;


-- dbo.vw_loan_detail_by_time_stamp source

ALTER   VIEW [dbo].[vw_loan_detail_by_time_stamp]
AS
/*

Objective: Lists all the loan api details
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id
	,t4.api_rk
	,t4.api_code
	,
	--replace(replace(t4.api_url , '#FROM_DATE',convert(varchar, t5.w_date , 32) + ' 00:00:00') , '#TO_DATE',convert(varchar, t5.w_date , 32)+ ' 23:59:59')
	CASE 
		WHEN api_override_applicable = 'Y'
			THEN replace(replace(t4.api_url, '#FROM_DATE', convert(VARCHAR, t5.w_start_date, 32) + ' 00:00:00'), '#TO_DATE', convert(VARCHAR, t5.w_end_date, 32) + ' 23:59:59')
		ELSE replace(replace(t4.api_url, '#FROM_DATE', convert(VARCHAR, DATEADD(DAY, - 1, t4.from_date), 32) + ' 00:00:00'), '#TO_DATE', convert(VARCHAR, t4.to_date, 32) + ' 23:59:59')
		END api_url
	,t4.api_desc
	,t4.api_type
	,t4.api_prop
	,t4.api_override_applicable
	,t4.api_override_parameter_value
	,t4.execution_seq_no
	,t4.last_run_successfully
	,t4.valid_flag
	,t4.valid_from_date
	,t4.valid_to_date
	,t4.created_by
	,t4.created_on
	,t4.updated_by
	,t4.updated_on
	,t4.token
	,t4.dbase_name
	,t4.page_size
	,t4.off_set
	,
	--convert(varchar, t5.w_start_date , 32)  key_value
	CASE 
		WHEN api_override_applicable = 'Y'
			THEN convert(VARCHAR, t5.w_start_date, 32) + '_' + convert(VARCHAR, t5.w_end_date, 32)
		ELSE convert(VARCHAR, DATEADD(DAY, - 1, t4.from_date)) + '_' + convert(VARCHAR, t4.from_date, 32)
		END key_value
	,CASE 
		WHEN api_override_applicable = 'Y'
			THEN t5.w_start_date
		ELSE DATEADD(DAY, - 1, t4.from_date)
		END start_date
FROM (
	SELECT t4.api_rk
		,t4.api_code
		,t4.api_url
		,t4.api_desc
		,t4.api_type
		,t4.api_prop
		,t4.api_override_applicable
		,t4.api_override_parameter_value
		,t4.execution_seq_no
		,t4.last_run_successfully
		,t4.valid_flag
		,t4.valid_from_date
		,t4.valid_to_date
		,t4.created_by
		,t4.created_on
		,t4.updated_by
		,t4.updated_on
		,t4.token
		,t4.dbase_name
		,t4.page_size
		,t4.off_set
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN convert(DATE, from_date)
			ELSE convert(DATE, getdate())
			END from_date
		,CASE 
			WHEN api_override_applicable = 'Y'
				THEN convert(DATE, to_date)
			ELSE convert(DATE, getdate())
			END to_date
	FROM (
		SELECT t1.*
			,t2.*
		FROM (
			SELECT *
			FROM vw_api_master t1
			WHERE api_code = 'GET_LOAN_BY_TS'
			) t1
		CROSS APPLY OPENJSON(t1.api_override_parameter_value, '$.ParameterValue') WITH (
				from_date VARCHAR(200) '$.StartDate'
				,to_date VARCHAR(200) '$.EndDate'
				) t2
		) t4
	) t4
LEFT OUTER JOIN
	--dim_day t5 on w_date BETWEEN t4.from_date and t4.to_date
	(
	SELECT year_Rk
		,min(w_date) w_start_date
		,max(w_date) w_end_date
	FROM vw_dim_day
	GROUP BY year_rk
	) t5 ON w_start_date BETWEEN t4.from_date
		AND t4.to_date

--update api_master set api_override_applicable = 'N'

--select * from vw_loan_detail_by_time_stamp;


-- dbo.vw_loan_history_detail_by_time_stamp source

ALTER VIEW [dbo].[vw_loan_history_detail_by_time_stamp]  
AS  
/*  
  
Objective: Lists all the loan loan history api details  
Created By: Shabbir Pinjari  
Created On: 21-Mar-2025  
Version No: 1.0  
  
#### Change History #####  
Revision By:  
Revision On:  
Change Details:  
  
*/  
SELECT FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id  
 ,t4.api_rk  
 ,t4.api_code  
 ,  
 --replace(replace(t4.api_url , '#FROM_DATE',convert(varchar, t5.w_date , 32) + ' 00:00:00') , '#TO_DATE',convert(varchar, t5.w_date , 32)+ ' 23:59:59')  
 CASE   
  WHEN api_override_applicable = 'Y'  
   THEN replace(replace(t4.api_url, '#FROM_DATE', convert(VARCHAR, t5.w_start_date, 32) + ' 00:00:00'), '#TO_DATE', convert(VARCHAR, DATEADD(DAY,1,t5.w_end_date), 32) + ' 23:59:59')  
  ELSE replace(replace(t4.api_url, '#FROM_DATE', convert(VARCHAR, DATEADD(DAY, - 1, t4.from_date), 32) + ' 00:00:00'), '#TO_DATE', convert(VARCHAR, DATEADD(DAY,1,t4.to_date), 32) + ' 23:59:59')  
  END api_url  
 ,t4.api_desc  
 ,t4.api_type  
 ,t4.api_prop  
 ,t4.api_override_applicable  
 ,t4.api_override_parameter_value  
 ,t4.execution_seq_no  
 ,t4.last_run_successfully  
 ,t4.valid_flag  
 ,t4.valid_from_date  
 ,t4.valid_to_date  
 ,t4.created_by  
 ,t4.created_on  
 ,t4.updated_by  
 ,t4.updated_on  
 ,t4.token  
 ,t4.dbase_name  
 -- ,t4.page_size  
 -- ,t4.off_set  
 ,  
 --convert(varchar, t5.w_start_date , 32)  key_value  
 CASE   
  WHEN api_override_applicable = 'Y'  
   THEN convert(VARCHAR, t5.w_start_date, 32) + '_' + convert(VARCHAR, DATEADD(DAY,1,t5.w_end_date), 32)  
  ELSE convert(VARCHAR, DATEADD(DAY, - 1, t4.from_date)) + '_' + convert(VARCHAR, DATEADD(DAY,1,t4.from_date), 32)  
  END key_value  
 ,CASE   
  WHEN api_override_applicable = 'Y'  
   THEN t5.w_start_date  
  ELSE DATEADD(DAY, - 1, t4.from_date)  
  END start_date  
FROM (  
 SELECT t4.api_rk  
  ,t4.api_code  
  ,t4.api_url  
  ,t4.api_desc  
  ,t4.api_type  
  ,t4.api_prop  
  ,t4.api_override_applicable  
  ,t4.api_override_parameter_value  
  ,t4.execution_seq_no  
  ,t4.last_run_successfully  
  ,t4.valid_flag  
  ,t4.valid_from_date  
  ,t4.valid_to_date  
  ,t4.created_by  
  ,t4.created_on  
  ,t4.updated_by  
  ,t4.updated_on  
  ,t4.token  
  ,t4.dbase_name  
  -- ,t4.page_size  
  -- ,t4.off_set  
  ,CASE   
   WHEN api_override_applicable = 'Y'  
    THEN convert(DATE, from_date)  
   ELSE convert(DATE, getdate())  
   END from_date  
  ,CASE   
   WHEN api_override_applicable = 'Y'  
    THEN convert(DATE, to_date)  
   ELSE convert(DATE, getdate())  
   END to_date  
 FROM (  
  SELECT t1.*  
   ,t2.*  
  FROM (  
   SELECT *  
   FROM vw_api_master t1  
   WHERE api_code = 'GET_LOAN_HISTORY_BY_TS'  
   ) t1  
  CROSS APPLY OPENJSON(t1.api_override_parameter_value, '$.ParameterValue') WITH (  
    from_date VARCHAR(200) '$.StartDate'  
    ,to_date VARCHAR(200) '$.EndDate'  
    ) t2  
  ) t4  
 ) t4  
LEFT OUTER JOIN  
 --dim_day t5 on w_date BETWEEN t4.from_date and t4.to_date  
 (
 /********** Half Yearly *************/
 --SELECT year_Rk  ,CASE WHEN MONTH(w_date) < 7 
 --            THEN 'H1'
 --            ELSE 'H2'
 --       END HalfYEar
 -- ,min(w_date) w_start_date  
 -- ,max(w_date) w_end_date  
 --FROM vw_dim_day  
 --GROUP BY year_rk
 --,CASE WHEN MONTH(w_date) < 7 
 --            THEN 'H1'
 --            ELSE 'H2'
 --       END

/***************** Quaterly *****************/
 --SELECT year_Rk  ,CASE WHEN w_quarter = 1
 --            THEN 'Q1'
	--		 WHEN w_quarter = 2
	--		 THEN 'Q2'
	--		 WHEN w_quarter = 3
	--		 THEN 'Q3'
 --            ELSE 'Q4'
 --       END [Quarter]
 -- ,min(w_date) w_start_date  
 -- ,max(w_date) w_end_date  
 --FROM vw_dim_day  
 --GROUP BY year_rk
 --,CASE WHEN w_quarter = 1
 --            THEN 'Q1'
	--		 WHEN w_quarter = 2
	--		 THEN 'Q2'
	--		 WHEN w_quarter = 3
	--		 THEN 'Q3'
 --            ELSE 'Q4'
 --       END
 /****** Yearly ********/
 --SELECT year_Rk-- ,month_rk
 -- ,min(w_date) w_start_date  
 -- ,max(w_date) w_end_date  
 --FROM vw_dim_day  
 --GROUP BY year_rk

/****** Montly ********/
 --SELECT year_Rk,month_rk
 -- ,min(w_date) w_start_date  
 -- ,max(w_date) w_end_date  
 --FROM vw_dim_day  
 --GROUP BY year_rk,month_rk

/****** Daily ********/
 SELECT year_rk,day_rk
  ,min(w_date) w_start_date  
  ,max(w_date) w_end_date  
 FROM vw_dim_day  
 GROUP BY year_rk,day_rk
 ) t5 ON w_start_date BETWEEN t4.from_date  
  AND t4.to_date
  
-- update api_master set api_override_applicable = 'N' WHERE api_rk = 4  
  
-- select * from vw_loan_history_detail_by_time_stamp ORDER BY start_date  
  
-- Select DISTINCT w_month from dim_day ORDER BY w_month
-- Select * from dim_day ORDER BY w_month;


-- dbo.vw_open_loan_account_additional_info source

ALTER   VIEW [dbo].[vw_open_loan_account_additional_info]
as
with raw_data as
(
select 
Rank() over ( order by key_value asc) row_num,t1.*
from vw_open_loan_account_additional_info_raw t1
),
row_count as
(
select 
count(1)total_count from vw_open_loan_account_additional_info_raw t1
)
select 
case when t1.row_num = t2.total_count then '1' else '0' end is_last_row , total_count
,t1.*
from raw_data t1 ,row_count t2;


-- dbo.vw_open_loan_account_additional_info_full source

ALTER VIEW [dbo].[vw_open_loan_account_additional_info_full]
as
with raw_data as
(
select 
Rank() over ( order by key_value asc) row_num,t1.*
from vw_open_loan_account_additional_info_raw_full t1
),
row_count as
(
select 
count(1)total_count from vw_open_loan_account_additional_info_raw_full t1
)
select 
case when t1.row_num = t2.total_count then '1' else '0' end is_last_row , total_count
,t1.*
from raw_data t1 ,row_count t2;


-- dbo.vw_open_loan_account_additional_info_full_onetime source

ALTER VIEW [dbo].[vw_open_loan_account_additional_info_full_onetime]
as
with raw_data as
(
select 
Rank() over ( order by key_value asc) row_num,t1.*
from vw_open_loan_account_additional_info_raw_full_onetime t1
),
row_count as
(
select 
count(1)total_count from vw_open_loan_account_additional_info_raw_full_onetime t1
)
select 
case when t1.row_num = t2.total_count then '1' else '0' end is_last_row , total_count
,t1.*
from raw_data t1 ,row_count t2



-- where account_no = '15850'
  
  
--select * from api_master;


-- dbo.vw_open_loan_account_additional_info_raw source

ALTER   VIEW vw_open_loan_account_additional_info_raw AS          
SELECT             
    FORMAT(GETDATE(),'yyyyMMdd_hhmmss') AS batch_id,          
    t1.api_rk, t1.api_code,          
    REPLACE(t1.api_url,'#ACCOUNT_NO',t2.account_no) AS api_url,          
    t1.api_desc, t1.api_type, t1.api_prop, 
    t1.api_override_applicable, t1.api_override_parameter_value, 
    t1.last_run_successfully,          
    t1.execution_seq_no, t1.valid_flag, 
    t1.valid_from_date, t1.valid_to_date, 
    t1.created_by, t1.created_on,          
    t1.updated_by, t1.updated_on, 
    t1.token, t1.dbase_name,          
    CAST(t2.loan_rk AS VARCHAR(10)) + '_' + t2.account_no AS key_value          
FROM (SELECT * FROM vw_api_master WHERE api_code = 'GET_LOAN_BY_AN') t1            
JOIN          
(         
    SELECT loan_rk, account_no         
    FROM dim_loan 
    WHERE valid_to_date > valid_from_date  
      AND valid_from_date = (
            SELECT MAX(valid_from_date)
            FROM dim_loan
      )
) t2   -- ✅ alias must come AFTER closing bracket
ON 1 = 1;


-- dbo.vw_open_loan_account_additional_info_raw_full source

ALTER    VIEW [dbo].[vw_open_loan_account_additional_info_raw_full] as        
select           
FORMAT(GETDATE(),'yyyyMMdd_hhmmss') batch_id,        
t1.api_rk,t1.api_code,        
replace(t1.api_url,'#ACCOUNT_NO',t2.account_no) api_url,        
t1.api_desc,t1.api_type,t1.api_prop,t1.api_override_applicable,t1.api_override_parameter_value,t1.last_run_successfully,        
t1.execution_seq_no,t1.valid_flag,t1.valid_from_date,t1.valid_to_date,t1.created_by,t1.created_on,        
t1.updated_by,t1.updated_on,t1.token,t1.dbase_name        
,cast(t2.account_no as varchar(10)) + '_' + t2.account_no key_value        
from (Select * from vw_api_master t1 where api_code = 'GET_LOAN_BY_AN') t1          
join        
(       
/*      
-- full refresh to start the fresh loading      
select loan_rk , account_no       
from dim_loan where valid_from_date <= getdate() and  valid_to_date > getdate()      
and account_status = 'O'       
*/      
-- incremental refresh      
select       
account_no       
from vw_get_loan_delta_accounts_full
)      
t2 on 1 =1 
--WHERE account_no IN ('15850','15744');


-- dbo.vw_open_loan_account_additional_info_raw_full_onetime source

ALTER VIEW [dbo].[vw_open_loan_account_additional_info_raw_full_onetime] as        
select           
FORMAT(GETDATE(),'yyyyMMdd_hhmmss') batch_id,        
t1.api_rk,t1.api_code,        
replace(t1.api_url,'#ACCOUNT_NO',t2.account_no) api_url,        
t1.api_desc,t1.api_type,t1.api_prop,t1.api_override_applicable,t1.api_override_parameter_value,t1.last_run_successfully,        
t1.execution_seq_no,t1.valid_flag,t1.valid_from_date,t1.valid_to_date,t1.created_by,t1.created_on,        
t1.updated_by,t1.updated_on,t1.token,t1.dbase_name        
,cast(t2.loan_rk as varchar(10)) + '_' + t2.account_no key_value        
from (Select * from vw_api_master t1 where api_code = 'GET_LOAN_BY_AN') t1          
join        
(       
/*      
-- full refresh to start the fresh loading      
select loan_rk , account_no       
from dim_loan where valid_from_date <= getdate() and  valid_to_date > getdate()      
and account_status = 'O'       
*/      
-- incremental refresh      
select  distinct     
loan_rk , account_no       
from dim_loan 
)      
t2 on 1 =1 
--WHERE account_no IN ('15850','15744');


-- dbo.vw_post_fund_adjustment source

ALTER view vw_post_fund_adjustment
as
select 
api_url,
token,
dbase_name,
account_no,
api_body
from   
(
select t1.*,  t2.*
from 
(Select * from api_master where api_code = 'POST_ADD_FUNDINGS' and valid_flag = 'Y') t1    
CROSS APPLY OPENJSON ( t1.api_prop,'$.Header')    
WITH (       
token Varchar(200)    '$.Token',  
dbase_name Varchar(200)    '$.Database',  
page_size int    '$.PageSize'  
) t2  
 ) t1
 left outer join
 (
 select 
account_no ,'[' + STRING_AGG (api_body , ',') + ']' api_body 
from vw_post_fund_adjustment_base
group by account_no
) t2 on  1 =1 

--select * from vw_post_fund_adjustment;


-- dbo.vw_post_fund_adjustment_base source

ALTER view [dbo].[vw_post_fund_adjustment_base]
as
select 
account_no  ,
'{' +
'"LoanAccount": "' + account_no  + '",' +
'"LenderAccount": " ' + account_code + '",' +
'"TransDate": " '  +  format(getdate(),'MM/dd/yyyy') + '",' +
'"Amount": " ' +  cast(
						case adjustment_type when 'D' then  adjustment_amt * -1 else adjustment_amt end
						as varchar(100)
					   ) + '"'
+ '}' api_body
from vw_unprocessed_fund_adjustment_detail
union
select 
account_no  ,
'{' +
'"LoanAccount": "' + account_no  + '",' +
'"LenderAccount": " ' + portfolio_account_code + '",' +
'"TransDate": " '  +  format(getdate(),'MM/dd/yyyy') + '",' +
'"Amount": " ' +  cast(
						adjustment_amt * -1 
						as varchar(100)
					   ) + '"'
+ '}'
from vw_unprocessed_fund_adjustment_detail
where adjustment_type = 'T';


-- dbo.vw_sf_data_opportunity source

ALTER    VIEW [dbo].[vw_sf_data_opportunity]
AS
/*    
    
Objective: Process the loans api data into tabular format    
Created By: Shabbir Pinjari    
Created On: 13-Jan-2025    
Version No: 1.0    
    
#### Change History #####    
Revision By: Shabbir Pinjari  
Revision On: 10-July-2025  
Change Details: Added new column TMO_Account_Number_New__c
Revision On: 05-Nov-2025  
Change Details: Added new columns Amortization__c,Renew_Amortization_Total_Interest_Pay__c,Remaining_Amortization__c,Negative_Amortization_Formula__c,Number_of_Compounded_Periods__c,Number_of_Payments__c,Loan_Type__c,Purpose__c
Revision On: 10-Nov-2025  
Change Details: Added new columns Renewed_Date__c
Revision On: 25-Nov-2025  
Change Details: Commented out TMO_Account_Number__c column as it is removed in salesforce
    
*/
SELECT Id AS id
	,
	--TMO_Account_Number__c AS account_no,   
	Name AS borrower_name
	,TMO_Account_Number_from_Origination__c AS account_no_origination
	,Approved_Mortgage__c AS approved_mortgage_formula
	,dbo.fn_get_actual_date(CreatedDate) AS purchase_date
	,dbo.fn_get_actual_date(LastModifiedDate) AS last_modified_date
	,dbo.fn_get_actual_date(CloseDate) AS close_date
	,dbo.fn_get_actual_date(Funding_Date__c) AS funding_date
	,dbo.fn_get_actual_date(Funded_Date__c) AS funded_Date
	,dbo.fn_get_actual_date(Interest_Adjustment_Date__c) AS intrerest_adjustment_date
	,dbo.fn_get_actual_date(First_Payment_Date__c) AS first_payment_date
	,dbo.fn_get_actual_date(Maturity_Date__c) AS maturity_date
	,dbo.fn_get_actual_date(New_Maturity_Date_on_Renewal__c) AS new_maturity_date_on_renewal
	,Repayment_Type__c AS repayment_type
	,Term_In_Months__c AS term_in_months
	,Amortization_Period__c AS amortization_period
	,Annual_Percentage_Rate__c AS annual_interest_rate
	,Chosen_Rate_Type__c AS chosen_rate_type
	,Note_Rate__c AS note_rate
	,Requested_Term_Type__c AS requested_term_type
	,Monthly_Payment__c AS payment_amount
	,Payment_Frequency__c AS payment_frequency
	,Primary_Credit_Score__c AS primary_applicant_credit_score
	,dbo.fn_get_actual_date(Credit_Report_Date_del__c) AS applicant_credit_report_date
	,Approved_LTV__c AS approved_ltv
	,Appraised_Value__c AS appraised_value
	,dbo.fn_get_actual_date(Appraisal_Date__c) AS appraisal_date
	,Dwelling_Type__c AS dwelling_type
	,Tenure__c AS property_tenure
	,Occupancy_Type__c AS property_occupancy_type
	,Type AS type
	,Loan_Position__c AS loan_position
	,Province__c AS province
	,Property_City__c AS property_city
	,Property_Zip_Code__c AS property_postal_code
	,Updated_Mortgage_Status__c AS updated_mortgage_status
	,Possession_Type__c AS possession_type
	,BoC_Overnight_Rate__c AS bank_of_canada_overnight_rate
	,StageName AS STATUS
	,Appraisal_Value_at_Renewal__c AS appraisal_value_at_renewal
	,Renewal_Appraisal_Date__c AS renewal_appraisal_date
	,
	-- Current_Income_Type__pc,    
	Lender__c AS lender
	,TMO_Account_Number_New__c AS tmo_account_no
	,Amortization__c AS amortization
	,Renew_Amortization_Total_Interest_Pay__c AS renew_amortization_total_interest_pay
	,Remaining_Amortization__c AS remaining_amortization
	,Negative_Amortization_Formula__c AS negative_amortization_formula
	,Number_of_Compounded_Periods__c AS number_of_compounded_periods
	,Number_of_Payments__c AS number_of_payments
	,Loan_Type__c AS loan_type
	,Purpose__c AS purpose
	,Renewed_Date__c AS renewed_date
	,Existing_Mortgage_Holder__c AS mortgage_holder_1
	,Existing_Mortgage_Holder_2__c AS mortgage_holder_2
	,Existing_Mortgage_Holder_3__c AS mortgage_holder_3
	,Pre_Paid_Holdback_Monthly_Calc__c AS pre_paid_holdback_monthly
	,Holdback_Spread__c AS holdback_spread
	,Corporation_Deal__c AS corporation_deal
	,Appraised_Value_PoS__c AS pos_appraised_value
	,Lender_Fee_Payment_Method__c AS lender_fee_payment_method
	,Lender_Fee_Amount_Paid__c AS lender_fee_amount_paid
	,Pricing_Option_Lender_Fee__c AS pricing_option_lender_fee
	,Lender_Fee_Dollar_Value__c AS lender_fee_dollar_value
	,Lender_Fee_Deferment__c AS lender_fee_deferment
	,Custom_Lender_Fee_Deferment_Amount__c AS custom_lender_fee_deferment_amount
	,PoS_Status__c AS pos_status
	,POS_Possession_Date__c AS pos_possession_date
	,Listed_Price__c AS listed_price
	,Listed_On__c AS listed_on
	,Sold_Firm_Date__c AS sold_firm_date
	,Sold_Price__c AS sold_price
	,PoS_Closing_Date__c AS pos_closing_date
	,Total_Interest_Due__c AS total_interest_due
	,Grand_Total__c   AS grand_total
FROM stg_sf_opportunity
	-- WHERE TMO_Account_Number__c IS NOT NULL AND StageName <> 'Closed Lost';


-- dbo.vw_sf_data_opportunity_bkp_22012026 source

ALTER VIEW [dbo].vw_sf_data_opportunity
AS
/*

Objective: Process the loans api data into tabular format
Created By: Shabbir Pinjari
Created On: 13-Jan-2025
Version No: 1.0

#### Change History #####
Revision By:
Revision On:
Change Details:

*/
SELECT 
	Id as id,
	TMO_Account_Number__c AS account_no,
	Name AS borrower_name,
	TMO_Account_Number_from_Origination__c AS account_no_origination,
	Approved_Mortgage__c AS approved_mortgage_formula,
	dbo.fn_get_actual_date(CreatedDate) AS purchase_date,
	dbo.fn_get_actual_date(LastModifiedDate) AS last_modified_date,
	dbo.fn_get_actual_date(CloseDate) AS close_date,
	dbo.fn_get_actual_date(Funding_Date__c) AS funding_date,
	dbo.fn_get_actual_date(Funded_Date__c) AS funded_Date,
	dbo.fn_get_actual_date(Interest_Adjustment_Date__c) AS intrerest_adjustment_date,
	dbo.fn_get_actual_date(First_Payment_Date__c) AS first_payment_date,
	dbo.fn_get_actual_date(Maturity_Date__c) AS maturity_date,
	dbo.fn_get_actual_date(New_Maturity_Date_on_Renewal__c) AS new_maturity_date_on_renewal,
	Repayment_Type__c AS repayment_type,
	Term_In_Months__c AS term_in_months,
	Amortization_Period__c AS amortization_period,
	Annual_Percentage_Rate__c AS annual_interest_rate,
	Chosen_Rate_Type__c AS chosen_rate_type,
	Note_Rate__c AS note_rate,
	Requested_Term_Type__c AS requested_term_type,
	Monthly_Payment__c AS payment_amount,
	Payment_Frequency__c AS payment_frequency,
	Primary_Credit_Score__c AS primary_applicant_credit_score,
	dbo.fn_get_actual_date(Credit_Report_Date_del__c) AS applicant_credit_report_date,
	Approved_LTV__c AS approved_ltv,
	Appraised_Value__c AS appraised_value,
	dbo.fn_get_actual_date(Appraisal_Date__c) AS appraisal_date,
	Dwelling_Type__c AS dwelling_type,
	Tenure__c AS property_tenure,
	Occupancy_Type__c AS property_occupancy_type,
	Type AS type,
	Loan_Position__c AS loan_position,
	Province__c AS province,
	Property_City__c AS property_city,
	Property_Zip_Code__c AS property_postal_code,
	Updated_Mortgage_Status__c AS updated_mortgage_status,
	Possession_Type__c AS possession_type,
	BoC_Overnight_Rate__c AS bank_of_canada_overnight_rate,
	StageName AS status,
	Appraisal_Value_at_Renewal__c AS appraisal_value_at_renewal,
	Renewal_Appraisal_Date__c AS renewal_appraisal_date,
	-- Current_Income_Type__pc,
	Lender__c AS lender

FROM stg_sf_opportunity
-- WHERE TMO_Account_Number__c IS NOT NULL AND StageName <> 'Closed Lost';


-- dbo.vw_sf_data_opportunity_full source

ALTER    VIEW [dbo].[vw_sf_data_opportunity_full]
AS
/*    
    
Objective: Process the loans api data into tabular format    
Created By: Shabbir Pinjari    
Created On: 13-Jan-2025    
Version No: 1.0    
    
#### Change History #####    
Revision By: Shabbir Pinjari  
Revision On: 10-July-2025  
Change Details: Added new column TMO_Account_Number_New__c
Revision On: 05-Nov-2025  
Change Details: Added new columns Amortization__c,Renew_Amortization_Total_Interest_Pay__c,Remaining_Amortization__c,Negative_Amortization_Formula__c,Number_of_Compounded_Periods__c,Number_of_Payments__c,Loan_Type__c,Purpose__c
Revision On: 10-Nov-2025  
Change Details: Added new columns Renewed_Date__c
Revision On: 25-Nov-2025  
Change Details: Commented out TMO_Account_Number__c column as it is removed in salesforce
    
*/
SELECT Id AS id
	,
	--TMO_Account_Number__c AS account_no,   
	Name AS borrower_name
	,TMO_Account_Number_from_Origination__c AS account_no_origination
	,Approved_Mortgage__c AS approved_mortgage_formula
	,dbo.fn_get_actual_date(CreatedDate) AS purchase_date
	,dbo.fn_get_actual_date(LastModifiedDate) AS last_modified_date
	,dbo.fn_get_actual_date(CloseDate) AS close_date
	,dbo.fn_get_actual_date(Funding_Date__c) AS funding_date
	,dbo.fn_get_actual_date(Funded_Date__c) AS funded_Date
	,dbo.fn_get_actual_date(Interest_Adjustment_Date__c) AS intrerest_adjustment_date
	,dbo.fn_get_actual_date(First_Payment_Date__c) AS first_payment_date
	,dbo.fn_get_actual_date(Maturity_Date__c) AS maturity_date
	,dbo.fn_get_actual_date(New_Maturity_Date_on_Renewal__c) AS new_maturity_date_on_renewal
	,Repayment_Type__c AS repayment_type
	,Term_In_Months__c AS term_in_months
	,Amortization_Period__c AS amortization_period
	,Annual_Percentage_Rate__c AS annual_interest_rate
	,Chosen_Rate_Type__c AS chosen_rate_type
	,Note_Rate__c AS note_rate
	,Requested_Term_Type__c AS requested_term_type
	,Monthly_Payment__c AS payment_amount
	,Payment_Frequency__c AS payment_frequency
	,Primary_Credit_Score__c AS primary_applicant_credit_score
	,dbo.fn_get_actual_date(Credit_Report_Date_del__c) AS applicant_credit_report_date
	,Approved_LTV__c AS approved_ltv
	,Appraised_Value__c AS appraised_value
	,dbo.fn_get_actual_date(Appraisal_Date__c) AS appraisal_date
	,Dwelling_Type__c AS dwelling_type
	,Tenure__c AS property_tenure
	,Occupancy_Type__c AS property_occupancy_type
	,Type AS type
	,Loan_Position__c AS loan_position
	,Province__c AS province
	,Property_City__c AS property_city
	,Property_Zip_Code__c AS property_postal_code
	,Updated_Mortgage_Status__c AS updated_mortgage_status
	,Possession_Type__c AS possession_type
	,BoC_Overnight_Rate__c AS bank_of_canada_overnight_rate
	,StageName AS STATUS
	,Appraisal_Value_at_Renewal__c AS appraisal_value_at_renewal
	,Renewal_Appraisal_Date__c AS renewal_appraisal_date
	,
	-- Current_Income_Type__pc,    
	Lender__c AS lender
	,TMO_Account_Number_New__c AS tmo_account_no
	,Amortization__c AS amortization
	,Renew_Amortization_Total_Interest_Pay__c AS renew_amortization_total_interest_pay
	--,Remaining_Amortization__c AS remaining_amortization
	,Negative_Amortization_Formula__c AS negative_amortization_formula
	,Number_of_Compounded_Periods__c AS number_of_compounded_periods
	,Number_of_Payments__c AS number_of_payments
	,Loan_Type__c AS loan_type
	,Purpose__c AS purpose
	,Renewed_Date__c AS renewed_date
	,Existing_Mortgage_Holder__c AS mortgage_holder_1
	,Existing_Mortgage_Holder_2__c AS mortgage_holder_2
	,Existing_Mortgage_Holder_3__c AS mortgage_holder_3
	,Pre_Paid_Holdback_Monthly_Calc__c AS pre_paid_holdback_monthly
	,Holdback_Spread__c AS holdback_spread
	,Pre_Paid_Holdback__c AS pre_paid_holdback
	,Corporation_Deal__c AS corporation_deal
	,Appraised_Value_PoS__c AS pos_appraised_value
	,Lender_Fee_Payment_Method__c AS lender_fee_payment_method
	,Lender_Fee_Amount_Paid__c AS lender_fee_amount_paid
	,Pricing_Option_Lender_Fee__c AS pricing_option_lender_fee
	,Lender_Fee_Dollar_Value__c AS lender_fee_dollar_value
	,Lender_Fee_Deferment__c AS lender_fee_deferment
	,Custom_Lender_Fee_Deferment_Amount__c AS custom_lender_fee_deferment_amount
	,PoS_Status__c AS pos_status
	,POS_Possession_Date__c AS pos_possession_date
	,Listed_Price__c AS listed_price
	,Listed_On__c AS listed_on
	,Sold_Firm_Date__c AS sold_firm_date
	,Sold_Price__c AS sold_price
	,PoS_Closing_Date__c AS pos_closing_date
	,Total_Interest_Due__c AS total_interest_due
	,Grand_Total__c   AS grand_total
FROM stg_sf_opportunity_full
	-- WHERE TMO_Account_Number__c IS NOT NULL AND StageName <> 'Closed Lost';


-- dbo.vw_sf_obj_data source

ALTER VIEW [dbo].[vw_sf_obj_data]  
AS  
/*  
  Objective: Base view of entity detail  
  Created By: Shabbir Pinjari  
  Created On: 31-Jan-2025  
  Version No: 1.0  
  #### Change History #####  
  Revision By:  
  Revision On:  
  Change Details:  
*/  
SELECT  
	FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id,
   entity_id,  
   src_obj_id,
   src_obj_col_name,
   src_obj_uid,  
   stg_obj_name,
   obj_type,  
   src_code,  
   is_active,
   ' select ' + src_obj_col_name + ' from ' + src_obj_id + 
   ' where '-- TMO_Account_Number__c != NULL '
   + 'lastmodifieddate > ' + format(DATEADD(day,-3,last_data_loaded_sucessfully_on),'yyyy-MM-ddThh:mm:ssZ')
   DataFetchSql
   ,additional_info,  
   created_by,  
   created_on,  
   updated_by,  
   updated_on ,
   last_data_loaded_sucessfully_on,
   last_data_loaded_failed_on
FROM dbo.vw_entity_detail  
WHERE src_code = 'SF' AND obj_type = 'OBJ';


-- dbo.vw_sf_obj_data_full source

ALTER    VIEW [dbo].[vw_sf_obj_data_full]    
AS    
/*    
  Objective: Base view of entity detail    
  Created By: Shabbir Pinjari    
  Created On: 31-Jan-2025    
  Version No: 1.0    
  #### Change History #####    
  Revision By:    
  Revision On: 25-Nov-2025
  Change Details: Commmented out TMO_Account_Number__c != NULL as it is removed in salesforce
*/    
SELECT    
 FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') batch_id,  
   entity_id,    
   src_obj_id,  
   src_obj_col_name,  
   src_obj_uid,    
   stg_obj_name,  
   obj_type,    
   src_code,    
   is_active,  
   ' select ' + src_obj_col_name + ' from ' + src_obj_id +   
   ' where '-- TMO_Account_Number__c != NULL '
   + ' lastmodifieddate > ' + format(DATEADD(day,-3,last_data_loaded_sucessfully_on),'yyyy-MM-ddThh:mm:ssZ')  
   DataFetchSql  
   ,additional_info,    
   created_by,    
   created_on,    
   updated_by,    
   updated_on ,  
   last_data_loaded_sucessfully_on,  
   last_data_loaded_failed_on  
FROM dbo.vw_entity_detail_full    
WHERE src_code = 'SF' AND obj_type = 'OBJ';


-- dbo.vw_sf_obj_data_full_par source

ALTER VIEW dbo.vw_sf_obj_data_full_par
AS
/*    
  Objective: Base view of entity detail    
  Created By: Deepthi Kannali 
  Created On: 05-Mar-2026
*/  
SELECT
 FORMAT(GETDATE(), 'yyyyMMdd_hhmmss') AS batch_id,
 entity_id,
 src_obj_id,
 src_obj_col_name,
 src_obj_uid,
 stg_obj_name,
 obj_type,
 src_code,
 is_active,

 'SELECT FIELDS(ALL) FROM ' + src_obj_id +
 ' WHERE LastModifiedDate > ' +
 FORMAT(DATEADD(day,-3,last_data_loaded_sucessfully_on),'yyyy-MM-ddTHH:mm:ssZ')
 AS DataFetchSql,

 additional_info,
 created_by,
 created_on,
 updated_by,
 updated_on,
 last_data_loaded_sucessfully_on,
 last_data_loaded_failed_on

FROM dbo.vw_entity_detail_full
WHERE src_code = 'SF'
AND obj_type = 'OBJ';


-- dbo.vw_unprocessed_fund_adjustment_detail source

ALTER view vw_unprocessed_fund_adjustment_detail
as
select * from fund_adjustment_detail 
where is_processed = 0;