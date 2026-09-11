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
  page-top-margin: 0.4in,
  page-bottom-margin: 0.4in,
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
    day: 6,
  ),
)


= Dao Xuan Tan

  #headline([MLOps Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

MLOps engineer building and optimizing production ML systems across model lifecycle, data and embedding pipelines, low-latency model serving, evaluation metrics, and monitoring. Track record of profiling large-scale pipelines, hunting bottlenecks, and cutting latency at scale on strong Python and algorithms and data-structures foundation; quick to pick up new languages and technology.

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, Compute Platform

    #summary[Python, asyncio, multiprocessing, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP, Grafana]

    - Own internal #strong[Python] compute platform running #strong[tens of thousands] of quant model backtest and evaluation #strong[jobs daily] for about #strong[20] researchers

    - Investigated pipeline, #strong[identified bottlenecks], and cut runtime from #strong[minutes to under 10 seconds] on #strong[1 to 5 GB] per run through #strong[parallelism], vectorization, and algorithmic improvements

    - Designed #strong[concurrent execution model] (#strong[asyncio] plus #strong[process pool]) to maximize #strong[job throughput] under heavy parallel load

    - Built #strong[Kafka] producer streaming model signals to downstream consumers, production #strong[data-pipeline component] feeding real-time systems

    - Ran jobs as Dockerized #strong[Kubernetes] workloads across #strong[GCP] and on-premise, with #strong[GitHub Actions] CI\/CD and #strong[Grafana] monitoring

    - Hardened reliability with stronger error handling and input validation, reducing failed runs and manual debugging

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    7 months

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI\/ML Engineer

    #summary[Python, vLLM, model serving, data pipelines, evaluation, LoRA, FastAPI, PyTorch]

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on single #strong[A100 80GB] behind #strong[OpenAI-compatible API], delivering #strong[low-latency serving] (about #strong[1s TTFT], #strong[200 tok\/s] aggregate)

    - Built ingestion and #strong[embedding data pipelines] (chunking strategies, #strong[BGE] embeddings, #strong[ColPali] for document images) feeding self-hosted vector store over #strong[millions of vectors]

    - Developed #strong[evaluation metrics and harnesses], #strong[recall\@k] and #strong[LLM-as-judge], to measure and improve model output quality

    - Fine-tuned task-specific models with #strong[LoRA] and shipped #strong[3 of 14] core AI features for Fortune 500 beta users via #strong[async FastAPI] with #strong[SSE] streaming

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

== Skills

#strong[Model Serving & Optimization:] vLLM, self-hosted Qwen, OpenAI-compatible APIs, low-latency and high-throughput serving, LoRA fine-tuning, GPU (A100)

#strong[Data & ML Pipelines:] ingestion and embedding pipelines, Kafka streaming, batch and compute jobs, vector indexing (Qdrant), evaluation harnesses (recall\@k, LLM-as-judge)

#strong[Performance & Scale:] multiprocessing and parallelism (asyncio + process pool), vectorization, profiling, latency and throughput optimization, algorithms and data structures

#strong[Backend & APIs:] Python, FastAPI, asyncio, SSE streaming, REST APIs, Pydantic validation, PostgreSQL, Redis

#strong[Infra & MLOps:] Docker, Kubernetes, GCP, on-premise, GitHub Actions CI\/CD, Grafana

#strong[Tools:] AI-assisted development (Claude Code, Cursor, Codex), Git, uv

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5)

== Education

#education-entry(
  [
    #strong[Ho Chi Minh University of Science], Mathematics & Computer Science (Data Science)

    - GPA: 8.74\/10.0 (3.74\/4.0)

  ],
  [
    Ho Chi Minh City

    Oct 2022 – Sept 2026

  ],
  degree-column: [
    
  ],
)
