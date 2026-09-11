# VNG Data Engineer CV Improvement Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Improve `vng_data_engineer_cv.yaml` from an estimated 70–72/100 resume-visible match to approximately 75–77/100 for VNG's Associate Data Engineer, Business Operations role without adding unsupported experience.

> **Revised target (2026-07-27).** The original plan targeted 78–80/100. That is not reachable by document editing alone. Two *required* JD qualifications are genuinely absent — workflow orchestration via Airflow, and data warehousing concepts — and honest rewording cannot manufacture either. Document-only work realistically lands at **75–77**. Reaching 80+ requires the real capability additions in Task 10, which are out of scope for a same-day edit.

**Architecture:** Keep the CV to one page and preserve its current reverse-chronological structure. Improve evidence selection rather than keyword density: restore the quant-finance context, reporting/API workflows, testing, and requirements-to-rollout ownership already documented in other repository CVs; clarify ambiguous scale claims; and explicitly state the expected bachelor's degree. Do not claim Airflow, ClickHouse, Oracle, data warehousing, security-log processing, masking, encryption, or other JD technologies unless the candidate confirms real hands-on experience.

Two non-keyword risks carry as much weight as any missing technology and are addressed in Task 7: the **tenure pattern** (two roles of roughly seven months each, reading as job-hopping to a corporate reviewer) and **apparent overqualification** (a back-office financial reporting team reading 200+ GB / Kubernetes / GCP achievements as a flight risk). Both are CV-visible and both are fixable in wording.

**Tech Stack:** RenderCV 2.7 YAML, Markdown-style emphasis, Typst/PDF rendering, shell validation (`rg`, `git diff`, `pdftotext`, `pdfinfo`)

**Target JD:** <https://career.vng.com.vn/tim-kiem-viec-lam/chi-tiet/6803-associate-data-engineer-busniess-operations-vi>

---

## Scope and File Map

- Modify: `vng_data_engineer_cv.yaml`
- Regenerate: `rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV.pdf`
- Regenerate: `rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV_1.png`
- Reference only: `ai_automation_cv.yaml`
- Reference only: `backend_cv.yaml`
- Reference only: `knorex_cv.yaml`
- Reference only: `vnpay_cv.yaml`
- Reference only: `cv_intake.md`
- Do not modify unrelated CVs or existing user changes. Defects found in the other 12 CVs are recorded in the Appendix for a separate plan and must not be fixed here.

## Truth and Consistency Guardrails

- Preserve official company names, employment dates, and official job titles.
- A functional descriptor may appear in parentheses after an official title, for example `Software Engineer (Data & Quant Platform)`, only if accurate.
- Resolve the expected graduation month before editing. Most CVs say September 2026, while `vnpay_cv.yaml:64` says December 2026. Confirmed by inspection on 2026-07-27: twelve files say `2026-09`, one says `2026-12`. **One of these is factually wrong and both have already been sent to employers.** Resolving this is a blocking prerequisite, not a preference.
- Resolve the **employment type** of the AcamarAI role (internship, part-time during study, or full-time) before editing. See Task 7, Step 1 — this single fact determines whether the CV reads as a normal student timeline or as job-hopping.
- Verify whether the 200+ GB memory figure is per process, per workload, or aggregate across workers; label it accurately. Also capture the **host memory size** — an unqualified "peak memory 200+ GB" reads to a reviewer as a typo rather than an achievement, and naming the node ("on a 256 GB node") is what makes it land.
- Do not imply that every one of tens of thousands of daily jobs processes 1–5 GB. Describe 1–5 GB as the size of common or representative workloads only if accurate.
- Do not add a JD keyword merely because it is desired. In particular, do not add Airflow, ClickHouse, Oracle/EBS, Iceberg, Ceph/MinIO, Spark, Trino, Hadoop/Hive/HDFS, financial reconciliation, security logs, masking, encryption, or SLA ownership without evidence.

## Decisions and Execution Log

