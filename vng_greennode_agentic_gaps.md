# GreenNode (VNG) — Senior Software Engineer (Agentic Platform)

**Internal use only. Do not send this to VNG.**

Req 6832 · Ho Chi Minh City · `career.vng.com.vn/tim-kiem-viec-lam/chi-tiet/6832-senior-software-engineer-greennode-vi`
CV: `vng_greennode_agentic_cv.yaml` → `rendercv_output_vng_greennode_agentic/Dao_Xuan_Tan_CV.pdf`

The JD is explicitly **70% backend/platform engineering, 30% agentic AI**. Read it
that way: the backend half is what you get hired on, the agentic half is what you
get differentiated on.

---

## 1. The three-application problem — deal with this first

This is your **third** CV to GreenNode. Both of the others went out on 2026-08-17:

| CV | Role | Headline |
| --- | --- | --- |
| `vng_greennode_cv.yaml` | Senior Platform Engineer, AI Inference & Agent Platform | AI Inference & Platform Engineer |
| `vng_greennode_inference_cv.yaml` | Senior Inference Engineer | LLM Inference & Performance Engineer |
| `vng_greennode_agentic_cv.yaml` *(this one)* | Senior SWE, Agentic Platform | Backend & Agent Platform Engineer |

**What is actually consistent.** The two sent CVs agree on everything factual:
identical job titles at both employers, identical dates, and identical numbers —
`200+ GB → under 20 GB` *aggregate worker peak memory*, `1s TTFT / 40 tok/s per
request / 200 tok/s aggregate`, tens of thousands of jobs a day for about 20
people, 3 core AI features, Fortune 500 beta users. This CV preserves all of it
verbatim. Nothing in the three contradicts anything else.

**The one real inconsistency across the sent pair.** The GPU claim escalates:

- `vng_greennode_cv.yaml:46` — "NVIDIA driver, CUDA, container toolkit" (host stack)
- `vng_greennode_inference_cv.yaml:49` — "CUDA programming model, **kernels written**, GPU architecture"

Same job, same GPUs, kernel authorship appearing only where the JD asked for it.
This CV does **not** repeat it — omission is not contradiction, and this role does
not pay for CUDA depth. If an interviewer holding all three raises it, own it up
front as self-directed learning rather than production work. Do not walk it back
and do not re-assert it here.

Same pattern, smaller: **pipeline parallelism** and **chunked prefill** appear only
on the inference CV. Deliberately absent here for the same reason.

**Action before you apply.** Tell your referrer plainly that three GreenNode reqs
are now in play and ask them which one to push. VNG's ATS shows your application
history; three self-titles at one company inside a week reads badly *only if they
find out from the system rather than from you*. Say it first and it reads as being
open about wanting in.

---

## 2. Where you actually stand

| JD requirement | Your evidence | Strength |
| --- | --- | --- |
| Production backend services and APIs | Async FastAPI, Pydantic validation, REST, OpenAI-compatible APIs | **Strong** |
| Python | Core language | **Strong** |
| Distributed systems, high availability | Multi-tenant compute platform, tens of thousands of jobs/day, GCP + on-prem | **Strong** |
| Performance issues, memory leaks | 200+GB → <20GB leak; minutes → <10s; GIL-aware concurrency model | **Strong** |
| Agent architecture: tool use, memory/context, orchestration loop, guardrails | Multi-step planning on tool calling, history compression, schema-validated output, malformed-arg retries | **Strong** |
| LangChain / LangGraph | Production | **Strong** |
| Vector databases | Qdrant self-hosted, millions of vectors, hybrid + reranking | **Strong** |
| Docker, Git, CI/CD | GitHub Actions across test/build/deploy | **Strong** |
| Daily use of AI tools | Claude Code, Cursor, Codex, daily | **Strong** |
| Message brokers (Kafka, RabbitMQ, SQS/SNS) | Kafka **producer** only; never a consumer, never another broker | **Partial** |
| Containerization and isolation | Dockerized K8s jobs, per-tenant isolation — workload level, not agent sandbox | **Partial** |
| Observability (metrics, logs, tracing) | Grafana + Prometheus as a *consumer*; no logs pipeline, no tracing | **Partial** |
| SQL indexing and query optimization | Postgres schema design, SQLAlchemy + raw SQL. `cv_intake.md` records this is **not** a strength | **Weak** |
| MCP — implementation experience | Consumer only, via Claude Code/Cursor/Codex | **Weak** |
| Kubernetes at scale *(nice-to-have)* | Workload-level only; you don't own clusters | **Weak** |
| Java (Spring Boot), Go | None | **Gap** |
| MySQL, MongoDB | None | **Gap** |
| A2A protocol | None | **Gap** |
| CrewAI, Strands | None | **Gap** |
| gVisor, Firecracker, secure sandbox runtime | None | **Gap** |
| Code interpreter sandbox, semantic caching | None | **Gap** |
| OpenTelemetry, Jaeger, ELK/OpenSearch | None | **Gap** |
| Mentoring junior/mid engineers | None (`zalopay_intake.md`) | **Gap** |

