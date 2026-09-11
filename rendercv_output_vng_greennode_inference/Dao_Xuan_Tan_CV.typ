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
    day: 17,
  ),
)


= Dao Xuan Tan

  #headline([LLM Inference & Performance Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

Performance engineer working on #strong[LLM inference]. Optimized self-hosted serving with #strong[vLLM] on #strong[A100] GPUs through #strong[FP8\/INT8 quantization], #strong[continuous batching], #strong[KV-cache] tuning, #strong[chunked prefill] and #strong[prefix caching], and #strong[tensor and pipeline parallelism], reaching about #strong[1s TTFT] and #strong[200 tok\/s] aggregate.

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, AI & Compute Platform

    #summary[Python, asyncio, multiprocessing, cProfile, py-spy, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP, on-premise bare-metal Linux]

    - Own an internal #strong[Python] compute platform sustaining #strong[tens of thousands of jobs a day] for about #strong[20] engineers across #strong[GCP] and #strong[on-premise]

    - Diagnosed and fixed a silent production #strong[memory leak], cutting #strong[aggregate worker peak memory] from #strong[200+ GB to under 20 GB]

    - Designed the #strong[concurrent execution model] (#strong[asyncio] plus process pool, GIL-aware) after #strong[benchmarking] threads, processes, and pools against each other for #strong[throughput] under heavy parallel load

    - Handle #strong[production incidents] and #strong[root-cause analysis], including tracing nondeterministic output across a service boundary to a silently failed deploy serving a stale build

    - Built the #strong[Kafka] producer, #strong[PostgreSQL] schema, and #strong[Redis] caching behind the platform

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer, Inference & AI Platform

    #summary[vLLM, A100, FP8\/INT8 quantization, KV-cache, continuous batching, chunked prefill, tensor and pipeline parallelism, CUDA, torch.profiler, PyTorch]

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on an #strong[A100 80GB] behind an #strong[OpenAI-compatible API], using #strong[FP8\/INT8 quantization], #strong[continuous batching], #strong[KV-cache] tuning, and #strong[chunked prefill] with #strong[prefix caching] to reach about #strong[1s TTFT], #strong[40 tok\/s] per request and #strong[200 tok\/s] aggregate

    - Scaled serving with #strong[tensor and pipeline parallelism across GPUs] and #strong[multiple vLLM replicas], on #strong[bare-metal GPU hosts]

    - #strong[Instrumented and profiled the serving path] with #strong[vLLM metrics], and #strong[nvidia-smi], tuning against measured #strong[GPU utilization], batch occupancy, and cache behaviour

    - Held the #strong[reliability of the inference pipeline] with #strong[versioned models and prompts] under a #strong[regression suite] re-run on every change, plus #strong[evaluation harnesses] (#strong[recall\@k], #strong[LLM-as-judge]) for non-deterministic output

    - Built the layer above the engine, #strong[agent orchestration] (#strong[LangChain\/LangGraph], tool calling) and #strong[RAG] over #strong[millions of vectors] in self-hosted #strong[Qdrant] through async #strong[FastAPI] with #strong[SSE], owning #strong[3] core AI features end to end for #strong[Fortune 500] beta users

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

  ],
)

== Skills

#strong[LLM Inference Optimization:] vLLM, FP8\/INT8 quantization, continuous batching, KV-cache management, chunked prefill and prefix caching, tensor and pipeline parallelism, TTFT, latency and throughput tuning, GPU utilization

#strong[GPU & Low-Level:] CUDA programming model, kernels written, GPU architecture, NVIDIA host stack, A100, C++ (reading, coursework and competitive programming)

#strong[Profiling & Performance:] vLLM metrics, nvidia-smi, bottleneck analysis, memory-leak diagnosis, vectorization, algorithmic optimization

#strong[Distributed & High-Throughput Systems:] Python (asyncio, multiprocessing, GIL-aware concurrency), Kafka, PostgreSQL, Redis, FastAPI (async, SSE), Docker, Kubernetes, GCP and on-premise bare-metal Linux

#strong[LLMOps & Reliability:] Model and prompt versioning, regression suites, evaluation harnesses, incident response and root-cause analysis, Grafana and Prometheus monitoring, pytest, GitHub Actions CI\/CD, PyTorch, LoRA, agents, RAG

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