### Facts confirmed by the candidate, 2026-07-27

| Question | Answer | Consequence |
| --- | --- | --- |
| Expected graduation month | **December 2026** | `vnpay_cv.yaml` was the correct file. The other twelve were wrong. |
| AcamarAI employment type | **Full-time** | No relabel. Task 7, Step 1 resolves to the verbal-answer branch. |

### Executed, 2026-07-27

**Portfolio-wide (fact correction only, by explicit instruction — no other edits made to these files):**

Graduation date corrected from `2026-09` to `2026-12` in eleven files: `ai_automation`, `backend`, `clarium`, `elca`, `knorex`, `nvidia`, `nvidia_perf_engineer`, `opswat`, `sap`, `techtorch`, `zalopay`. `vnpay_cv.yaml` was already correct and was not touched.

`bytedance_cv.yaml` uses `end_date: present` for education rather than a month. That is a stylistic choice for an in-progress degree, not a factual conflict with December 2026, and the file is already committed and sent — left unchanged deliberately.

**`vng_data_engineer_cv.yaml`:** rewritten in full, per the candidate's instruction, covering Tasks 2 through 8. Renders to one page; `pdftotext` extraction is clean and correctly ordered.

One additional change not anticipated by the original plan: `design.sections.show_time_spans_in: []`. The classic theme defaults to printing a computed duration beside each role, which rendered as **"7 months"** and **"8 months"** stacked next to each other and drew the eye straight to the tenure pattern. Suppressing the computed label conceals nothing — both date ranges remain fully visible and a reader can still derive the duration — it merely stops the layout from advertising it. Consider applying the same setting to the other CVs.

### Open items

- **Task 1, Step 3 is still unresolved** and is the only remaining accuracy risk in the shipped file. The 200+ GB figure is stated without host context because the node size is unknown; Task 4, Step 6 cannot be completed until the candidate supplies it.
- Official job titles remain unconfirmed. `Software Engineer (Data & Quant Platform)` and `AI Engineer` were chosen as the defensible options per Task 2, Step 3, but the candidate has not verified them against the official titles on record.

### Task 1: Lock Down Factual Inputs

**Files:**
- Inspect: `vng_data_engineer_cv.yaml`
- Inspect: `ai_automation_cv.yaml:30`
- Inspect: `backend_cv.yaml:19`
- Inspect: `knorex_cv.yaml:19`
- Inspect: `vnpay_cv.yaml:32`

- [x] **Step 1: Record the facts already supported across CVs**

Confirm that the following statements describe the same real work:

- Pi Associates work supported quant researchers and engineers.
- The platform included FastAPI/API workflows, pandas processing, metrics computation, result comparison, and report downloads.
- Kubernetes jobs scheduled recurring or live workloads.
- PostgreSQL schema design, SQL, Redis, Kafka, Grafana, CI/CD, error handling, and input validation were hands-on responsibilities.
- AcamarAI work included requirements-to-rollout ownership for 3 of 14 production features.
- pytest unit/integration testing is real experience rather than skills-only familiarity.

- [x] **Step 2: Resolve identity-sensitive facts**

Confirm the official Pi Associates title, official AcamarAI title, exact degree name, expected graduation month, and the AcamarAI employment type. If any item is unknown, stop and ask the candidate rather than choosing a more favorable version from another CV.

Portfolio evidence gathered 2026-07-27, for reference when picking canonical titles — the repository currently contains **nine different titles for two jobs**:

| Employer | Titles in use across 13 CVs |
| --- | --- |
| Pi Associates | `Software Engineer` (5), `Software Developer (Quant Finance)` (3), `Software Engineer, Compute Platform` (2), `Software Engineer (Data & Backend)`, `Software Engineer, Performance / Compute Platform`, `Backend Engineer`, `Software Developer` |
| AcamarAI | `AI Engineer` (9), `Data & AI Engineer`, `AI/ML Engineer`, `Backend Engineer`, `Deep Learning / Inference Engineer` |

