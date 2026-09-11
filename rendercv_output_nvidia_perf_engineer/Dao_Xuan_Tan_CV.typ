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
    day: 15,
  ),
)


= Dao Xuan Tan

  #headline([Deep Learning Inference & Performance Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

Engineer focused on #strong[LLM inference optimization on NVIDIA GPUs] and large-scale performance engineering. Served self-hosted transformer models with #strong[vLLM] on #strong[A100] using #strong[FP8\/INT8 quantization], tuning latency and throughput; complemented by a track record of profiling production pipelines, hunting bottlenecks, and cutting latency at scale. Built on a strong #strong[Mathematics and Computer Science] foundation with solid algorithms and data structures; quick to pick up new languages and low-level systems.

== Experience

#regular-entry(
  [
    #strong[AcamarAI], Deep Learning \/ Inference Engineer

    #summary[Python, PyTorch, vLLM, transformers, LLM\/VLM, FP8\/INT8 quantization, LoRA, A100]

    - Served self-hosted #strong[Qwen] transformer models with #strong[vLLM] on a single #strong[A100 80GB] behind an #strong[OpenAI-compatible API], running #strong[FP8\/INT8 quantized] weights to cut memory and boost throughput

    - Profiled and optimized #strong[inference latency and throughput] to about #strong[1s TTFT], #strong[40 tok\/s per request], and #strong[200 tok\/s aggregate], tuning batching and KV-cache utilization on the GPU

    - Fine-tuned task-specific models with #strong[LoRA] and shipped #strong[3 of 14] core AI features for Fortune 500 beta users via #strong[async FastAPI] with #strong[SSE] streaming

    - Built #strong[evaluation harnesses] (#strong[recall\@k], #strong[LLM-as-judge]) to measure and regression-test model output quality across releases

    - Developed ingestion and #strong[embedding pipelines] (chunking, #strong[BGE] embeddings, #strong[ColPali] for document images) over #strong[millions of vectors], including vision-language (VLM) workloads

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, Performance \/ Compute Platform

    #summary[Python, asyncio, multiprocessing, profiling, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP]

    - Own an internal #strong[Python] compute platform running #strong[tens of thousands] of quant model backtest and evaluation #strong[jobs daily] for about #strong[20] researchers

    - Profiled workloads, #strong[identified bottlenecks], and cut runtime from #strong[minutes to under 10 seconds] on #strong[1 to 5 GB] per run through #strong[parallelism], #strong[vectorization], and algorithmic improvements

    - Diagnosed and fixed a silent memory leak, reducing peak usage from #strong[200+ GB to under 20 GB] of RAM

    - Designed a #strong[concurrent execution model] (#strong[asyncio] plus #strong[process pool]) to maximize #strong[job throughput] under heavy parallel load

    - Ran jobs as Dockerized #strong[Kubernetes] workloads across #strong[GCP] and on-premise, with #strong[GitHub Actions] CI\/CD and #strong[Grafana] monitoring

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    7 months

  ],
)

== Skills

#strong[Deep Learning & Inference:] PyTorch, transformers, LLM\/VLM, vLLM, LoRA fine-tuning, FP8\/INT8 quantization, KV-cache & continuous batching, OpenAI-compatible serving (A100)

#strong[Performance Engineering:] profiling & bottleneck analysis, parallelism (asyncio + process pool), vectorization, memory optimization, latency & throughput tuning, algorithms & data structures

#strong[GPU & Systems (self-study):] CUDA, C++, SGLang, TGI, ONNX Runtime, diffusion models

#strong[Backend & Infra:] Python, FastAPI, asyncio, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP, GitHub Actions CI\/CD, Grafana

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
