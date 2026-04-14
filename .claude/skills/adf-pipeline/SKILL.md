---
name: adf-pipeline
description: Use when creating a new ADF pipeline, modifying an existing pipeline, or building a plan for Azure Data Factory work in an ARM template repository. Triggers on: "add pipeline", "create pipeline", "update pipeline", "new pipeline", any mention of ADF activities, ForEach, Copy activity, ExecutePipeline, TMO API ingestion, Salesforce sync, linked services, datasets, or triggers.
---

# ADF Pipeline Builder

## Overview

Two-mode skill for Azure Data Factory pipeline work in an ARM template repo.

| Mode | How to invoke | Output |
|------|--------------|--------|
| **Plan** (default) | Describe what you want to build or change | `docs/pipelines/YYYY-MM-DD-<name>.md` saved to repo |
| **Build** | "implement the plan at docs/pipelines/..." | JSON files created; monolith update printed as manual checklist |

**NEVER auto-edit `ARMTemplateForFactory.json`.** Always flag it as a manual step.

---

## Plan Mode

```dot
digraph plan_mode {
    "User request received" [shape=doublecircle];
    "Invoke superpowers:brainstorming" [shape=box];
    "Scan what user already stated" [shape=box];
    "Unanswered question groups?" [shape=diamond];
    "Ask grouped questions\n(one message per group)" [shape=box];
    "All groups answered?" [shape=diamond];
    "Write plan doc to docs/pipelines/" [shape=box];
    "STOP — do not write JSON" [shape=doublecircle];

    "User request received" -> "Invoke superpowers:brainstorming";
    "Invoke superpowers:brainstorming" -> "Scan what user already stated";
    "Scan what user already stated" -> "Unanswered question groups?";
    "Unanswered question groups?" -> "Ask grouped questions\n(one message per group)" [label="yes"];
    "Unanswered question groups?" -> "Write plan doc to docs/pipelines/" [label="no"];
    "Ask grouped questions\n(one message per group)" -> "All groups answered?" [label="answers received"];
    "All groups answered?" -> "Ask grouped questions\n(one message per group)" [label="no"];
    "All groups answered?" -> "Write plan doc to docs/pipelines/" [label="yes"];
    "Write plan doc to docs/pipelines/" -> "STOP — do not write JSON";
}
```

### Step 1 — Invoke brainstorming

**REQUIRED:** Attempt to invoke `superpowers:brainstorming` before any questions.

**If the Skill tool returns an error or the skill is not found:** Stop immediately and tell the user:

> "The `superpowers:brainstorming` skill is required but not installed. Install it with:
> ```
> claude mcp add superpowers
> ```
> Then restart your session and try again."

Do not proceed past Step 1 without brainstorming completing successfully.

When brainstorming runs, it surfaces:
- What data moves from where to where
- Delta (incremental) or full load
- Whether a parent → child ForEach pattern is needed
- Which existing linked services / datasets can be reused

### Step 2 — Consult `sql/ddl.sql` before asking schema questions

`sql/ddl.sql` is the authoritative schema reference for the `cal_bi_analytics_dev` database. Grep it before asking the user anything about tables, views, or columns:

| Looking for | How to find it |
|-------------|---------------|
| Does a target table exist? | `Grep("CREATE TABLE.*\\.<TableName>", "sql/ddl.sql")` |
| Control view for ForEach batches | `Grep("CREATE VIEW.*vw_", "sql/ddl.sql")` |
| Column names + types for Copy mapping | Read the `CREATE TABLE` block for that table |
| Staging table shape | Grep for `stg_<name>` |

Only ask the user about schema things `ddl.sql` can't answer (business intent, which of multiple candidate tables is the right one, etc.).

### Step 3 — Ask grouped questions (skip answered ones)

Scan the user's request first. For every group below, if all questions in that group are already answered, **skip the group entirely**. Send unanswered groups as one message per group.