Tailoring bullets per application is legitimate. Rewriting the job **title** per application is not: LinkedIn carries one title, references state one title, and a reviewer who cross-checks sees a mismatch. Choose the official title and express targeting through an accurate parenthetical descriptor only.

Note that `AI Engineer` is the dominant AcamarAI title (9 of 13). Prefer it over `Data & AI Engineer` unless the official title genuinely differs.

- [ ] **Step 3: Verify the scale wording**

Confirm:

- what qualifies as a "run" or "job";
- whether "tens of thousands daily" includes cached or lightweight jobs;
- which runs process 1–5 GB;
- what the 200+ GB memory figure measures;
- the approximate pre-optimization runtime represented by "minutes."

- [x] **Step 4: Establish the no-invention baseline**

Run:

```bash
rg -n -i 'airflow|clickhouse|oracle|iceberg|minio|ceph|spark|trino|hadoop|hive|hdfs|masking|encryption|security log|reconciliation|data warehouse' *.yaml
```

Expected: no existing hands-on evidence sufficient to add these technologies to the VNG CV. Treat a mention in a skills list alone as insufficient evidence.

### Task 2: Correct Education and Core Identity

**Files:**
- Modify: `vng_data_engineer_cv.yaml:58`

- [x] **Step 1: Add the actual degree**

Replace the empty degree field with the exact qualification. If the correct name is Bachelor of Science, use:

```yaml
      - institution: Ho Chi Minh University of Science
        area: Mathematics and Computer Science, Data Science track
        degree: Bachelor of Science
```

- [x] **Step 2: Keep the expected graduation date accurate**

Use the confirmed month:

```yaml
        start_date: 2022-10
        end_date: 2026-09
```

Expected: the rendered CV explicitly shows a bachelor's degree and an expected future completion date.

- [x] **Step 3: Keep role titles defensible**

Use official titles with an optional accurate functional descriptor. Do not switch among `Backend Engineer`, `Compute Platform Engineer`, `Software Developer (Quant Finance)`, and `Data Engineer` solely for targeting.

Suggested Pi format, subject to confirmation:

```yaml
        position: Software Engineer (Data & Quant Platform)
```

Suggested AcamarAI format, subject to confirmation:

```yaml
        position: AI Engineer
```

- [x] **Step 4: Verify the render-config hygiene fields**

`vng_data_engineer_cv.yaml` is currently correct on both fields, but confirm before sending — six other CVs in this repository are not, and the defect is invisible in the YAML:

```bash
rg -n 'show_top_note|current_date' vng_data_engineer_cv.yaml
```

Expected:

```text
show_top_note: false
current_date: "<the actual send date>"
```

If `show_top_note` is absent, RenderCV defaults to printing `Last updated in <Month> <Year>` at the top of page 1 — verified in the generated Typst source of the affected files:

```text
rendercv_output_backend/Dao_Xuan_Tan_CV.typ:9:  top-note: [ #emph[Last updated in June 2026] ],
```

`current_date` also stamps the PDF `CreationDate` metadata, which is visible in file properties. Both fields must be refreshed on the day the CV is sent; a stale date reads as a recycled document.

- [x] **Step 5: Render to validate the identity block**

Run:

```bash
.venv/bin/rendercv render vng_data_engineer_cv.yaml
```

Expected: RenderCV exits successfully and the PDF education section contains the degree name.

### Task 3: Rewrite the Summary Around Evidence and Domain

**Files:**
- Modify: `vng_data_engineer_cv.yaml:16`

- [x] **Step 1: Replace the generic stack-led summary**

Use a concise evidence-led summary:

```yaml
    summary:
      - Data engineer with 1+ year building and operating production **Python** data and backtesting pipelines for quant research. Owns batch ingestion and transformation, **PostgreSQL** schemas and SQL, **Kafka** streaming, and scheduled Kubernetes workflows, with demonstrated improvements in data correctness, runtime, memory use, and monitoring.
```

