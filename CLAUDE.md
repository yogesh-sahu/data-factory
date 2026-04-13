# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

ARM templates exported from Azure Data Factory (`adf-cal-dwh`) for the Capital Asset Lending (CAL) data warehouse. The factory ingests loan data from The Mortgage Office (TMO) REST API and Salesforce, loads it into Azure SQL, and syncs back to Salesforce.

Azure details:
- Resource group: `CAL-DWH-RG`
- Region: Canada Central
- SQL server: `cal-dwh.database.windows.net`
- Prod DB: `cal_bi_analytics` | Dev DB: `cal_bi_analytics_dev`
- Blob/ADLS storage account: `totalw1`

## Deployment

**Full monolithic deploy** (single template, use when < 4 MB):
```bash
az deployment group create \
  --resource-group CAL-DWH-RG \
  --template-file ARMTemplateForFactory.json \
  --parameters @ARMTemplateParametersForFactory.json \
  --parameters LS_AzureSql_CAL_password="<pwd>" ...
```

**Linked templates deploy** (use when monolithic exceeds ARM size limit):
```bash
az deployment group create \
  --resource-group CAL-DWH-RG \
  --template-file linkedTemplates/ArmTemplate_master.json \
  --parameters @linkedTemplates/ArmTemplateParameters_master.json \
  --parameters containerUri="<blob-uri>" containerSasToken="<sas>" ...
```
Linked templates (`ArmTemplate_0` through `ArmTemplate_8`) must be uploaded to a blob container before the master deployment runs, because ARM fetches them by URL at deploy time.

## Architecture

### Template layout

| Path | Purpose |
|------|---------|
| `ARMTemplateForFactory.json` | Monolithic template — all resources in one file |
| `ARMTemplateParametersForFactory.json` | Parameters for monolithic deploy (secrets left blank) |
| `linkedTemplates/ArmTemplate_master.json` | Orchestrates linked sub-templates |
| `linkedTemplates/ArmTemplate_0..8.json` | Resource chunks for large deploys |
| `factory/` | Factory-level resource (location, identity) |
| `pipeline/` | Pipeline definitions |
| `dataset/` | Dataset definitions |
| `linkedService/` | Linked service definitions |
| `trigger/` | Trigger definitions |
| `integrationRuntime/` | Integration runtime definitions |

### Naming conventions

- `PL_` — parent pipeline (orchestrates child pipelines via ForEach + ExecutePipeline)
- `PL_CHILD_` — child pipeline (does the actual data movement)
- `_DEV` suffix — targets `cal_bi_analytics_dev`; no suffix targets prod `cal_bi_analytics`
- `_FULL` suffix — full load variant; no suffix = delta/incremental
- `_DEVFULL` — dev environment full load

Corresponding linked services and datasets follow the same `_DEV` / `_FULL` / `_DEVFULL` pattern.

### Data flow

1. **TMO API → Azure SQL**: Pipelines prefixed `PL_LOAD_LOAN_*` and `PL_CHILD_TMO_API_*` call `api-ca.themortgageoffice.com` REST endpoints, stage JSON/Parquet to blob, then copy into Azure SQL staging tables.
2. **Salesforce → Azure SQL**: `PL_LOAD_SF_DATA` / `PL_CHILD_PROCESS_SF_DELTA_LOAD` read from Salesforce (Oppono Lending org) using connected app credentials, load into SQL.
3. **Azure SQL → Salesforce**: `PL_SALESFORCE`, `PL_AppraisalData_to_Salesforce` write back to Salesforce from SQL staging tables.
4. **Lender Portfolio**: `PL_LOAD_LENDER_PORTFOLIO_*` and `PL_CHILD_LOAD_LENDER_PORTFOLIO_*` handle the lender portfolio feed separately.

### Secrets management

All sensitive values (`password`, `connectionString`, `clientSecret`, `accountKey`) are `secureString` parameters with blank defaults in the checked-in parameter files. Supply them at deploy time via `--parameters key=value` or a separate secrets file that is **not** committed.

The parameter file at root (`ARMTemplateParametersForFactory.json`) and `linkedTemplates/ArmTemplateParameters_master.json` are identical — keep them in sync when adding new linked services.
