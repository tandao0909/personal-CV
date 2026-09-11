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
    month: 6,
    day: 24,
  ),
)


= Dao Xuan Tan

  #headline([AI Solution Engineer])

#connections(
  [#connection-with-icon("location-dot")[Ho Chi Minh, Vietnam]],
  [#link("mailto:tan.daoxuan0909@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[tan.daoxuan0909\@gmail.com]]],
  [#link("tel:+84-839-782-709", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[0839 782 709]]],
  [#link("https://github.com/tandao0909", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[tandao0909]]],
  [#link("https://www.linkedin.com/in/t%C3%A2n-%C4%91%C3%A0o-xu%C3%A2n-9a717b305/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[Đào Xuân Tân]]],
)


== Summary

AI engineer building production LLM systems for legal, IP, and compliance workflows, with hands-on experience in RAG pipelines, vector search, tool-calling agents, and backend API integration. Ship schema-validated, human-reviewed AI automation using Python\/FastAPI, OpenAI-compatible APIs, self-hosted models, and reliability-focused engineering practices.

== Experience

#regular-entry(
  [
    #strong[AcamarAI], AI Engineer

    #summary[Legal\/IP LLM systems, RAG, Qdrant, tool-calling agents, LangChain, Instructor, vLLM, FastAPI]

    - Owned end-to-end #strong[LLM patent drafting and classification] system, one of #strong[3 of 14] core features for #strong[Fortune 500] beta client; generated patent claim and description text, classified technical documents, and turned legal and #strong[IP] requirements into production AI workflow

    - Enforced reliable, well-formed legal output via #strong[schema-validated] generation (#strong[Instructor\/Pydantic]); validated quality through #strong[patent and domain-expert human-in-the-loop review] and #strong[LLM-as-judge] evaluation harnesses

    - Built production #strong[RAG and retrieval] over #strong[millions of vectors] in self-hosted #strong[Qdrant], combining #strong[hybrid] dense and sparse (BM25) search with #strong[reranking] model that outperformed pure vector search on #strong[recall\@k] for prior-art-style retrieval across legal and technical corpora

    - Developed #strong[agentic] LLM workflows on #strong[OpenAI tool calling] and #strong[LangChain] with multi-step planning and tools for text processing and internal-DB retrieval; hardened reliability against retries and malformed tool arguments, plus ingestion pipelines using #strong[BGE] embeddings and #strong[ColPali] vision RAG over document images

    - Served self-hosted #strong[Qwen] models with #strong[vLLM] on single A100 80GB behind #strong[OpenAI-compatible API]; shipped features via #strong[async FastAPI] with #strong[SSE] streaming

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

    #summary[Python, FastAPI, PostgreSQL, Kafka, Redis, Docker, Kubernetes, GCP]

    - Main developer of internal #strong[Python] backtesting platform (FastAPI, PostgreSQL, Kafka, Redis) serving about 20 researchers running #strong[tens of thousands] of backtests daily

    - Diagnosed and fixed critical #strong[memory leak], cutting peak memory from #strong[200+ GB to under 20 GB]; reduced runtime from #strong[minutes to under 10 seconds] on #strong[1-5 GB] per run through #strong[parallelism] and vectorization

    - Ran backtests as Dockerized #strong[Kubernetes] jobs across #strong[GCP] and on-premise, with #strong[GitHub Actions] CI\/CD and #strong[Grafana] monitoring

  ],
  [
    Ho Chi Minh

    Jan 2026 – present

    6 months

  ],
)

== Skills

#strong[LLM & Agents:] RAG, OpenAI tool\/function calling, multi-step planning agents, LangChain, Instructor, schema-validated outputs, prompt engineering, LLM-as-judge evaluation, AI-assisted dev tools (Codex, Claude Code, Cursor)

#strong[Retrieval & Vector DBs:] Qdrant, hybrid dense + sparse (BM25) retrieval, reranking models, BGE and ColPali embeddings, chunking strategies, recall\@k

#strong[LLM Serving & ML:] vLLM, self-hosted Qwen, OpenAI-compatible APIs, LoRA fine-tuning, PyTorch, VLM and document understanding

#strong[Backend & APIs:] Python, FastAPI, asyncio, SSE streaming, REST APIs, Pydantic validation, PostgreSQL, Redis, Kafka

#strong[Infra & DevOps:] Docker, Kubernetes, GCP, on-premise, GitHub Actions CI\/CD, Grafana

#strong[Legal\/IP Domain:] patent drafting and classification, IP-document RAG, compliance-oriented evaluation and human-in-the-loop review

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