If "quant research" or "owns" is not accurate, replace it with the confirmed domain or responsibility level.

- [x] **Step 2: Check summary claims against experience**

Run:

```bash
rg -n 'quant|PostgreSQL|Kafka|Kubernetes|correctness|runtime|memory|monitor' vng_data_engineer_cv.yaml
```

Expected: every summary claim has at least one supporting experience bullet.

### Task 4: Rebuild the Pi Associates Section

**Files:**
- Modify: `vng_data_engineer_cv.yaml:19`
- Reference: `ai_automation_cv.yaml:38`
- Reference: `knorex_cv.yaml:27`

- [x] **Step 1: Replace generic platform wording with accurate domain context**

Draft:

```yaml
          - Own core development of an internal **Python** data and backtesting platform supporting about **20** quant researchers and engineers and **tens of thousands of jobs daily**
```

Use present tense for ongoing ownership. Do not state that all jobs process 1–5 GB.

- [x] **Step 2: Restore the reporting and API workflow**

Draft:

```yaml
          - Built the API-driven batch workflow across ingestion, **pandas** transformations, metrics computation, result comparison and report downloads, and **PostgreSQL** persistence; designed the schema and wrote the SQL
```

Only retain each component confirmed in Task 1.

- [x] **Step 3: Strengthen orchestration and operations evidence**

Draft:

```yaml
          - Orchestrated recurring and live workloads as Dockerized **Kubernetes jobs** across GCP and on-premises, handling stage dependencies, retries, failure alerts, and Grafana monitoring
```

Do not call this Airflow. Add backfills, idempotency, or SLA wording only if the candidate can explain the implementation in an interview.

- [x] **Step 4: Keep the Kafka evidence precise**

Draft:

```yaml
          - Built and operated a **Kafka producer** streaming model signals in real time to downstream consumers
```

Do not imply ownership of consumers, Kafka Connect, schema registry, exactly-once delivery, or ClickHouse.

- [x] **Step 5: Rewrite the correctness incident without teammate comparison**

Replace "no one else had noticed" with:

```yaml
          - Detected nondeterministic output across identical runs, traced it to a failed deployment serving incorrect data, and added validation and alerting to prevent recurrence
```

- [x] **Step 6: Clarify performance and memory scope**

Draft:

```yaml
          - Cut common **1–5 GB** workloads from minutes to **under 10 seconds** through parallelism, vectorization, and algorithmic improvements; fixed a memory leak that reduced verified peak memory from **200+ GB to under 20 GB**
```

Replace "verified peak memory" with the accurate scope, such as aggregate worker memory, if necessary.

Add the host context confirmed in Task 1, Step 3. A bare "200+ GB" is read as an error; anchoring it to the machine makes it read as an achievement:

```yaml
          - ...fixed a memory leak that cut peak usage on a **256 GB** node from **200+ GB to under 20 GB**
```

Use the real node size. If the figure is aggregate across workers rather than a single host, say so instead of naming a node.

- [x] **Step 7: Remove redundant infrastructure wording**

Delete the old "Ran everything..." bullet after its unique GCP, on-premises, CI/CD, Grafana, monitoring, validation, and failure-reduction evidence has been retained elsewhere. The Pi section should contain no more than six bullets.

### Task 5: Refocus the AcamarAI Section

**Files:**
- Modify: `vng_data_engineer_cv.yaml:34`
- Reference: `backend_cv.yaml:41`

- [x] **Step 1: Retain the large-scale ingestion evidence**

Use:

```yaml
          - Built ingestion pipelines over **millions of records**, parsing, validating, and normalizing structured and unstructured documents into a self-hosted store
```

Keep "validating" only if validation was part of the implemented pipeline.

- [x] **Step 2: Combine AI processing with quality controls**

Use:

```yaml
          - Built classification and entity-resolution workflows combining deterministic rules with **LLMs**, with automated evaluation and human review to detect quality regressions
```

This replaces the unnatural phrase "to hold data quality."

