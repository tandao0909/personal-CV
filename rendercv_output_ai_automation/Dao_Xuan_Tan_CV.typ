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
    day: 4,
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

AI Engineer and Software Developer with 1 year of experience building Python internal tools, FastAPI services, data pipelines, and LLM-powered automation. Strong in Pandas, backend APIs, self-hosted AI model, RAG, prompt engineering, Docker, Kubernetes, and CI\/CD.

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

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Developer

    #summary[Python, FastAPI, Pandas, PostgreSQL, Kafka, Redis, Docker, Kubernetes, GitHub Actions]

    - Own core development of an internal Python backtesting platform exposed through APIs for quant researchers and engineers across the company

    - Built the core engine, FastAPI endpoints, Pandas backtest pipeline, metrics computation, result comparison, and report download workflows

    - Improved backtest runtime from minutes to under 10 seconds for common runs while processing 1-5 GB of data per run

    - Supported tens of thousands of daily backtest runs and about 20 internal users through API-driven workflows

    - Deployed backtests as Dockerized Kubernetes jobs with scheduled pipelines for live runs

    - Improved reliability through stronger error handling and input validation, reducing failed runs, manual debugging, and broken pipeline cases

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

    #summary[Python, FastAPI, LLM, VLM, RAG, LangChain, vLLM, PyTorch]

    - Deployed self-hosted LLM services with vLLM using an OpenAI-compatible API interface for internal AI features

    - Built LLM workflows with FastAPI, LangChain, RAG, prompt engineering, and evaluation harnesses

    - Developed 3 of 14 core AI functionalities for Fortune 500 beta users, turning product requirements into production-facing AI workflows

    - Evaluated LLM\/VLM outputs for accuracy, reliability, and response quality, then created repeatable QA checks for AI-generated outputs

    - Prepared datasets, fine-tuned models, and optimized inference quality for task-specific AI use cases

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

== Skills

#strong[LLM Engineering:] OpenAI, OpenAI-compatible APIs, prompt engineering, RAG, LangChain, vLLM, AI output evaluation

#strong[Backend & Data:] Python, FastAPI, Pandas, PostgreSQL, Kafka, Redis, API design, data pipelines, workflow automation

#strong[ML:] PyTorch, TensorFlow, fine-tuning, dataset preparation, NLP, model evaluation

#strong[DevOps & Workflow:] Git, code review, GitHub Actions, Docker, Kubernetes, CI\/CD, agile collaboration

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5)
