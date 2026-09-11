# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
Engineer focused on **LLM inference optimization on NVIDIA GPUs** and large-scale performance engineering. Served self-hosted transformer models with **vLLM** on **A100** using **FP8/INT8 quantization**, tuning latency and throughput; complemented by a track record of profiling production pipelines, hunting bottlenecks, and cutting latency at scale. Built on a strong **Mathematics and Computer Science** foundation with solid algorithms and data structures; quick to pick up new languages and low-level systems.

# Experience
## **AcamarAI**, Deep Learning / Inference Engineer

Ho Chi Minh

June 2025 – Jan 2026



8 months

Python, PyTorch, vLLM, transformers, LLM/VLM, FP8/INT8 quantization, LoRA, A100

- Served self-hosted **Qwen** transformer models with **vLLM** on a single **A100 80GB** behind an **OpenAI-compatible API**, running **FP8/INT8 quantized** weights to cut memory and boost throughput

- Profiled and optimized **inference latency and throughput** to about **1s TTFT**, **40 tok/s per request**, and **200 tok/s aggregate**, tuning batching and KV-cache utilization on the GPU

- Fine-tuned task-specific models with **LoRA** and shipped **3 of 14** core AI features for Fortune 500 beta users via **async FastAPI** with **SSE** streaming

- Built **evaluation harnesses** (**recall@k**, **LLM-as-judge**) to measure and regression-test model output quality across releases

- Developed ingestion and **embedding pipelines** (chunking, **BGE** embeddings, **ColPali** for document images) over **millions of vectors**, including vision-language (VLM) workloads



## **Pi Associates**, Software Engineer, Performance / Compute Platform

Ho Chi Minh

Jan 2026 – present



7 months

Python, asyncio, multiprocessing, profiling, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP

- Own an internal **Python** compute platform running **tens of thousands** of quant model backtest and evaluation **jobs daily** for about **20** researchers

- Profiled workloads, **identified bottlenecks**, and cut runtime from **minutes to under 10 seconds** on **1 to 5 GB** per run through **parallelism**, **vectorization**, and algorithmic improvements

- Diagnosed and fixed a silent memory leak, reducing peak usage from **200+ GB to under 20 GB** of RAM

- Designed a **concurrent execution model** (**asyncio** plus **process pool**) to maximize **job throughput** under heavy parallel load

- Ran jobs as Dockerized **Kubernetes** workloads across **GCP** and on-premise, with **GitHub Actions** CI/CD and **Grafana** monitoring



# Skills
**Deep Learning & Inference:** PyTorch, transformers, LLM/VLM, vLLM, LoRA fine-tuning, FP8/INT8 quantization, KV-cache & continuous batching, OpenAI-compatible serving (A100)

**Performance Engineering:** profiling & bottleneck analysis, parallelism (asyncio + process pool), vectorization, memory optimization, latency & throughput tuning, algorithms & data structures

**GPU & Systems (self-study):** CUDA, C++, SGLang, TGI, ONNX Runtime, diffusion models

**Backend & Infra:** Python, FastAPI, asyncio, Kafka, PostgreSQL, Redis, Docker, Kubernetes, GCP, GitHub Actions CI/CD, Grafana

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)



Ho Chi Minh City

Oct 2022 – Sept 2026

- GPA: 8.74/10.0 (3.74/4.0)