**Read this honestly:** you clear the 70% convincingly. On the 30% you have the
*architecture* — the orchestration loop, tool use, context management and guardrails
are all real production work — but not the *protocol plumbing* the JD names as
required. MCP and A2A are the two required quals you cannot currently claim.

---

## 3. What the CV deliberately does *not* claim

Nothing below appears on the CV, not even as "familiar with". If an interviewer
raises any of it, the answer is "no, I haven't" — never a hedge.

> gVisor · Firecracker · agent code-execution sandbox · code interpreter ·
> semantic caching · MCP **server** implementation · A2A protocol · CrewAI ·
> Strands · Java · Spring Boot · Go · MySQL · MongoDB · RabbitMQ · ActiveMQ ·
> AWS SQS/SNS · Kafka **consumer** · OpenTelemetry · Jaeger · ELK/OpenSearch ·
> Loki · Helm · ArgoCD · Terraform · GitOps · SLO/SLA definition · error budgets ·
> on-call rotation · cluster provisioning · ingress · CNI/CSI · RBAC · HPA/VPA ·
> CKA/CKAD/CKS · mentoring engineers

Guardrail, re-run after any edit — must return zero hits:

```bash
grep -n -i -E 'gvisor|firecracker|crewai|strands|\ba2a\b|spring|\bjava\b|\bgolang\b|\bmysql\b|mongodb|rabbitmq|activemq|sqs|sns|opentelemetry|jaeger|opensearch|\belk\b|helm|argocd|terraform|gitops|semantic cach|code interpreter|mentor' vng_greennode_agentic_cv.yaml
```

Three claims that *are* on the CV and that you must be ready to defend precisely:

- **"aggregate worker peak memory, 200+ GB → under 20 GB."** Summed across parallel
  worker processes, not a single host. Volunteer the scope unprompted.
- **"about 1s TTFT, 40 tok/s per request, 200 tok/s aggregate."** Know the model
  size, batch conditions and prompt length. If you can't reconstruct them, say
  "measured under our production traffic mix" — never invent a benchmark setup.
- **"tools for shell-based text processing."** This was a tool the agent could
  invoke. It was **not** a hardened sandbox. If they hear "code execution" and get
  excited, correct them in the same breath.

---

## 4. The five questions you will get

### (a) "Have you built an MCP server?"

No. Do not stretch this — it is one API call away from being falsified.

> "No — I've been on the consuming side. I use MCP servers every day through Claude
> Code and Cursor, so I know the surface: tool discovery, the schema contract, how
> a client decides what to call. What I've actually built is the same layer by hand,
> before MCP was in our stack — tool schemas, the dispatch loop, retries on
> malformed tool arguments, schema-validated results coming back. Standardising that
> onto MCP is a protocol swap on machinery I've already written, not a new concept.
> But I haven't shipped a server, and I'd rather say that than imply I have."

Then pivot to the orchestration loop, which is your ground.

### (b) "How would you sandbox agent code execution?"

They will ask. You have no sandbox runtime experience — say so, then show you can
reason about it, because the *reasoning* is what a senior hire is being tested on.