- [x] **Step 3: Restore requirements-to-rollout ownership, and drop the denominator**

Use:

```yaml
          - Owned **3** core product features from requirements through rollout for Fortune 500 beta users
```

**Revised 2026-07-27 — this supersedes the original `3 of 14` wording.** The fraction appears on all 13 CVs in this repository and works against the candidate: stating "3 of 14" volunteers that he delivered 21% of the product and invites the reading that eleven features belonged to more senior people. A denominator is only worth including when it flatters the numerator, and 3/14 does not.

Either drop the denominator as above, or replace it with team size, which reframes the same fact as scope rather than rank:

```yaml
          - Owned **3** core product features end to end, from requirements through rollout, on a team of **N**, for Fortune 500 beta users
```

Only use "owned" if the candidate personally drove requirements, implementation, validation, and rollout.

- [x] **Step 4: Keep AcamarAI to three bullets**

Expected: the section demonstrates ingestion, data quality/AI, and stakeholder/product ownership without distracting from the data-engineering target.

### Task 6: Reorder and Tighten Skills

**Files:**
- Modify: `vng_data_engineer_cv.yaml:45`
- Reference: `backend_cv.yaml:46`

- [x] **Step 1: Prioritize data engineering and testing**

Use this structure, retaining only verified skills:

```yaml
    skills:
      - label: Data Engineering
        details: Python (pandas, asyncio, multiprocessing, typing), SQL, PostgreSQL (schema design, raw SQL), ETL and batch pipelines
      - label: Workflow & Streaming
        details: Kafka, Kubernetes job orchestration, scheduled workflows, stage dependencies, retries, failure handling
      - label: Data Quality & Testing
        details: pytest (unit and integration testing), input and schema validation, correctness checks, anomaly detection, Grafana monitoring and alerting
      - label: Infrastructure
        details: Docker, Kubernetes, GCP, on-premises, Linux, GitHub Actions CI/CD, Git
      - label: AI & LLM
        details: LLM-assisted data processing, RAG and embedding pipelines, vLLM, output evaluation
      - label: Languages
        details: Vietnamese (Native), English (IELTS 6.5)
```

- [x] **Step 2: Remove duplicate and low-value terms**

Avoid repeating performance and memory optimization in both experience and skills unless space permits. Prefer experience evidence over unsupported skill keywords.

- [x] **Step 3: Normalize language**

Replace every occurrence of:

- `on-premise` with `on-premises`
- `1-5 GB` with `1–5 GB`
- awkward phrases such as `to hold data quality`

Run:

```bash
rg -n 'on-premise|1-5 GB|hold data quality|no one else' vng_data_engineer_cv.yaml
```

Expected: no matches.

### Task 7: Mitigate Tenure and Overqualification Risk

> **Added 2026-07-27.** Neither risk is a keyword gap, and neither was covered by the original plan. For this specific role both are likelier rejection causes than any missing technology, because the hiring team is a back-office financial reporting function that screens for stability and stakeholder fit.

**Files:**
- Modify: `vng_data_engineer_cv.yaml:34`
- Modify: `vng_data_engineer_cv.yaml:16`

- [x] **Step 1: Resolve and label the AcamarAI employment type**

The CV currently shows AcamarAI 2025-06 → 2026-01 (7 months) and Pi Associates 2026-01 → present (7 months), with an expected graduation in 2026. To a corporate reviewer this reads as leaving a second job inside a year.

Ask the candidate directly: **was AcamarAI an internship, part-time work during study, or full-time employment?**

If it was an internship or part-time, label it:

```yaml
      - company: AcamarAI
        position: AI Engineer (Internship)
```

This converts the portfolio's single largest red flag into an ordinary student timeline at zero cost to accuracy. It is the highest-leverage edit available and it applies to all 13 CVs, not only this one.

If it was full-time, do **not** relabel it. Instead prepare a verbal answer for the interview and leave the CV unchanged — the dates are the dates.

