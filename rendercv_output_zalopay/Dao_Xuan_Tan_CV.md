# Dao Xuan Tan's CV

- Phone: +84 839 782 709
- Email: [tan.daoxuan0909@gmail.com](mailto:tan.daoxuan0909@gmail.com)
- Location: Ho Chi Minh, Vietnam
- GitHub: [tandao0909](https://github.com/tandao0909)


# Summary
AI Engineer specializing in production LLM systems across retrieval and search, tool-calling agents, and self-hosted model serving. Backed by strong production Python and backend APIs from high-scale quant-finance infrastructure.

# Experience
## **AcamarAI**, AI Engineer

Ho Chi Minh

June 2025 – Jan 2026



8 months

RAG, retrieval, LLM agents, Qdrant, LangChain, vLLM, FastAPI, PyTorch

- Built production **RAG and retrieval** over **millions of vectors** in self-hosted **Qdrant**, combining **hybrid** dense and sparse (BM25) search with a **reranking** model that outperformed pure vector search on **recall@k**

- Designed ingestion and embedding pipelines using multiple chunking strategies, **BGE** embeddings, and **ColPali** for **vision RAG** over document images

- Developed **agentic** LLM workflows on **OpenAI tool calling** and **LangChain**, applying multi-step planning with tools for text processing and internal-DB retrieval

- Made tool calls reliable by enforcing schema-validated outputs with **Instructor/Pydantic** and handling retries and malformed arguments

- Served self-hosted **Qwen** models with **vLLM** on a single A100 80GB (about 1s TTFT, 200 tok/s aggregate) behind an **OpenAI-compatible API**

- Evaluated retrieval and generation with **recall@k** and **LLM-as-judge** harnesses, fine-tuned task-specific models with **LoRA**, and shipped **3 of 14** core AI features for Fortune 500 beta users via **async FastAPI** with **SSE** streaming



## **Pi Associates**, Software Developer (Quant Finance)

Ho Chi Minh

Jan 2026 – present



6 months

Python, FastAPI, Pandas, PostgreSQL, Kafka, Redis, Docker, Kubernetes, GCP

- Responsible for an internal Python backtesting package for quant researchers, running tens of thousands of backtests a day

- Diagnosed and fixed a critical **memory leak**, cutting peak memory from **200+ GB to under 20 GB**

- Reduced backtest runtime from **minutes to under 10 seconds** on **1 to 5 GB** of data per run through **parallelism**, vectorization, and algorithmic improvements

- Ran backtests as Dockerized **Kubernetes** jobs across **GCP** and on-premise, with **GitHub Actions** CI/CD and **Grafana** monitoring, plus stronger error handling and input validation to reduce failed runs



# Skills
**Retrieval & Search:** Qdrant, hybrid dense + sparse (BM25) retrieval, reranking models, BGE embeddings, ColPali vision RAG, chunking strategies, recall@k evaluation

**LLM & Agents:** RAG, OpenAI tool/function calling, multi-step planning agents, LangChain, Instructor, prompt engineering, context construction

**LLM Serving & ML:** vLLM, self-hosted Qwen, OpenAI-compatible APIs, LoRA fine-tuning, LLM-as-judge evaluation, PyTorch, computer vision

**Backend & APIs:** Python, FastAPI, asyncio, SSE streaming, REST APIs, Pydantic validation, PostgreSQL, Redis, Kafka

**Infra & DevOps:** Docker, Kubernetes, GCP, on-premise, GitHub Actions CI/CD, Grafana

**Languages:** Vietnamese (Native), English (IELTS 6.5)

# Education
## **Ho Chi Minh University of Science**, Mathematics & Computer Science (Data Science)



Ho Chi Minh City

Oct 2022 – Sept 2026

- GPA: 8.74/10.0 (3.74/4.0)