> "I haven't built one. What I've run is container-level isolation for multi-tenant
> jobs — separate containers per tenant, resource limits, no shared writable state.
> That's the right model for workloads I trust; it's not enough for code an LLM
> wrote. For that the container boundary is the wrong trust boundary, since it's a
> shared kernel. gVisor intercepts syscalls in userspace, so you keep container-ish
> startup times and give up some syscall compatibility; Firecracker gives you a real
> microVM boundary at higher cost per instance. Which one I'd pick depends on how
> long the sandboxes live and how often you spin them up. On top of either: no
> network egress by default, an explicit capability allowlist, wall-clock and memory
> caps, and a filesystem that dies with the sandbox."

Have the opinion. Never claim the build.

### (c) "Java or Go?"

> "Neither — Python is my language. The JD says Java, Go, *or* Python, so I'm
> reading Python as in scope. If the team's services are in Go I'd want to be honest
> that there's a ramp; I'd expect to be useful in a few weeks and fluent in a few
> months, but I'd be learning it on the job."

Do not claim "some Go". You have none, and a whiteboard question ends it.

### (d) "MySQL and MongoDB? What about indexing and query optimization?"

The JD asks for both plus indexing depth. You have PostgreSQL and, per
`cv_intake.md`, you already assessed that as not a strength.

> "PostgreSQL, not MySQL or Mongo. I've designed the schemas behind our platform and
> written both ORM and raw SQL against them. I'd be overselling if I called deep
> query tuning a strength — I've fixed the queries that showed up as slow, not
> worked a workload down index by index. The relational modelling transfers; the
> MySQL-specific and document-model parts I'd be picking up."

Candour here costs you little and buys credibility for the claims that matter.

### (e) "You'd be leaving your second role inside a year."

Reuse verbatim — it is already consistent with what GreenNode holds
(`vng_greennode_gaps.md:88-97`), except retarget the last line at this role:

> "Both of those have run concurrently with a degree I finish this December, so the
> timeline is denser than it looks on paper. The move here isn't away from Pi — it's
> toward agent infrastructure specifically. I've done the platform work at Pi and
> the agent-platform work at AcamarAI as two separate jobs, and this is the first
> role I've seen that's actually both."

Avoid comp, boredom, management. They all read as restlessness.

---

## 5. The deep-dive you should *invite*

Steer here early — it is the part of the JD where you are genuinely strong and
where most backend candidates are not.

- **The orchestration loop.** How you decided when the agent was done, how you
  bounded step count, what you did when the model looped.
- **Context/memory.** What history compression actually did, what you dropped
  first, how you decided what survived into the next turn.
- **Guardrails.** Why schema-validated output via Instructor/Pydantic rather than
  prompt-level instruction; what you did on a malformed tool argument, and how many
  retries before failing the turn.
- **Tool design.** Why a shell-based text-processing tool rather than N narrow
  tools, and what you'd change knowing what you know now.
- **Evaluating a non-deterministic system.** recall@k and LLM-as-judge, the
  regression suite re-run on every prompt or model change. This is the answer to
  "how do you know an agent change didn't break anything", and most candidates
  don't have one.
- **The stale-build incident.** Nondeterministic output traced across a service
  boundary to a silently failed deploy. It is your best RCA story and it lands with
  platform engineers.

---

## 6. Two open portfolio items

Carried over from `vng_greennode_gaps.md:159-170`, both still open:

- **Your GitHub is linked on every CV and has nothing on it.** For this role
  specifically there is an obvious fix: a small MCP server, public, with a README.
  It converts a **required** qualification from Weak to Strong, it is a weekend of
  work, and it turns question (a) above from an admission into a demonstration.
  This is the single highest-leverage thing you can do before applying.
- **Nine job titles across two jobs** in this repo. This CV reuses
  `Software Engineer, AI & Compute Platform` and `AI Engineer, Inference & AI Platform`
  unchanged, so all three GreenNode CVs agree — but LinkedIn carries one title and a
  reviewer who cross-checks will see the mismatch. Pick the official titles and make
  everything agree.
