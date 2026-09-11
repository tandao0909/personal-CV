# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
AI platform engineer across **MLOps**, **inference optimization**, and **AI backend and agent engineering**, already working in fintech. Serve self-hosted LLMs with **vLLM** on **A100** GPUs (about **1s TTFT**, **200 tok/s** aggregate), and own an internal Python compute platform on **Kubernetes** running **tens of thousands of jobs a day**, where I cut runtime from **minutes to under 10 seconds** and peak memory from **200+ GB to under 20 GB**. Build reliable systems around **non-deterministic model outputs**.

# Experience
## **Pi Associates**, Software Engineer, AI & Compute Platform

Ho Chi Minh

Jan 2026 – present

Python, asyncio, multiprocessing, Kubernetes, Docker, GCP, bare-metal Linux, PostgreSQL, Kafka, Redis, Grafana

- Own an internal **Python** compute platform running **tens of thousands** of model backtest and evaluation **jobs a day** for about **20** researchers and engineers

- Profiled the pipeline, **identified bottlenecks**, and cut runtime from **minutes to under 10 seconds** on **1 to 5 GB** per run through **parallelism**, **vectorization**, and algorithmic change

- Diagnosed and fixed a silent production **memory leak** (peak memory **200+ GB to under 20 GB**), and designed the **concurrent execution model** (**asyncio** plus process pool, GIL-aware) for job **throughput** under heavy parallel load

- Run workloads as Dockerized **Kubernetes** jobs across **GCP** and on-premise **bare-metal Linux**, with scheduled pipelines (stage dependencies, retries, failure alerting), **GitHub Actions** CI/CD, and **Grafana** monitoring

- Built the **PostgreSQL** schema, **Redis** caching, and a **Kafka** producer to downstream consumers, plus data-quality checks that catch silent bad-data failures before results reach users



## **AcamarAI**, AI Engineer, Inference & AI Platform

Ho Chi Minh

June 2025 – Jan 2026

vLLM, A100, FP8/INT8 quantization, tensor parallelism, LangChain/LangGraph agents, Qdrant, VLM OCR, FastAPI, PyTorch

- Served self-hosted **Qwen** models with **vLLM** on **A100** GPUs behind an **OpenAI-compatible API**, using **FP8/INT8 quantization** and **continuous batching** and **KV-cache** tuning to reach about **1s TTFT** and **200 tok/s** aggregate

- Scaled serving with **tensor parallelism across GPUs** and **multiple vLLM replicas behind a load balancer**, on **bare-metal GPU hosts** (NVIDIA driver, CUDA, container toolkit)

- Engineered reliably around **non-deterministic model outputs**, **schema-validated** generation (**Instructor/Pydantic**), malformed-tool-argument retries, **evaluation harnesses** (**recall@k**, **LLM-as-judge**), and versioned prompts and models with a **regression suite** re-run on every change

- Built **agent orchestration**: multi-step planning on **OpenAI tool calling** with **LangChain/LangGraph**, tools for text processing and internal-DB retrieval, and **history compression** for context construction

- Built production **RAG** over **millions of vectors** in self-hosted **Qdrant** (**hybrid** dense + BM25, a **reranker** beating pure vector search on recall@k, **BGE**, **ColPali** vision RAG, **VLM-based OCR** over complex documents), shipping **3 of 14** core AI features for **Fortune 500** beta users via **async FastAPI** with **SSE**



# Skills
**AI Platform & MLOps:** Self-hosted GPU model serving, model and prompt versioning with regression suites, Docker, Kubernetes, GitHub Actions CI/CD, GCP and on-premise bare metal, Grafana, Airflow (working knowledge)

**Inference & Optimization:** vLLM, FP8/INT8 quantization, continuous batching and KV-cache tuning, tensor parallelism, load-balanced multi-replica serving, latency (TTFT) and throughput profiling, NVIDIA host stack (drivers, CUDA, container toolkit)

**AI Backend, Agents & Retrieval:** FastAPI (async, SSE), REST API and system design, tool-calling agents, LangChain/LangGraph, Instructor/Pydantic validation, Qdrant hybrid retrieval, reranking, BGE, ColPali, VLM OCR, PyTorch, LoRA

**Languages & Data:** Python (asyncio, multiprocessing, typing, uv), SQL, PostgreSQL, Redis, Kafka, pandas, C++ (coursework and competitive programming), algorithms and data structures

**Tools:** AI-assisted development (Claude Code, Cursor, Codex) verified against tests and real data, Git, pytest

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)

**BSc**

Ho Chi Minh City

Oct 2022 – Dec 2026

- GPA: 8.74/10.0. Expected graduation **Dec 2026**, working full-time since June 2025