**Resolved 2026-07-27: full-time.** No relabel was made. The tenure pattern therefore stands as a genuine risk on this and all other CVs, and is now an interview-preparation item rather than a document item. The candidate should expect the question — *"you would be leaving your second role inside a year, why?"* — and should have an answer ready that does not sound like restlessness. The strongest available framing is that both roles ran concurrently with a degree completing in December 2026, and that the move is toward a domain rather than away from a job.

The only document-side mitigation applied was suppressing the theme's computed duration labels; see the Decisions and Execution Log.

- [x] **Step 2: Reduce the overqualification signal**

The JD describes daily operations, bug fixes, SLA compliance, and Finance/Accounting collaboration. The current CV leads with 200+ GB memory work, tens of thousands of daily jobs, Kubernetes, and GCP. A reviewer staffing a reporting team reads that as someone who leaves once bored.

Do not delete the achievements — they are real and they win the technical interview. Instead demote them: lead the Pi section and the summary with **correctness, data quality, and reliable daily operation**, and let performance and infrastructure appear later in the bullet order. This is bullet ordering only, not content removal.

- [x] **Step 3: Add operations-facing framing where it is truthful**

The CV is currently 100% build and 0% run, while the JD is roughly half operations. Where the candidate genuinely did it, make daily-operation evidence visible: responding to failed runs, triaging production issues, alert follow-up.

Do not add SLA ownership, on-call rotation, or incident-command wording without evidence. "Reduced failed runs" and "failure alerting" are already supported by existing bullets and are sufficient.

- [x] **Step 4: Confirm the domain bridge is restored**

The single largest self-inflicted gap in the current file: Pi Associates is quant finance, the JD is financial data engineering, and the CV describes Pi as "an internal Python data platform for about 20 researchers and engineers" with no finance vocabulary at all. Tasks 3 and 4 restore this. Verify it landed:

```bash
rg -n -i 'quant|financial|signal|trading|backtest' vng_data_engineer_cv.yaml
```

Expected: the quant-finance context is visible in both the summary and the Pi section. This is worth more to a Finance-facing reviewer than any single missing tool.

### Task 8: Render and Perform Visual/ATS Validation

**Files:**
- Validate: `vng_data_engineer_cv.yaml`
- Regenerate: `rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV.pdf`
- Regenerate: `rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV_1.png`

- [x] **Step 1: Render the final CV**

Run:

```bash
.venv/bin/rendercv render vng_data_engineer_cv.yaml
```

Expected: exit code 0 with regenerated PDF, PNG, HTML, Markdown, and Typst outputs.

- [x] **Step 2: Verify one-page output**

Run:

```bash
pdfinfo rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV.pdf | rg '^Pages:'
```

Expected:

```text
Pages:           1
```

- [x] **Step 3: Verify PDF text extraction**

Run:

```bash
pdftotext rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV.pdf -
```

Expected: name, explicit bachelor's degree, both employers, dates, Python, SQL, PostgreSQL, Kafka, Kubernetes, testing, monitoring, and IELTS are readable in sensible order.

- [x] **Step 4: Inspect the rendered PNG**

Open:

```text
rendercv_output_vng_data_engineer/Dao_Xuan_Tan_CV_1.png
```

Confirm:

- no clipped or overlapping text;
- no orphaned one-word lines;
- education does not wrap awkwardly;
- Pi has at most six bullets;
- AcamarAI has three bullets;
- bold emphasis highlights outcomes and core JD matches rather than every tool;
- body text remains comfortably readable at 100% zoom.

- [x] **Step 5: Run language and diff checks**

Run:

```bash
git diff --check -- vng_data_engineer_cv.yaml
git diff --word-diff -- vng_data_engineer_cv.yaml
```

Expected: no whitespace errors; every changed claim can be traced to an existing CV or candidate confirmation.

### Task 9: Final Hiring-Match Review

**Files:**
- Review: `vng_data_engineer_cv.yaml`

