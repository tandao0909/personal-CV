# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
Performance engineer working on **LLM inference**. Optimized self-hosted serving with **vLLM** on **A100** GPUs through **FP8/INT8 quantization**, **continuous batching**, **KV-cache** tuning, **chunked prefill** and **prefix caching**, and **tensor and pipeline parallelism**, reaching about **1s TTFT** and **200 tok/s** aggregate.

# Experience
## **Pi Associates**, Software Engineer, AI & Compute Platform

Ho Chi Minh

Jan 2026 – present

Python, asyncio, multiprocessing, cProfile, py-spy, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP, on-premise bare-metal Linux

- Own an internal **Python** compute platform sustaining **tens of thousands of jobs a day** for about **20** engineers across **GCP** and **on-premise**

- Diagnosed and fixed a silent production **memory leak**, cutting **aggregate worker peak memory** from **200+ GB to under 20 GB**

- Designed the **concurrent execution model** (**asyncio** plus process pool, GIL-aware) after **benchmarking** threads, processes, and pools against each other for **throughput** under heavy parallel load

- Handle **production incidents** and **root-cause analysis**, including tracing nondeterministic output across a service boundary to a silently failed deploy serving a stale build

- Built the **Kafka** producer, **PostgreSQL** schema, and **Redis** caching behind the platform



## **AcamarAI**, AI Engineer, Inference & AI Platform

Ho Chi Minh

June 2025 – Jan 2026

vLLM, A100, FP8/INT8 quantization, KV-cache, continuous batching, chunked prefill, tensor and pipeline parallelism, CUDA, torch.profiler, PyTorch

- Served self-hosted **Qwen** models with **vLLM** on an **A100 80GB** behind an **OpenAI-compatible API**, using **FP8/INT8 quantization**, **continuous batching**, **KV-cache** tuning, and **chunked prefill** with **prefix caching** to reach about **1s TTFT**, **40 tok/s** per request and **200 tok/s** aggregate

- Scaled serving with **tensor and pipeline parallelism across GPUs** and **multiple vLLM replicas**, on **bare-metal GPU hosts**

- **Instrumented and profiled the serving path** with **vLLM metrics**, and **nvidia-smi**, tuning against measured **GPU utilization**, batch occupancy, and cache behaviour

- Held the **reliability of the inference pipeline** with **versioned models and prompts** under a **regression suite** re-run on every change, plus **evaluation harnesses** (**recall@k**, **LLM-as-judge**) for non-deterministic output

- Built the layer above the engine, **agent orchestration** (**LangChain/LangGraph**, tool calling) and **RAG** over **millions of vectors** in self-hosted **Qdrant** through async **FastAPI** with **SSE**, owning **3** core AI features end to end for **Fortune 500** beta users



# Skills
**LLM Inference Optimization:** vLLM, FP8/INT8 quantization, continuous batching, KV-cache management, chunked prefill and prefix caching, tensor and pipeline parallelism, TTFT, latency and throughput tuning, GPU utilization

**GPU & Low-Level:** CUDA programming model, kernels written, GPU architecture, NVIDIA host stack, A100, C++ (reading, coursework and competitive programming)

**Profiling & Performance:** vLLM metrics, nvidia-smi, bottleneck analysis, memory-leak diagnosis, vectorization, algorithmic optimization

**Distributed & High-Throughput Systems:** Python (asyncio, multiprocessing, GIL-aware concurrency), Kafka, PostgreSQL, Redis, FastAPI (async, SSE), Docker, Kubernetes, GCP and on-premise bare-metal Linux

**LLMOps & Reliability:** Model and prompt versioning, regression suites, evaluation harnesses, incident response and root-cause analysis, Grafana and Prometheus monitoring, pytest, GitHub Actions CI/CD, PyTorch, LoRA, agents, RAG

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)

**BSc**

Ho Chi Minh City

Oct 2022 – Dec 2026

- GPA: 8.74/10.0. Expected graduation **Dec 2026**, working full-time since June 2025


