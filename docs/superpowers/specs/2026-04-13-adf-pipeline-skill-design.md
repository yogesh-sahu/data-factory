# ADF Pipeline Skill Design

**Date:** 2026-04-13
**Status:** approved

---

## Purpose

A single Claude skill (`adf-pipeline`) that helps plan and implement Azure Data Factory pipelines in this ARM template repository. The primary output is a shareable plan document saved to the repo. Implementation is a separate invocation.

---

## Two Modes

| Mode | How to trigger | Output |
|------|---------------|--------|
| **Plan** (default) | "create pipeline X" / "update pipeline Y" / describe what you want | `docs/pipelines/YYYY-MM-DD-<name>.md` saved to repo |
| **Build** | "implement the plan at docs/pipelines/..." | JSON files written; monolith update flagged as manual |

---

## Plan Mode Flow

1. **Invoke `superpowers:brainstorming`** — surfaces intent, data flow, load type before any questions
2. **Scan what the user already stated** — skip groups where answers are already provided
3. **Ask remaining questions grouped by topic** (one message per group):
   - Group 1 — Source & Target
   - Group 2 — Load Pattern
   - Group 3 — Environment
   - Group 4 — Dependencies
4. **Write plan doc** to `docs/pipelines/YYYY-MM-DD-<pipeline-name>.md`
5. **Stop** — do not write any JSON files in this mode

---

## Build Mode Flow

1. Read the plan doc at the path the user provides
2. Create each file listed in the plan doc's "Files to create" table
3. Print a **manual checklist** for the monolith at the end — never auto-edit `ARMTemplateForFactory.json`

---

## Question Groups

### Group 1 — Source & Target
- What is the data source? (TMO API / Salesforce / Azure SQL / Blob / other)
- What is the target? (Azure SQL / Salesforce / Blob)
- Is there an existing linked service + dataset that covers this connection, or does a new one need creating?

### Group 2 — Load Pattern
- Delta (timestamp-based) or full load?
- Volume large enough to need a parent → child ForEach pattern, or single-pipeline copy is fine?
- Is there a SQL control table/view that drives the batches? If so, what is its name?

### Group 3 — Environment
- DEV only for now, or should PROD also be noted as future work in the plan?
- Should a trigger be included (`TGR_` file), and if so what schedule?

### Group 4 — Dependencies
- Which SQL views, stored procs, or tables must exist before this pipeline runs?
- Any other pipelines this one calls or is called by?

---

## Plan Document Template

Saved to `docs/pipelines/YYYY-MM-DD-<pipeline-name>.md`:

```markdown
# Pipeline: PL_<NAME>_DEV
Date: YYYY-MM-DD
Status: planned | in-progress | done

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

---

## Skill Metadata

**Name:** `adf-pipeline`

**Description:**
> Use when creating a new ADF pipeline, modifying an existing pipeline, or building a plan for Azure Data Factory work in an ARM template repository. Triggers on: "add pipeline", "create pipeline", "update pipeline", "new pipeline", any mention of ADF activities, ForEach, Copy activity, ExecutePipeline, TMO API ingestion, Salesforce sync, linked services, datasets, or triggers.

Description intentionally omits the workflow summary so Claude reads the full skill body.

---

## Naming Conventions (reference for implementation)

| Resource | Pattern |
|----------|---------|
| Parent pipeline | `pipeline/PL_<VERB>_<ENTITY>_DEV.json` |
| Child pipeline | `pipeline/PL_CHILD_<VERB>_<ENTITY>_DEV.json` |
| Dataset | `dataset/DS_<NAME>_DEV.json` |
| Linked service | `linkedService/LS_<SYSTEM>_DEV.json` |
| Trigger | `trigger/TGR_<ENTITY>.json` |

## Environment Suffix Cheat Sheet

| Suffix | SQL DB | Linked service |
|--------|--------|---------------|
| `_DEV` | `cal_bi_analytics_dev` | `LS_AzureSql_CAL_DEV` |
| `_FULL` | `cal_bi_analytics` | `LS_AzureSql_CAL_FULL` |
| none | `cal_bi_analytics` | `LS_AzureSql_CAL` |

---

## Out of Scope

- Auto-editing `ARMTemplateForFactory.json` — always manual
- Creating PROD/FULL variants in the same session — noted as future work only
- SQL object creation (views, stored procs) — outside ADF scope