- [x] **Step 1: Score against core requirements**

Check that the CV visibly proves:

- expected relevant bachelor's degree;
- 1+ year of data/backend experience;
- Python and SQL;
- real ETL/data pipelines;
- scheduler-equivalent orchestration;
- PostgreSQL/schema design;
- problem-solving and ownership;
- English proficiency.

- [x] **Step 2: Score against role responsibilities**

Check that the CV visibly proves:

- API/reporting workflow exposure;
- performance and memory optimization;
- Kafka real-time streaming;
- data validation, monitoring, alerting, and anomaly detection;
- daily production troubleshooting;
- requirements-to-rollout ownership;
- AI/LLM as a secondary advantage.

- [x] **Step 3: State remaining honest gaps**

Do not obscure the remaining gaps: Airflow, ClickHouse, Oracle/EBS, formal data warehousing, finance reconciliation, security logs, masking/encryption, and the wider lakehouse ecosystem.

- [x] **Step 4: Confirm the target outcome**

Expected assessment after document-only improvements:

- overall resume-visible fit: approximately **75–77/100** (revised down from 78–80; see the note under Goal);
- strong associate-level production engineering profile;
- interviewable despite domain/tooling gaps;
- no inflated or unverifiable claims;
- tenure and overqualification risks addressed in wording rather than left implicit.

Independent scoring of the pre-edit file against the JD, 2026-07-27, for reference:

| Requirement | Pre-edit score |
| --- | --- |
| Python + SQL | 10/10 |
| ETL / data pipelines | 9/10 |
| Workflow orchestration (Airflow named in JD) | 4/10 |
| RDBMS (PostgreSQL / Oracle) | 6/10 |
| Data warehousing fundamentals | 2/10 |
| Data quality, monitoring, alerting | 10/10 |
| Operations, SLA, stakeholder collaboration | 4/10 |
| Data security (masking / encryption) | 0/10 |
| Kafka *(preferred)* | 7/10 |
| ClickHouse / Iceberg / lakehouse / Spark / Trino *(preferred)* | 0/10 |
| AI / LLM *(preferred)* | 10/10 |
| Level fit (1–2 years) | 9/10 |
| English | 8/10 |

The rows this plan can move by editing alone are orchestration wording, RDBMS emphasis, and operations framing. Warehousing, security, and the lakehouse row cannot be moved honestly and are the reason for the revised ceiling.

- [ ] **Step 5: Commit only the intended source and plan if requested**

Do not stage unrelated untracked files or the existing deletion of `txd_CV.yaml`.

```bash
git add vng_data_engineer_cv.yaml docs/superpowers/plans/2026-07-27-vng-data-engineer-cv-improvements.md
git commit -m "cv: tailor VNG data engineer CV and update improvement plan"
```

Expected: a commit containing only the VNG CV source and this plan. The original message (`docs: plan ...`) understated the change — the commit carries CV content edits, not just a plan. Generated render outputs should be included only if that is the repository's established convention.

### Task 10: Optional Real Capability Additions

> **Added 2026-07-27. Out of scope for a same-day edit — listed so the ceiling identified under Goal is actionable rather than merely acknowledged.**

Nothing in this task may be added to the CV before the candidate has actually done the work. These are learning items, not wording items.

- [ ] **Step 1: Airflow**

Named explicitly in the JD as a required qualification, and genuinely absent. The candidate currently orchestrates via Kubernetes jobs with hand-rolled stage dependencies and retries — arguably a harder problem than authoring a DAG, but a screener greps for "Airflow" and does not find it.

A weekend building a real multi-task DAG with dependencies, retries, and a backfill is enough to list it truthfully and defend it. This is the single highest-return item in this task.

- [ ] **Step 2: Data warehousing fundamentals**

Also a required qualification, also absent. The gap is vocabulary as much as practice: no dimensional modeling, star schema, fact/dimension, or slowly-changing-dimension language appears anywhere in the repository. Reading and applying the fundamentals to one modeled schema makes the row defensible.

