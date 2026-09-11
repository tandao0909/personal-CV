# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
Engineer for **LLM inference** and **GPU** serving platforms. Served self-hosted models with **vLLM** on **A100** GPUs using **FP8/INT8 quantization**, **continuous batching**, **KV-cache** tuning, **tensor parallelism**, and **multiple replicas behind a load balancer** on bare-metal NVIDIA hosts (about **1s TTFT**, **200 tok/s** aggregate). Now operate a **multi-tenant Kubernetes** compute platform across **GCP** and **on-premise** bare metal at **tens of thousands of jobs a day**, with hands-on **incident response** and **root-cause analysis**.

# Experience
## **Pi Associates**, Software Engineer, AI & Compute Platform

Ho Chi Minh

Jan 2026 – present

Kubernetes, Docker, GCP, on-premise bare-metal Linux, Python, asyncio, Grafana, Prometheus, Kafka, PostgreSQL, GitHub Actions

- Operate a **multi-tenant** internal **Python** compute platform running **tens of thousands** of backtest and evaluation **jobs a day** for about **20** researchers and engineers, across **GCP** and **on-premise bare-metal Linux**

- Run workloads as Dockerized **Kubernetes** jobs with scheduled pipelines (stage dependencies, retries, failure alerting), **GitHub Actions** CI/CD covering test, build, and deploy, and **Grafana** and **Prometheus** monitoring

- Handle **production incidents** and **root-cause analysis**, including tracing nondeterministic output across a service boundary to a silently failed deploy that left a stale build serving bad data, then driving it to resolution

- Diagnosed and fixed a silent production **memory leak** (**aggregate worker peak memory** from **200+ GB to under 20 GB**), profiled the pipeline to cut runtime from **minutes to under 10 seconds** on **1 to 5 GB** per run, and designed the **concurrent execution model** (**asyncio** plus process pool, GIL-aware) for **throughput**

- Built the **PostgreSQL** schema, **Redis** caching, and a **Kafka** producer to downstream consumers, plus data-quality checks that catch silent bad-data failures



## **AcamarAI**, AI Engineer, Inference & AI Platform

Ho Chi Minh

June 2025 – Jan 2026

vLLM, A100, FP8/INT8 quantization, KV-cache, continuous batching, tensor parallelism, bare-metal GPU hosts, LangChain/LangGraph, Qdrant, FastAPI

- Served self-hosted **Qwen** models with **vLLM** on an **A100 80GB** behind an **OpenAI-compatible API**, using **FP8/INT8 quantization**, **continuous batching**, and **KV-cache** tuning to reach about **1s TTFT**, **40 tok/s** per request and **200 tok/s** aggregate

- Scaled serving with **tensor parallelism across GPUs** and **multiple vLLM replicas behind a load balancer** on **bare-metal GPU hosts** (NVIDIA driver, CUDA, container toolkit), tuning serving parameters against **measured GPU utilization**

- Built the **agent platform**: multi-step planning on **OpenAI tool calling** with **LangChain/LangGraph**, retrieval tools over **millions of vectors** in self-hosted **Qdrant** (**hybrid** dense plus BM25, **reranking**), **history compression**, malformed-argument retries, and **schema-validated** output (**Instructor/Pydantic**), served through async **FastAPI** with **SSE**

- Engineered reliably around **non-deterministic model output** with **evaluation harnesses** (**recall@k**, **LLM-as-judge**) and versioned prompts and models under a **regression suite**, owning **3** core AI features end to end for **Fortune 500** beta users



# Skills
**LLM Inference & GPU Serving:** vLLM, FP8/INT8 quantization, continuous batching, KV-cache and prefix caching, tensor parallelism, load-balanced multi-replica serving, TTFT and throughput tuning, GPU utilization, NVIDIA driver, CUDA, container toolkit

**Platform, Kubernetes & CI/CD:** Kubernetes (jobs, manifests, containerized workloads), Docker, GCP and on-premise bare metal, Linux, multi-tenant job platforms, scheduled pipelines with dependencies and retries, GitHub Actions, Python and Bash automation, Git

**Reliability & Observability:** Grafana and Prometheus monitoring, failure alerting, incident response and root-cause analysis, memory and CPU profiling, data-quality validation, pytest

**AI Platform & Agents:** Agent orchestration (LangChain/LangGraph, OpenAI tool calling), RAG at scale (Qdrant, hybrid retrieval, reranking, ColPali), Instructor/Pydantic validation, evaluation harnesses, PyTorch, LoRA

**Distributed Systems & Data:** Kafka, PostgreSQL, Redis, pandas, asyncio and multiprocessing concurrency, FastAPI (async, SSE)

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)

**BSc**

Ho Chi Minh City

Oct 2022 – Dec 2026

- GPA: 8.74/10.0. Expected graduation **Dec 2026**, working full-time since June 2025