#### Group 1 — Source & Target
- What is the data source? (TMO API / Salesforce / Azure SQL / Blob / other)
- What is the target? (Azure SQL / Salesforce / Blob)
- Is there an existing linked service + dataset for this connection, or does a new one need creating?

#### Group 2 — Load Pattern
- Delta (timestamp-based) or full load?
- Volume large enough to need a parent → child ForEach pattern, or is a single-pipeline copy fine?
- Is there a SQL control table/view that drives the batches? If so, what is its name?

#### Group 3 — Environment
- DEV only for now, or should PROD also be noted as future work in the plan?
- Should a trigger be included (`TGR_` file), and if so what schedule?

#### Group 4 — Dependencies
- Which SQL views, stored procs, or tables must exist before this pipeline runs?
- Any other pipelines this one calls or is called by?

### Step 4 — Write the plan doc

Save to `docs/pipelines/YYYY-MM-DD-<pipeline-name>.md` in the ARM template repo. Use this template exactly:

```markdown
# Pipeline: PL_<NAME>_DEV
Date: YYYY-MM-DD
Status: planned

## What it does
One paragraph: source → transformation → target.

## Files to create
| File | Type | Notes |
|------|------|-------|
| pipeline/PL_LOAD_X_DEV.json | Pipeline | Parent, ForEach pattern |
| pipeline/PL_CHILD_LOAD_X_DEV.json | Pipeline | Child, does the copy |
| dataset/DS_X_DEV.json | Dataset | Reuses LS_AzureSql_CAL_DEV |

## Files to modify
| File | Change |
|------|--------|
| linkedService/LS_NEW.json | New — create fresh |

## Load pattern
- Type: delta / full
- Control table / view: `vw_<name>`
- Batch key: `key_value`, offset: `off_set`

## Environment variants
- [x] DEV (`_DEV`) — implement now
- [ ] PROD (no suffix) — future work
- [ ] Full load (`_FULL`) — future work

## Manual steps after build
- [ ] Add each new resource to `ARMTemplateForFactory.json` → `resources[]`
- [ ] If using linked templates: add to correct `ArmTemplate_N.json` chunk
- [ ] Add any new secureString params to both parameter files

## Dependencies
- SQL objects that must exist before first run
- Existing linked services / datasets being reused
```

**After writing the doc:** stop. Do not create any JSON files in Plan mode.

---

## Build Mode

Triggered when the user says: "implement the plan at docs/pipelines/..."

```dot
digraph build_mode {
    "Read plan doc" [shape=box];
    "Create each file in Files to create table" [shape=box];
    "Print manual monolith checklist" [shape=box];
    "Done" [shape=doublecircle];

    "Read plan doc" -> "Create each file in Files to create table";
    "Create each file in Files to create table" -> "Print manual monolith checklist";
    "Print manual monolith checklist" -> "Done";
}
```

### Steps

1. **Read** the plan doc at the path provided
2. **Create** every file listed in the "Files to create" table — use the skeletons below
3. **Print** this checklist at the end (fill in actual file names):

```
## Manual steps — complete these yourself

- [ ] Open ARMTemplateForFactory.json
- [ ] Add each new resource object to the `resources[]` array:
      - pipeline/PL_<NAME>_DEV.json → copy the JSON and paste as a resource entry
      - pipeline/PL_CHILD_<NAME>_DEV.json → same
      - dataset/DS_<NAME>_DEV.json → same
- [ ] If using linked templates: add resources to the correct ArmTemplate_N.json chunk
- [ ] If new secureString params were added: update both parameter files
```

**NEVER edit `ARMTemplateForFactory.json` automatically.** It contains all resources for the factory; a bad edit breaks the entire deployment.

---

## JSON Skeletons

### Pipeline (parent or child)

```json
{
    "name": "[concat(parameters('factoryName'), '/PL_YOUR_PIPELINE_NAME')]",
    "type": "Microsoft.DataFactory/factories/pipelines",
    "apiVersion": "2018-06-01",
    "properties": {
        "description": "One-line description of what this pipeline does",
        "activities": [],
        "parameters": {},
        "variables": {},
        "annotations": []
    },
    "dependsOn": []
}
```

