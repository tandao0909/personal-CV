# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
Data engineer with 1+ year building and operating production **Python ETL and batch pipelines** over **financial market and time-series data**, from ingestion and transformation through **PostgreSQL** persistence, **Kafka** streaming, and scheduled containerized workflows with stage dependencies, retries, and failure alerting. Strongest on **SQL**, **data-quality validation**, and production monitoring.

# Experience
## **Pi Associates**, Software Engineer (Data & Quant Platform)

Ho Chi Minh

Jan 2026 – present

Python, SQL, PostgreSQL, Kafka, Redis, pandas, Docker, Kubernetes, GCP, Grafana

- Own core development of an internal **Python** data and backtesting platform serving **20** quant researchers, running **tens of thousands of jobs daily**

- Built the batch **ETL workflow** end to end, ingestion of **financial market and time-series data**, transformation, metrics computation, **reconciliation across runs**, and **report generation**, persisting to **PostgreSQL** with schema design and raw **SQL**, plus **Redis** caching

- Orchestrated recurring and live workloads as scheduled **Kubernetes** jobs across **GCP** and on-premises with **stage dependencies, retries, and failure alerting**, plus **Grafana** monitoring and input validation that cut failed runs and manual debugging

- Detected nondeterministic output across identical runs, traced it to a failed deployment serving incorrect data, and added the **data-quality validation and alerting** that now catches that class of failure before results reach users

- Built and operated a **Kafka** producer streaming trading signals in real time to downstream consumers

- Cut common **1–5 GB** workloads from minutes to **under 10 seconds** through parallelism and vectorization, and resolved a memory leak that cut peak memory by **an order of magnitude**



## **AcamarAI**, AI Engineer

Ho Chi Minh

June 2025 – Jan 2026

Python, SQL, ingestion pipelines, classification, entity resolution, evaluation

- Built ingestion pipelines over **millions of records**, parsing, validating, and normalizing structured and unstructured documents into a self-hosted store

- Built **classification** and **entity-resolution** workflows combining deterministic rules with **LLMs**, with automated evaluation and human review to catch quality regressions

- Owned **3** core product features from requirements through rollout for **Fortune 500** beta users



# Skills
**Data Engineering:** Python (pandas, asyncio, multiprocessing), SQL, ETL and batch pipelines, ingestion and normalization

**Databases & Modeling:** PostgreSQL (schema design, raw SQL), Redis, relational and time-series data modeling

**Workflow & Streaming:** Kubernetes job orchestration (DAG-style stage dependencies, retries, trigger rules, failure branches), Airflow (working knowledge: KubernetesPodOperator, sensors, XCom, catchup/backfill), Kafka streaming

**Data Quality & Testing:** Input and schema validation, correctness and reconciliation checks, anomaly and silent-failure detection, pytest (unit and integration), Grafana monitoring and alerting

**Infrastructure:** Docker, Kubernetes, GCP, on-premises, Linux, GitHub Actions CI/CD, Git

**AI & LLM:** LLM-assisted data processing, RAG and embedding pipelines, self-hosted model serving (vLLM), output evaluation

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics and Computer Science (Data Science)

**BSc**

Ho Chi Minh City

Oct 2022 – Dec 2026

- GPA: 8.74/10.0 (3.74/4.0). Expected graduation **Dec 2026**, working full-time since June 2025


