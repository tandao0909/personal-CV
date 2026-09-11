# CV Intake — AI Engineer, ZaloPay (VNG)

> Fill in under each prompt. Raw notes / fragments are fine. Leave blank if N/A.
> The role is weighted toward **retrieval + search + ranking + AI agents**, on top of solid Python/backend/LLM. The sections that decide the screen are **§1 Retrieval/Vector**, **§2 Search & Ranking**, and **§3 AI Agents**. Spend most effort there.
>
> JD must-haves: strong production Python · 1–2+ yrs AI/ML eng · backend APIs · LLM apps · RAG + embeddings + vector DBs · retrieval/search pipelines · at least one of {agents, search/retrieval, recsys/ranking}.
> Nice-to-have: large-scale search/recsys · agent orchestration frameworks · A/B testing · observability · multimodal (voice/OCR/image) · fintech/payments · leadership/mentoring.

---

## 1. Retrieval, embeddings & vector databases (make-or-break — core JD filter)

### 1a. Vector database — which one(s)?
- At AcamarAI you did vector DB work — which engine(s)? (pgvector, Qdrant, Milvus, Weaviate, FAISS, Pinecone, Chroma, Elasticsearch kNN...)
>
- Self-hosted or managed? Who set it up — you?
> Qdrant, me set it up myself

### 1b. Scale & data
- How many documents / vectors indexed? (thousands, millions?)
- Embedding dimension? Index type (HNSW, IVF, flat)? Any tuning of ef/M/nprobe?
> Hundreds of document, mil of vectors. 

### 1c. Embeddings
- Which embedding model(s)? (OpenAI text-embedding-3, BGE, E5, multilingual, self-hosted?)
- Did you evaluate/compare embedding models? On what metric?
- Vietnamese / multilingual embedding challenges?
> English. OPen model, BGE, colpali for vision rag as well. Eval by recall

### 1d. Chunking & ingestion
- Chunking strategy (fixed, semantic, recursive, by structure)? Chunk size/overlap?
- Metadata filtering? Hybrid (dense + sparse/BM25)?
> All. Hybrid

### 1e. Retrieval quality
- How did you measure retrieval quality? (recall@k, MRR, nDCG, manual eval, LLM-judge?)
- Concrete before/after improvement number you can defend?
> recall top k, LLm judge. I forget :D

---

## 2. Search & ranking / personalization

### 2a. What did you build?
- The "search ranking" work at AcamarAI — describe it. What was being searched/ranked, and for whom?
> Search for document paragrpahs, rank by relevant, as well as additional info

### 2b. Ranking mechanics
- Reranking step? (cross-encoder, Cohere/BGE reranker, LLM reranker, learning-to-rank?)
- Hybrid search fusion (RRF, weighted)? Did reranking measurably beat pure vector search?
> Rerank model. Yep, beat pure vector searhc

### 2c. Personalization (JD explicitly mentions it)
- Any user-context / personalization signals in ranking? Or purely content relevance?
> No

### 2d. Scale / latency
- Query volume? p50/p95 latency targets? Caching of embeddings or results?
> Hmmm. Query like 200 req/min, for each user. p95 of < 1min, exclude build vector database time

### 2e. Recommendation / ranking systems (nice-to-have)
- Any recsys, click-through optimization, or large-scale ranking exposure (even academic/side)?
> No

---

## 3. AI agents (JD flagship: "AI Agent Platform", tool calling, context handling, validation)

### 3a. Did you build agentic systems?
- Of your LLM workflows at AcamarAI, which were truly agentic (tool calling, multi-step, planning) vs single-shot RAG/prompt?
> Tool call, multi step, planning, 

### 3b. Tool calling
- Function/tool calling — OpenAI tools API, or framework? How many tools, what did they do?
- How did you handle tool errors, retries, malformed args?
> Openai tool api, bash tool to process the text data, tool to get more relevant document from the internal db
retry, malform use specialized lib

### 3c. Orchestration framework
- LangChain only, or LangGraph / LlamaIndex / custom agent loop / Autogen / CrewAI?
- If custom — describe the loop (plan → act → observe)?
> LangChain, instructor

### 3d. Context handling / construction
- How did you build context windows? (memory, history compression, retrieved-doc injection, structured + unstructured merge?)
> 

### 3e. Validation logic (JD calls this out specifically)
- How did you validate agent/LLM outputs before they reached users? (schema/Pydantic validation, guardrails, regex/rules, LLM-as-judge, human-in-the-loop?)
>

---

## 4. The 3-of-14 AI features (your Fortune 500 work)
- What were the 3 features YOU owned, concretely? (name + what each does)
> 
- Which of them touched retrieval / search / agents / multimodal?
>
- Any usage or impact numbers? (users, requests/day, accuracy, time saved)
>

---

## 5. LLM serving & evaluation
- Self-hosted vLLM: which model(s)? Quantization? Throughput/latency you achieved? GPU setup?
- OpenAI-compatible API — did you build that gateway, or just consume it?
> Qwen mostly. 40tok/s for each request, totoal thruput 200tok/s, latency 1s ttft. 1x A100 80Gb GPU
- Eval/QA harness: what did it measure, how automated? Regression testing of prompts?
- Fine-tuning: which models, what method (LoRA/QLoRA/full), what task, what gain?
> LoRA

## 6. Multimodal (nice-to-have — you list VLM)
- VLM work: OCR? document understanding? image/vision? voice/speech (ASR/TTS)?
- ZaloPay cares about OCR (eKYC, receipts) and voice — anything relevant here, even adjacent?
> Document udnetsnatin, image. I also use specialize computer vision model, if that help

## 7. Monitoring / human-in-the-loop / production ops
- How were AI systems monitored in prod? (latency, cost, quality drift, token usage dashboards?)
- Any human-in-the-loop / feedback-collection loop for continuous improvement?
- A/B testing or experimentation on prompts/models/retrieval? (nice-to-have)
>

## 8. Fintech / payments framing
- Pi Associates = quant/trading infra → that IS fintech. How do you want it framed? (capital markets / quant finance / trading systems)
- Any direct payments, fraud, risk, eKYC, or transaction-data exposure anywhere?
- Comfortable positioning yourself as "fintech-adjacent" already?
> Quant finance. Nah

## 9. Backend / APIs exposing AI (JD requirement)
- FastAPI services exposing AI: auth, rate limiting, streaming (SSE), async, request validation?
- Anything about exposing AI "safely" — abuse prevention, PII handling, output filtering?
> SSE, async

## 10. Leadership / mentoring (nice-to-have)
- Led a feature/project end-to-end? Mentored anyone? Cross-team coordination?
> Hmm. I am currently the dev reposnsele for the internal backtest tool. Is that ok? no mentor, did cross team coordiante

## 11. Logistics & positioning
- This is at VNG/ZaloPay (HCMC, on-site/hybrid Vietnamese company) — full-time, not contract. Confirm you want full-time here?
- Currently still at Pi — applying actively or exploring?
- Salary expectation / current band?
- Keep education section? (grad Sep 2026 — "final-year student" vs "working engineer" framing?)
- Headline preference: "AI Engineer" vs "AI/ML Engineer" vs "LLM Engineer"?
- Vietnamese-language CV needed too, or English only?
> Yep, I wnat fulltime.

## 12. Anything I'm missing
- What's your single strongest argument for THIS role that I haven't asked about?
- Anything in the AI/automation CV you want cut or toned down for ZaloPay?
> I feel like My AcamarAI role fit this JD very well, and my current Pi role deepen my python skill a lot. Does that help?