### Lookup → ForEach → ExecutePipeline (parent pattern)

```json
[
  {
    "name": "LOOKUP_CONTROL_TABLE",
    "type": "Lookup",
    "dependsOn": [],
    "typeProperties": {
      "source": {
        "type": "AzureSqlSource",
        "sqlReaderQuery": "select * from vw_<name> order by key_value, off_set asc",
        "queryTimeout": "02:00:00",
        "partitionOption": "None"
      },
      "dataset": { "referenceName": "DS_AZURE_SQL_CAL_DEV", "type": "DatasetReference" },
      "firstRowOnly": false
    }
  },
  {
    "name": "ForEach_Batches",
    "type": "ForEach",
    "dependsOn": [{ "activity": "LOOKUP_CONTROL_TABLE", "dependencyConditions": ["Succeeded"] }],
    "typeProperties": {
      "isSequential": true,
      "items": { "value": "@activity('LOOKUP_CONTROL_TABLE').output.value", "type": "Expression" },
      "activities": [{
        "name": "EXEC_CHILD",
        "type": "ExecutePipeline",
        "typeProperties": {
          "pipeline": { "referenceName": "PL_CHILD_<NAME>_DEV", "type": "PipelineReference" },
          "parameters": {
            "key_value": { "value": "@item().key_value", "type": "Expression" },
            "off_set":   { "value": "@item().off_set",   "type": "Expression" }
          }
        }
      }]
    }
  }
]
```

### REST API → Blob → Azure SQL (TMO ingest child pattern)

- Activity 1: `Copy` — `RestSource` → `JsonSink` to Blob (stage raw JSON)
- Activity 2: `Copy` — `JsonSource` from Blob → `AzureSqlSink` with stored proc

### Salesforce → Azure SQL (SF delta child pattern)

- Activity 1: `Copy` — `SalesforceSource` (SOQL query with watermark) → `AzureSqlSink`

---

## Naming Conventions

| Resource | Pattern |
|----------|---------|
| Parent pipeline | `pipeline/PL_<VERB>_<ENTITY>_DEV.json` |
| Child pipeline | `pipeline/PL_CHILD_<VERB>_<ENTITY>_DEV.json` |
| Dataset | `dataset/DS_<NAME>_DEV.json` |
| Linked service | `linkedService/LS_<SYSTEM>_DEV.json` |
| Trigger | `trigger/TGR_<ENTITY>.json` |

All names uppercase with underscores.

## Environment Suffix Cheat Sheet

| Suffix | SQL database | Linked service | Dataset |
|--------|-------------|----------------|---------|
| `_DEV` | `cal_bi_analytics_dev` | `LS_AzureSql_CAL_DEV` | `DS_AZURE_SQL_CAL_DEV` |
| `_FULL` | `cal_bi_analytics` | `LS_AzureSql_CAL_FULL` | `DS_AZURE_SQL_CAL_DYN_FULL` |
| none | `cal_bi_analytics` | `LS_AzureSql_CAL` | `DS_AZURE_SQL_CAL` |

DEV variant is always implemented first. FULL and no-suffix (prod) are future work unless explicitly requested.

---

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Editing `ARMTemplateForFactory.json` automatically | Never. Always a manual step. |
| Creating a new linked service when one already covers the connection | Check `linkedService/` first |
| Implementing FULL/PROD variant in the same session without being asked | Note as future work only |
| `_DEV` and prod variants diverging after separate edits | Apply the same logical change to both when updating prod |
| Committing parameter files with secrets filled in | Secrets stay blank; supply at deploy time via `--parameters` |
| Forgetting to update both parameter files when adding a new secureString | `ARMTemplateParametersForFactory.json` and `linkedTemplates/ArmTemplateParameters_master.json` must stay in sync |
