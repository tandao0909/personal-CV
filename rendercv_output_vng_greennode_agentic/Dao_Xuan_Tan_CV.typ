// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Dao Xuan Tan",
  title: "Dao Xuan Tan's CV",
  footer: context { [#emph[Dao Xuan Tan -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Aug 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.35in,
  page-bottom-margin: 0.35in,
  page-left-margin: 0.5in,
  page-right-margin: 0.5in,
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
  typography-line-spacing: 0.45em,
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
  section-titles-space-above: 0.25cm,
  section-titles-space-below: 0.15cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 0.7em,
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
    month: 8,
    day: 19,
  ),
)


= Dao Xuan Tan

  #headline([Backend & Agent Platform Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

Backend and platform engineer in #strong[Python]. Operate a #strong[multi-tenant Kubernetes] compute platform across #strong[GCP] and #strong[on-premise bare-metal Linux] at #strong[tens of thousands of jobs a day], owning the #strong[FastAPI] services, #strong[PostgreSQL] and #strong[Redis] data layer, #strong[Kafka] producer, CI\/CD, and #strong[incident response] behind it. Previously built the #strong[agent platform] at AcamarAI, multi-step #strong[orchestration] on #strong[tool calling], #strong[context compression], and #strong[schema-validated guardrails], over #strong[vLLM] serving and #strong[RAG] at #strong[millions of vectors].

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, AI & Compute Platform

    #summary[Python, asyncio, FastAPI, PostgreSQL, Redis, Kafka, Docker, Kubernetes, GCP, on-premise bare-metal Linux, GitHub Actions, Grafana, Prometheus]

    - Operate a #strong[multi-tenant] internal #strong[Python] compute platform running #strong[tens of thousands] of #strong[jobs a day] for about #strong[20] researchers and engineers, across #strong[GCP] and #strong[on-premise bare-metal Linux]

    - Built the backend behind it: async #strong[FastAPI] endpoints with #strong[Pydantic] validation, #strong[PostgreSQL] schema design (#strong[SQLAlchemy] ORM and raw #strong[SQL]), #strong[Redis] caching, and a #strong[Kafka] producer feeding downstream consumers, plus data-quality checks that catch silent bad-data failures

    - Run workloads as Dockerized #strong[Kubernetes] jobs with per-tenant #strong[container isolation], scheduled pipelines (stage dependencies, retries, failure alerting), #strong[GitHub Actions] CI\/CD, and #strong[Grafana] and #strong[Prometheus] monitoring

    - Diagnosed and fixed a silent production #strong[memory leak] (#strong[aggregate worker peak memory] from #strong[200+ GB to under 20 GB]), cut runtime from #strong[minutes to under 10 seconds] on #strong[1 to 5 GB] per run, and designed the #strong[concurrent execution model] (#strong[asyncio] plus process pool, GIL-aware)

    - Handle #strong[production incidents] and #strong[root-cause analysis], including tracing nondeterministic output across a service boundary to a silently failed deploy serving a stale build

    - Build, test, and review features daily with agentic AI coding tools (#strong[Claude Code], #strong[Cursor], #strong[Codex]) and their #strong[MCP] tool integrations, verifying every change against tests and real data before merging

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer, Inference & AI Platform

    #summary[LangChain\/LangGraph, OpenAI tool calling, Instructor\/Pydantic, Qdrant, FastAPI (async, SSE), vLLM, A100, PyTorch]

    - Built the #strong[agent platform]: multi-step planning and an #strong[orchestration loop] on #strong[OpenAI tool calling] with #strong[LangChain\/LangGraph], tools for shell-based text processing and internal-DB retrieval, and #strong[history compression] for context construction, served through async #strong[FastAPI] with #strong[SSE]

    - Made agent behaviour reliable with #strong[guardrails]: #strong[schema-validated] output (#strong[Instructor\/Pydantic]), malformed-tool-argument retries, #strong[evaluation harnesses] (#strong[recall\@k], #strong[LLM-as-judge]), and versioned prompts and models under a #strong[regression suite], owning #strong[3] core AI features end to end for #strong[Fortune 500] beta users

    - Designed the retrieval data model over #strong[millions of vectors] in self-hosted #strong[Qdrant], combining #strong[hybrid] dense plus BM25 search with a #strong[reranker] that beat pure vector search on #strong[recall\@k]

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on an #strong[A100 80GB] behind an #strong[OpenAI-compatible API], using #strong[FP8\/INT8 quantization], #strong[continuous batching], and #strong[KV-cache] tuning to reach about #strong[1s TTFT], #strong[40 tok\/s] per request and #strong[200 tok\/s] aggregate

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

  ],
)

== Skills

#strong[Backend & APIs:] Python (asyncio, multiprocessing, GIL-aware concurrency, typing, packaging with uv), FastAPI (async, SSE streaming), REST API design, Pydantic validation, OpenAI-compatible APIs, pytest (unit and integration)

#strong[Data & Messaging:] PostgreSQL (schema design, SQLAlchemy ORM, raw SQL), Redis caching, Kafka producer, Qdrant vector database (hybrid retrieval, reranking), BGE embeddings, ColPali vision RAG, pandas

#strong[Agent Platform:] Orchestration loop (multi-step planning, OpenAI tool calling), shell-execution and retrieval tools, context and history compression, guardrails (schema-validated output, malformed-argument retries), LangChain\/LangGraph, RAG, evaluation harnesses (recall\@k, LLM-as-judge), prompt and model versioning

#strong[Containers, Cloud & CI\/CD:] Docker, Kubernetes (jobs, manifests, containerized workload isolation), GCP and on-premise bare-metal Linux, GitHub Actions, Git, multi-tenant job platforms, scheduled pipelines with dependencies, retries and alerting

#strong[Reliability & Observability:] Grafana and Prometheus, failure alerting, memory and CPU profiling, incident response and root-cause analysis, data-quality validation, vLLM self-hosted serving (FP8\/INT8 quantization, continuous batching, KV-cache tuning)

#strong[Languages:] Vietnamese (Native), English (IELTS 6.5)

== Education

#education-entry(
  [
    #strong[Ho Chi Minh University of Science], Mathematics & Computer Science (Data Science)

    - GPA: 8.74\/10.0. Expected graduation #strong[Dec 2026], working full-time since June 2025

  ],
  [
    Ho Chi Minh City

    Oct 2022 – Dec 2026

  ],
  degree-column: [
    #strong[BSc]
  ],
)
