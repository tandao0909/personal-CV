// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Dao Xuan Tan",
  title: "Dao Xuan Tan's CV",
  footer: context { [#emph[Dao Xuan Tan -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in July 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.5in,
  page-bottom-margin: 0.5in,
  page-left-margin: 0.6in,
  page-right-margin: 0.6in,
  page-show-footer: true,
  page-show-top-note: false,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 24pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.25cm,
  header-space-below-connections: 0.25cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 7,
    day: 27,
  ),
)


= Dao Xuan Tan

  #headline([Data Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

Data engineer with 1+ year building and operating production #strong[Python ETL and batch pipelines] over #strong[financial market and time-series data], from ingestion and transformation through #strong[PostgreSQL] persistence, #strong[Kafka] streaming, and scheduled containerized workflows with stage dependencies, retries, and failure alerting. Strongest on #strong[SQL], #strong[data-quality validation], and production monitoring.

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer (Data & Quant Platform)

    #summary[Python, SQL, PostgreSQL, Kafka, Redis, pandas, Docker, Kubernetes, GCP, Grafana]

    - Own core development of an internal #strong[Python] data and backtesting platform serving #strong[20] quant researchers, running #strong[tens of thousands of jobs daily]

    - Built the batch #strong[ETL workflow] end to end, ingestion of #strong[financial market and time-series data], transformation, metrics computation, #strong[reconciliation across runs], and #strong[report generation], persisting to #strong[PostgreSQL] with schema design and raw #strong[SQL], plus #strong[Redis] caching

    - Orchestrated recurring and live workloads as scheduled #strong[Kubernetes] jobs across #strong[GCP] and on-premises with #strong[stage dependencies, retries, and failure alerting], plus #strong[Grafana] monitoring and input validation that cut failed runs and manual debugging

    - Detected nondeterministic output across identical runs, traced it to a failed deployment serving incorrect data, and added the #strong[data-quality validation and alerting] that now catches that class of failure before results reach users

    - Built and operated a #strong[Kafka] producer streaming trading signals in real time to downstream consumers

    - Cut common #strong[1–5 GB] workloads from minutes to #strong[under 10 seconds] through parallelism and vectorization, and resolved a memory leak that cut peak memory by #strong[an order of magnitude]

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[Python, SQL, ingestion pipelines, classification, entity resolution, evaluation]

    - Built ingestion pipelines over #strong[millions of records], parsing, validating, and normalizing structured and unstructured documents into a self-hosted store

    - Built #strong[classification] and #strong[entity-resolution] workflows combining deterministic rules with #strong[LLMs], with automated evaluation and human review to catch quality regressions

    - Owned #strong[3] core product features from requirements through rollout for #strong[Fortune 500] beta users

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

  ],
)

== Skills

#strong[Data Engineering:] Python (pandas, asyncio, multiprocessing), SQL, ETL and batch pipelines, ingestion and normalization

#strong[Databases & Modeling:] PostgreSQL (schema design, raw SQL), Redis, relational and time-series data modeling

#strong[Workflow & Streaming:] Kubernetes job orchestration (DAG-style stage dependencies, retries, trigger rules, failure branches), Airflow (working knowledge: KubernetesPodOperator, sensors, XCom, catchup\/backfill), Kafka streaming

#strong[Data Quality & Testing:] Input and schema validation, correctness and reconciliation checks, anomaly and silent-failure detection, pytest (unit and integration), Grafana monitoring and alerting

#strong[Infrastructure:] Docker, Kubernetes, GCP, on-premises, Linux, GitHub Actions CI\/CD, Git

#strong[AI & LLM:] LLM-assisted data processing, RAG and embedding pipelines, self-hosted model serving (vLLM), output evaluation

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5)

== Education

#education-entry(
  [
    #strong[Ho Chi Minh University of Science], Mathematics and Computer Science (Data Science)

    - GPA: 8.74\/10.0 (3.74\/4.0). Expected graduation #strong[Dec 2026], working full-time since June 2025

  ],
  [
    Ho Chi Minh City

    Oct 2022 – Dec 2026

  ],
  degree-column: [
    #strong[BSc]
  ],
)
