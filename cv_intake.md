# CV Intake — 360dialog Backend Developer (Python)

> Fill in under each prompt. Raw notes are fine — bullets, fragments, whatever. Leave blank if N/A.
> The two sections that decide whether you pass the screen are **§1 Deep Python** and **§2 Pi Associates**. Spend most effort there.

---

## 1. Deep Python (make-or-break — JD's #1 filter: "deep Python, not wide Python")

### 1a. Async internals
- What have you built with `asyncio`? (event loop, coroutines vs tasks, `gather`/`TaskGroup`, semaphores, cancellation, backpressure)
- Where in your job did this matter?
> I use asyncio together with multiple processes to handle alpha computation as fast as possible.

### 1b. Concurrency model
- GIL — have you hit its limits? multiprocessing / threads / `ProcessPoolExecutor`?
- When did you pick which, and why?
> I use all of them honestly. I try each, benchmark, and choose what is best. Currently, the process pool gives the most ergonomic code, so I chose it.

### 1c. Memory
- Profiled memory? Leaks, reference cycles, `__slots__`?
- Generators/streaming to avoid loading 1–5GB into RAM?
> Yep, profiled. I fixed a very hard memory-leak bug (cut a silent leak from 200+ GB RAM to < 20 GB at peak).

### 1d. Typing
- Type hints seriously? `mypy`/`pyright` strict mode?
- Generics, `Protocol`, `TypedDict`, overloads, Pydantic runtime validation?
> Of course

### 1e. Packaging
- Built/published packages? `pyproject.toml`, poetry/uv/hatch, internal registry?
- Dependency management, versioning?
> uv

### 1f. Runtime-level knowledge (anything you can defend in interview)
- descriptors, metaclasses, custom context managers, decorators, `__new__` vs `__init__`, C extensions, bytecode, CPython internals...
> I think the JD doesn't require that much?

---

## 2. Pi Associates — backtesting platform (strongest + most relevant role)

### 2a. Architecture
- End to end: what services exist, how do they talk?
> Not nescessary

### 2b. API design
- How many endpoints? REST conventions, versioning, auth, pagination, async endpoints, request validation?
>
> Not nescessary

### 2c. PostgreSQL (JD wants schema design + query perf, NOT just ORM)
- Designed schemas? Raw SQL? Indexes? `EXPLAIN ANALYZE`? Optimized slow queries? Migrations (Alembic)? ORM (SQLAlchemy) or raw?
> Nah. I did design some schemas, used SQLAlchemy ORM as well as raw SQL, but I don't think I should list this as a strength.

### 2d. Kafka
- Used for what? Producers/consumers, topics, partitioning, consumer groups, delivery guarantees?
> Produce alpha signal

### 2e. Redis
- Caching? Locks? Queues? Pub/sub? Rate limiting?
> TO cache data

### 2f. The "minutes → <10s" performance win
- HOW exactly? Vectorization, caching, parallelism, DB tuning, algorithmic change?
> Parallelism, vectorization, algorithmic change.

### 2g. Scale numbers
- "tens of thousands of daily runs", "1–5GB/run", "~20 users" — how do you know these? Can you defend them?
> Yes

### 2h. Workers / background jobs
- K8s jobs: how triggered, queued, retried? Worker framework (Celery, Arq, custom)?
> Nah, just python code :D

---

## 3. Observability, reliability, testing (JD: "correct, observable, maintainable")

### 3a. Logging / metrics / tracing
- Structured logging, Prometheus/Grafana, Sentry, OpenTelemetry, alerts?
> Grafana

### 3b. Testing
- pytest? Coverage %? Unit vs integration, fixtures, mocking, test DBs, property-based?
> All these kinds of test

### 3c. CI/CD
- What does the GitHub Actions pipeline actually do? (lint, type-check, test, build, deploy)
> test, build deploy

### 3d. Error handling
- "stronger error handling reduced failed runs" — what did that concretely look like?
> ...

---

## 4. Service-to-service integration
- Third-party APIs, webhooks, internal microservices? Auth between services? Retries, idempotency, circuit breakers?
>

---

## 5. AcamarAI — any NON-AI backend?
- Beyond LLM work: general backend infra (APIs, DB, deployment, queues)? (I'll de-emphasize the AI framing.)
> Hmm, nah.

---

## 6. Nice-to-haves & domain
- WhatsApp / messaging / chat / communication APIs — any exposure, even side projects?
- B2B SaaS experience?
- GCP specifically? Cloud SQL? Or only generic K8s? Which cloud(s)?
- Billing / payments / metering systems?
> GCP -> we use GCP at work, as well as on premise

---

## 7. Proof outside work
- GitHub repos, open-source contributions, personal backend projects (links)?
- Competitive programming / math-CS background worth leveraging?
> Nah...

---

## 8. Logistics & positioning
- OK with **contract** (not full-time employment)?
- Currently still at Pi Associates? Is this a side contract, or are you leaving?
- Timezone overlap with Europe OK? (you're UTC+7)
- English in fast async Slack — comfortable? Spoken interview concerns?
- Salary anchor (range is €40K–€100K/yr)?
- Keep or cut education section? (grad Sep 2026 — signal "new grad" or "working engineer"?)
> OK with contract, still at Pi, will leave, timezone overlap OK, AcamarAI was English-speaking so no problem, working full-time now.

---

## 9. About you — career narrative (helps me position any CV)
- What kind of work do you actually want next: backend, AI/LLM, ML/research, or platform/infra? Rank them.
>
- Why are you leaving Pi Associates? (growth, comp, domain interest, role mismatch...)
>
- 3-year goal — what title/role are you aiming at? (staff backend, ML engineer, AI platform lead...)
>
- What are you strongest at that a CV bullet usually fails to capture?
>
- What do you NOT want to do / be pigeonholed into?
>
- Biggest single technical achievement you're proud of (one story, with numbers)?
>
- Any constraints I should always respect across CVs? (don't overclaim X, always keep Y, target salary band, location/remote)
>
