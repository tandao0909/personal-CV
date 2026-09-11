// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Dao Xuan Tan",
  title: "Dao Xuan Tan's CV",
  footer: context { [#emph[Dao Xuan Tan -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in June 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.6in,
  page-bottom-margin: 0.6in,
  page-left-margin: 0.6in,
  page-right-margin: 0.6in,
  page-show-footer: true,
  page-show-top-note: true,
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
    month: 6,
    day: 22,
  ),
)


= Dao Xuan Tan

  #headline([AI Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

AI engineer building production LLM data pipelines, classification, entity resolution, and evaluation on top of Python, PostgreSQL, and SQL. Strong on data quality and finding the silent bugs others miss, with solid backend and production-observability foundations.

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer

    #summary[Python, PostgreSQL, SQL, Kafka, Redis, Docker, Kubernetes, GCP, GitHub Actions, Grafana]

    - Main developer responsible for an internal #strong[Python] data and backtesting package, used by about 20 researchers and engineers running #strong[tens of thousands] of runs a day

    - Audited and fixed a silent production memory leak no one had caught, cutting peak memory from #strong[200+ GB to under 20 GB], treating the silent bug as a real failure, tracing root cause, and shipping the fix

    - Cut runtime from #strong[minutes to under 10 seconds] on #strong[1-5 GB] of data per run through parallelism, vectorization, and algorithmic improvements

    - Worked across #strong[PostgreSQL] (schema design and SQL queries), #strong[Redis] caching, and a #strong[Kafka] producer feeding downstream consumers

    - Ran jobs as Dockerized #strong[Kubernetes] workloads on #strong[GCP], with #strong[GitHub Actions] CI\/CD and #strong[Grafana] production monitoring

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    6 months

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[Python, LLM, classification, entity resolution, evaluation, vLLM, RAG]

    - Built #strong[classification and entity-resolution] workflows that combine deterministic rules with #strong[LLMs] for reliable, production data processing

    - Built #strong[evaluation harnesses], automated output scoring plus human-in-the-loop review, to measure and improve output quality

    - Deployed self-hosted #strong[LLM] inference (#strong[vLLM]) behind an OpenAI-compatible API for internal AI features

    - Owned #strong[3] production AI features end to end (of #strong[14] core features) for Fortune 500 beta users

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

== Skills

#strong[LLM & Data Intelligence:] classification, entity resolution, RAG, prompt engineering, output evaluation, vLLM, OpenAI-compatible APIs

#strong[Backend & Data:] Python, SQL, PostgreSQL, FastAPI, Redis, Kafka, data pipelines

#strong[DevOps & Observability:] Docker, Kubernetes, GCP, GitHub Actions CI\/CD, Grafana

#strong[ML:] PyTorch, fine-tuning, dataset preparation, model evaluation

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5)

== Education

#education-entry(
  [
    #strong[Ho Chi Minh University of Science], Mathematics and Computer Science, Data Science track

    - GPA: 8.74\/10.0 (3.74\/4.0)

  ],
  [
    Ho Chi Minh City

    Oct 2022 – Sept 2026

  ],
  degree-column: [
    
  ],
)
