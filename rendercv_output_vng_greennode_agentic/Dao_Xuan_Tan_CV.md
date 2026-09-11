# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
Backend and platform engineer in **Python**. Operate a **multi-tenant Kubernetes** compute platform across **GCP** and **on-premise bare-metal Linux** at **tens of thousands of jobs a day**, owning the **FastAPI** services, **PostgreSQL** and **Redis** data layer, **Kafka** producer, CI/CD, and **incident response** behind it. Previously built the **agent platform** at AcamarAI, multi-step **orchestration** on **tool calling**, **context compression**, and **schema-validated guardrails**, over **vLLM** serving and **RAG** at **millions of vectors**.

# Experience
## **Pi Associates**, Software Engineer, AI & Compute Platform

Ho Chi Minh

Jan 2026 – present

Python, asyncio, FastAPI, PostgreSQL, Redis, Kafka, Docker, Kubernetes, GCP, on-premise bare-metal Linux, GitHub Actions, Grafana, Prometheus

- Operate a **multi-tenant** internal **Python** compute platform running **tens of thousands** of **jobs a day** for about **20** researchers and engineers, across **GCP** and **on-premise bare-metal Linux**

- Built the backend behind it: async **FastAPI** endpoints with **Pydantic** validation, **PostgreSQL** schema design (**SQLAlchemy** ORM and raw **SQL**), **Redis** caching, and a **Kafka** producer feeding downstream consumers, plus data-quality checks that catch silent bad-data failures

- Run workloads as Dockerized **Kubernetes** jobs with per-tenant **container isolation**, scheduled pipelines (stage dependencies, retries, failure alerting), **GitHub Actions** CI/CD, and **Grafana** and **Prometheus** monitoring

- Diagnosed and fixed a silent production **memory leak** (**aggregate worker peak memory** from **200+ GB to under 20 GB**), cut runtime from **minutes to under 10 seconds** on **1 to 5 GB** per run, and designed the **concurrent execution model** (**asyncio** plus process pool, GIL-aware)

- Handle **production incidents** and **root-cause analysis**, including tracing nondeterministic output across a service boundary to a silently failed deploy serving a stale build

- Build, test, and review features daily with agentic AI coding tools (**Claude Code**, **Cursor**, **Codex**) and their **MCP** tool integrations, verifying every change against tests and real data before merging



## **AcamarAI**, AI Engineer, Inference & AI Platform

Ho Chi Minh

June 2025 – Jan 2026

LangChain/LangGraph, OpenAI tool calling, Instructor/Pydantic, Qdrant, FastAPI (async, SSE), vLLM, A100, PyTorch

- Built the **agent platform**: multi-step planning and an **orchestration loop** on **OpenAI tool calling** with **LangChain/LangGraph**, tools for shell-based text processing and internal-DB retrieval, and **history compression** for context construction, served through async **FastAPI** with **SSE**

- Made agent behaviour reliable with **guardrails**: **schema-validated** output (**Instructor/Pydantic**), malformed-tool-argument retries, **evaluation harnesses** (**recall@k**, **LLM-as-judge**), and versioned prompts and models under a **regression suite**, owning **3** core AI features end to end for **Fortune 500** beta users

- Designed the retrieval data model over **millions of vectors** in self-hosted **Qdrant**, combining **hybrid** dense plus BM25 search with a **reranker** that beat pure vector search on **recall@k**

- Served self-hosted **Qwen** models with **vLLM** on an **A100 80GB** behind an **OpenAI-compatible API**, using **FP8/INT8 quantization**, **continuous batching**, and **KV-cache** tuning to reach about **1s TTFT**, **40 tok/s** per request and **200 tok/s** aggregate



# Skills
**Backend & APIs:** Python (asyncio, multiprocessing, GIL-aware concurrency, typing, packaging with uv), FastAPI (async, SSE streaming), REST API design, Pydantic validation, OpenAI-compatible APIs, pytest (unit and integration)

**Data & Messaging:** PostgreSQL (schema design, SQLAlchemy ORM, raw SQL), Redis caching, Kafka producer, Qdrant vector database (hybrid retrieval, reranking), BGE embeddings, ColPali vision RAG, pandas

**Agent Platform:** Orchestration loop (multi-step planning, OpenAI tool calling), shell-execution and retrieval tools, context and history compression, guardrails (schema-validated output, malformed-argument retries), LangChain/LangGraph, RAG, evaluation harnesses (recall@k, LLM-as-judge), prompt and model versioning

**Containers, Cloud & CI/CD:** Docker, Kubernetes (jobs, manifests, containerized workload isolation), GCP and on-premise bare-metal Linux, GitHub Actions, Git, multi-tenant job platforms, scheduled pipelines with dependencies, retries and alerting

**Reliability & Observability:** Grafana and Prometheus, failure alerting, memory and CPU profiling, incident response and root-cause analysis, data-quality validation, vLLM self-hosted serving (FP8/INT8 quantization, continuous batching, KV-cache tuning)

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)

**BSc**

Ho Chi Minh City

Oct 2022 – Dec 2026

- GPA: 8.74/10.0. Expected graduation **Dec 2026**, working full-time since June 2025


