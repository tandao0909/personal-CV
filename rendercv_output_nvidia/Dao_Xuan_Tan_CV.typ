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

  #headline([Software Engineer, AI Systems])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

Software engineer building high-performance, GPU-backed AI systems on Linux. Production computer vision and deep learning with PyTorch (SAM, Grounding DINO, VLM, LoRA), on a systems core of concurrency, memory management, and profiling; cut peak memory from 200+ GB to under 20 GB and runtime from minutes to under 10 seconds. Strong CS fundamentals, with C++ from coursework and competitive programming, and quick to pick up new languages.

== Experience

#regular-entry(
  [
    #strong[Pi Associates], Software Engineer, Compute Platform

    #summary[Python, asyncio, multiprocessing, PostgreSQL, Kafka, Redis, Docker, Kubernetes, Linux, GCP]

    - Main developer of an internal #strong[Python] compute platform running #strong[tens of thousands] of jobs a day for about #strong[20] researchers and engineers

    - Diagnosed and fixed a critical #strong[memory leak], cutting peak memory from #strong[200+ GB to under 20 GB]

    - Cut runtime from #strong[minutes to under 10 seconds] on #strong[1-5 GB] of data per run through #strong[parallelism], vectorization, and algorithmic improvements

    - Designed the #strong[concurrent execution model] (#strong[asyncio] plus #strong[process pool], GIL-aware) to maximize #strong[throughput] under heavy parallel load

    - Built the #strong[PostgreSQL] schema, #strong[Redis] caching, and a #strong[Kafka] producer streaming signals to downstream consumers

    - Ran jobs as Dockerized #strong[Kubernetes] workloads across #strong[GCP] and on-premise #strong[Linux], with #strong[GitHub Actions] CI\/CD and #strong[Grafana]

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    7 months

  ],
)

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[Python, PyTorch, computer vision, SAM, Grounding DINO, VLM, LoRA, vLLM, FastAPI]

    - Applied #strong[computer vision] in production, object segmentation with #strong[SAM] and #strong[Grounding DINO], #strong[ColPali] vision-RAG, and #strong[VLM] document understanding

    - Fine-tuned task-specific models with #strong[LoRA\/PyTorch] and prepared datasets to improve accuracy for target tasks (#strong[deep learning])

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on a single #strong[A100 80GB] behind an OpenAI-compatible API, tuning #strong[GPU inference] to about #strong[1s TTFT] and #strong[200 tok\/s] aggregate throughput

    - Delivered #strong[3 of 14] core AI features end to end, from requirement to production, for #strong[Fortune 500] beta users

    - Integrated models into scalable back-end services with async #strong[FastAPI] and #strong[SSE] streaming, schema-validated through #strong[Instructor\/Pydantic], with #strong[evaluation] harnesses (#strong[recall\@k], #strong[LLM-as-judge])

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

== Skills

#strong[Programming:] Python (asyncio, multiprocessing), C++ (coursework, competitive programming), SQL, algorithms and data structures

#strong[Computer Vision & Deep Learning:] PyTorch, SAM, Grounding DINO, object segmentation, ColPali, VLM, LoRA fine-tuning

#strong[Concurrency & Performance:] asyncio, multiprocessing, GIL-aware concurrency, memory profiling and leak debugging

#strong[GPU & Inference:] vLLM self-hosted serving on A100, low-latency and high-throughput serving, CUDA kernel basics (self-study)

#strong[Backend & Distributed Systems:] FastAPI, async APIs, SSE streaming, PostgreSQL, Redis, Kafka, pandas, data pipelines

#strong[Linux & DevOps:] Linux, Docker, Kubernetes, GCP and on-premise, GitHub Actions CI\/CD, Grafana, pytest

#strong[LLM Systems:] RAG, Qdrant vector search, tool-calling agents, LangChain\/LangGraph, Instructor\/Pydantic validation

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
