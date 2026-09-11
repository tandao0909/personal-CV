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
  typography-line-spacing: 0.5em,
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
    month: 7,
    day: 30,
  ),
)


= Dao Xuan Tan

  #headline([AI Platform & Inference Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

AI platform engineer across #strong[MLOps], #strong[inference optimization], and #strong[AI backend and agent engineering], already working in fintech. Serve self-hosted LLMs with #strong[vLLM] on #strong[A100] GPUs (about #strong[1s TTFT], #strong[200 tok\/s] aggregate), and own an internal Python compute platform on #strong[Kubernetes] running #strong[tens of thousands of jobs a day], where I cut runtime from #strong[minutes to under 10 seconds] and peak memory from #strong[200+ GB to under 20 GB]. Build reliable systems around #strong[non-deterministic model outputs].

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, AI & Compute Platform

    #summary[Python, asyncio, multiprocessing, Kubernetes, Docker, GCP, bare-metal Linux, PostgreSQL, Kafka, Redis, Grafana]

    - Own an internal #strong[Python] compute platform running #strong[tens of thousands] of model backtest and evaluation #strong[jobs a day] for about #strong[20] researchers and engineers

    - Profiled the pipeline, #strong[identified bottlenecks], and cut runtime from #strong[minutes to under 10 seconds] on #strong[1 to 5 GB] per run through #strong[parallelism], #strong[vectorization], and algorithmic change

    - Diagnosed and fixed a silent production #strong[memory leak] (peak memory #strong[200+ GB to under 20 GB]), and designed the #strong[concurrent execution model] (#strong[asyncio] plus process pool, GIL-aware) for job #strong[throughput] under heavy parallel load

    - Run workloads as Dockerized #strong[Kubernetes] jobs across #strong[GCP] and on-premise #strong[bare-metal Linux], with scheduled pipelines (stage dependencies, retries, failure alerting), #strong[GitHub Actions] CI\/CD, and #strong[Grafana] monitoring

    - Built the #strong[PostgreSQL] schema, #strong[Redis] caching, and a #strong[Kafka] producer to downstream consumers, plus data-quality checks that catch silent bad-data failures before results reach users

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer, Inference & AI Platform

    #summary[vLLM, A100, FP8\/INT8 quantization, tensor parallelism, LangChain\/LangGraph agents, Qdrant, VLM OCR, FastAPI, PyTorch]

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on #strong[A100] GPUs behind an #strong[OpenAI-compatible API], using #strong[FP8\/INT8 quantization] and #strong[continuous batching] and #strong[KV-cache] tuning to reach about #strong[1s TTFT] and #strong[200 tok\/s] aggregate

    - Scaled serving with #strong[tensor parallelism across GPUs] and #strong[multiple vLLM replicas behind a load balancer], on #strong[bare-metal GPU hosts] (NVIDIA driver, CUDA, container toolkit)

    - Engineered reliably around #strong[non-deterministic model outputs], #strong[schema-validated] generation (#strong[Instructor\/Pydantic]), malformed-tool-argument retries, #strong[evaluation harnesses] (#strong[recall\@k], #strong[LLM-as-judge]), and versioned prompts and models with a #strong[regression suite] re-run on every change

    - Built #strong[agent orchestration]: multi-step planning on #strong[OpenAI tool calling] with #strong[LangChain\/LangGraph], tools for text processing and internal-DB retrieval, and #strong[history compression] for context construction

    - Built production #strong[RAG] over #strong[millions of vectors] in self-hosted #strong[Qdrant] (#strong[hybrid] dense + BM25, a #strong[reranker] beating pure vector search on recall\@k, #strong[BGE], #strong[ColPali] vision RAG, #strong[VLM-based OCR] over complex documents), shipping #strong[3 of 14] core AI features for #strong[Fortune 500] beta users via #strong[async FastAPI] with #strong[SSE]

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

  ],
)

== Skills

#strong[AI Platform & MLOps:] Self-hosted GPU model serving, model and prompt versioning with regression suites, Docker, Kubernetes, GitHub Actions CI\/CD, GCP and on-premise bare metal, Grafana, Airflow (working knowledge)

#strong[Inference & Optimization:] vLLM, FP8\/INT8 quantization, continuous batching and KV-cache tuning, tensor parallelism, load-balanced multi-replica serving, latency (TTFT) and throughput profiling, NVIDIA host stack (drivers, CUDA, container toolkit)

#strong[AI Backend, Agents & Retrieval:] FastAPI (async, SSE), REST API and system design, tool-calling agents, LangChain\/LangGraph, Instructor\/Pydantic validation, Qdrant hybrid retrieval, reranking, BGE, ColPali, VLM OCR, PyTorch, LoRA

#strong[Languages & Data:] Python (asyncio, multiprocessing, typing, uv), SQL, PostgreSQL, Redis, Kafka, pandas, C++ (coursework and competitive programming), algorithms and data structures

#strong[Tools:] AI-assisted development (Claude Code, Cursor, Codex) verified against tests and real data, Git, pytest

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