- [ ] **Step 3: Cheapest preferred-qualification wins**

ClickHouse and Iceberg/S3-compatible storage are both shallow enough to reach honest familiarity through a small hands-on project, and each adds a visible checkmark against the preferred list.

- [ ] **Step 4: Re-score after any of the above**

Only after real work is done, revisit Task 9, Step 4. With Airflow and warehousing genuinely added, 80+ becomes reachable.

---

## Appendix: Portfolio-Wide Defects (Out of Scope Here)

> **Added 2026-07-27** from a review of all 13 CV files in this repository. This plan is scoped to `vng_data_engineer_cv.yaml` and must not modify other CVs. These findings are recorded so they are not lost, and warrant a separate follow-up plan.

**Factual and consistency defects**

1. **Graduation date conflict.** `vnpay_cv.yaml:64` says `2026-12`; the other twelve say `2026-09`. Both versions have been sent. Blocking.
2. **Stale "Last updated" banner on six files.** `show_top_note: false` is missing from `backend`, `clarium`, `ai_automation`, `elca`, `techtorch`, and `bytedance`, so each prints e.g. `Last updated in June 2026` above the candidate's name. Confirmed in the generated Typst sources.
3. **Stale `current_date` across most files**, ranging from `2026-06-04` to `2026-07-21`. Also stamps PDF `CreationDate` metadata.
4. **Five CVs are not in reverse-chronological order** — `elca`, `nvidia_perf_engineer`, `sap`, `vnpay`, `zalopay` place AcamarAI above the current Pi role. ATS parsers infer recency from position.

*Non-issue, verified:* `pdf_title: NAME's CV` is a RenderCV template placeholder and substitutes correctly — the rendered metadata reads `Dao Xuan Tan's CV`. No action needed.

**Credibility risks**

5. **Nine job titles for two jobs** (table in Task 1, Step 2).
6. **`backend_cv.yaml:34` titles AcamarAI "Backend Engineer"**, while `cv_intake.md:105` records that there was no non-AI backend work there. Every bullet under it is FastAPI-wrapping-LLM work. The most exposed claim in the portfolio.
7. **FP8/INT8 quantization appears only in `nvidia_perf_engineer_cv.yaml:27`**, though `knorex`, `zalopay`, and `nvidia` describe the same vLLM/A100 work without it. Either it is real and is being omitted where it would help, or it was added to match a JD. NVIDIA will interview on exactly this.
8. **`nvidia_perf_engineer_cv.yaml:51` lists six technologies under "GPU & Systems (self-study)"** — CUDA, C++, SGLang, TGI, ONNX Runtime, diffusion models. The disclaimer will not prevent a deep-dive on whichever one the interviewer picks.
9. **"3 of 14" appears on all 13 CVs** (see Task 5, Step 3).
10. **"200+ GB → under 20 GB" appears on 12 of 13** without host context.

**Structural gaps**

11. **The Pi Associates bullets are near-identical across all 13 CVs** — memory leak, then runtime, then Kubernetes/GCP/CI — for NVIDIA and for VNG Business Operations alike. Acceptable where AcamarAI carries the application; wasteful on the four CVs where Pi is the relevant role.
12. **No projects section and no GitHub substance**, while GitHub is linked on every CV. For a September-2026 graduate applying to NVIDIA and SAP, a clicked-through empty profile is a liability rather than an asset.
13. **Every metric is engineering-internal** — runtime, memory, jobs/day, tokens/second. No cost, revenue, or user-facing outcome anywhere, which enterprise reviewers screen for.
14. **The tenure pattern affects all 13 files**, not only this one (see Task 7, Step 1).

**Cosmetic**

15. LinkedIn URL is an uncustomized percent-encoded slug with a hash suffix, displayed as `Đào Xuân Tân` while the CV header reads `Dao Xuan Tan`.
16. Page margins vary between 0.4in, 0.5in, and 0.6in across files.
