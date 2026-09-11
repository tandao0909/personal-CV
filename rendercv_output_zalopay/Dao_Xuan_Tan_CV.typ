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
    month: 6,
    day: 23,
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

AI Engineer specializing in production LLM systems across retrieval and search, tool-calling agents, and self-hosted model serving. Backed by strong production Python and backend APIs from high-scale quant-finance infrastructure.

== Experience

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[RAG, retrieval, LLM agents, Qdrant, LangChain, vLLM, FastAPI, PyTorch]

    - Built production #strong[RAG and retrieval] over #strong[millions of vectors] in self-hosted #strong[Qdrant], combining #strong[hybrid] dense and sparse (BM25) search with a #strong[reranking] model that outperformed pure vector search on #strong[recall\@k]

    - Designed ingestion and embedding pipelines using multiple chunking strategies, #strong[BGE] embeddings, and #strong[ColPali] for #strong[vision RAG] over document images

    - Developed #strong[agentic] LLM workflows on #strong[OpenAI tool calling] and #strong[LangChain], applying multi-step planning with tools for text processing and internal-DB retrieval

    - Made tool calls reliable by enforcing schema-validated outputs with #strong[Instructor\/Pydantic] and handling retries and malformed arguments

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on a single A100 80GB (about 1s TTFT, 200 tok\/s aggregate) behind an #strong[OpenAI-compatible API]

    - Evaluated retrieval and generation with #strong[recall\@k] and #strong[LLM-as-judge] harnesses, fine-tuned task-specific models with #strong[LoRA], and shipped #strong[3 of 14] core AI features for Fortune 500 beta users via #strong[async FastAPI] with #strong[SSE] streaming

  ],
  [
    Ho Chi Minh

    June 2025 – Jan 2026

    8 months

  ],
)

#regular-entry(
  [
    #strong[Pi Associates], Software Developer (Quant Finance)

    #summary[Python, FastAPI, Pandas, PostgreSQL, Kafka, Redis, Docker, Kubernetes, GCP]

    - Responsible for an internal Python backtesting package for quant researchers, running tens of thousands of backtests a day

    - Diagnosed and fixed a critical #strong[memory leak], cutting peak memory from #strong[200+ GB to under 20 GB]

    - Reduced backtest runtime from #strong[minutes to under 10 seconds] on #strong[1 to 5 GB] of data per run through #strong[parallelism], vectorization, and algorithmic improvements

    - Ran backtests as Dockerized #strong[Kubernetes] jobs across #strong[GCP] and on-premise, with #strong[GitHub Actions] CI\/CD and #strong[Grafana] monitoring, plus stronger error handling and input validation to reduce failed runs

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    6 months

  ],
)

== Skills

#strong[Retrieval & Search:] Qdrant, hybrid dense + sparse (BM25) retrieval, reranking models, BGE embeddings, ColPali vision RAG, chunking strategies, recall\@k evaluation

#strong[LLM & Agents:] RAG, OpenAI tool\/function calling, multi-step planning agents, LangChain, Instructor, prompt engineering, context construction

#strong[LLM Serving & ML:] vLLM, self-hosted Qwen, OpenAI-compatible APIs, LoRA fine-tuning, LLM-as-judge evaluation, PyTorch, computer vision

#strong[Backend & APIs:] Python, FastAPI, asyncio, SSE streaming, REST APIs, Pydantic validation, PostgreSQL, Redis, Kafka

#strong[Infra & DevOps:] Docker, Kubernetes, GCP, on-premise, GitHub Actions CI\/CD, Grafana

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
