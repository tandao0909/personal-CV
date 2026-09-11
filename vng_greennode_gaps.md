# GreenNode (VNG) — Senior Platform Engineer, AI Inference & Agent Platform

**Internal use only. Do not send this to VNG.**

Req `OfficialTechSystem26-ENG-3766` · Ho Chi Minh City
CV: `vng_greennode_cv.yaml` → `rendercv_output_vng_greennode/Dao_Xuan_Tan_CV.pdf`

---

## 1. Where you actually stand

The JD is two roles fused together. You are strong on one half and thin on the
other. Know which is which before you walk in.

| JD requirement | Your evidence | Strength |
| --- | --- | --- |
| LLM inference optimization — quantization, batching, KV-cache | FP8/INT8, continuous batching, KV-cache and prefix caching, all in production | **Strong** |
| Inference engines | vLLM, production, on A100 | **Strong (one engine)** |
| GPU workloads / AI infrastructure | Bare-metal GPU hosts, NVIDIA driver + CUDA + container toolkit, tensor parallelism, multi-replica behind a load balancer | **Strong** |
| Multi-tenant serving architectures | Compute platform for ~20 engineers, tens of thousands of jobs/day | **Good** |
| Agent platform *(nice-to-have)* | LangChain/LangGraph, OpenAI tool calling, multi-step planning, schema-validated output | **Strong** |
| LLMOps / RAG *(nice-to-have)* | Qdrant at millions of vectors, hybrid + reranking, eval harnesses, regression suite | **Strong** |
| On-premise / private cloud *(nice-to-have)* | Real — GCP **and** on-prem bare metal at both employers | **Strong** |
| Incident response and RCA | The failed-deploy / stale-build trace; the silent memory leak | **Good** |
| Linux, distributed systems | Bare-metal Linux, Kafka, PostgreSQL, Redis, concurrency design | **Good** |
| Python / Bash automation | Python is your core language | **Strong** |
| Production Kubernetes | Workload-level only — you deploy onto clusters you don't own | **Weak** |
| K8s ecosystem: networking, ingress, storage, autoscaling, security | Not held | **Gap** |
| Monitoring stack: Prometheus, Grafana, Loki, ELK, OTel | Grafana + Prometheus as a *consumer*; no Loki, ELK, OTel | **Weak** |
| SLO/SLA, alert thresholds, error budgets | Not held | **Gap** |
| CI/CD: GitOps, Helm, Terraform, ArgoCD | GitHub Actions only | **Gap** |
| Go | Not held | **Gap** |
| SGLang, Triton, TensorRT-LLM, llama.cpp, KServe, Ray Serve | Not held | **Gap** |
| Kafka, ClickHouse, Elasticsearch, vector DBs *(nice-to-have)* | Kafka + Qdrant yes; ClickHouse/ES no | **Partial** |
| CKA/CKAD/CKS, cloud certs *(nice-to-have)* | None | **Gap** |
| 5 years Platform/SRE/DevOps | ~1.5 years | **Waived by referral** |

**Read this honestly:** you clear the "AI Inference & Agent Platform" half of the
title convincingly. You do not currently clear the "Platform Engineer" half. The
referral gets you the interview; the inference depth is what has to close it.

---

## 2. What the CV deliberately does *not* claim

Nothing below appears on the CV, not even as "familiar with". If an interviewer
raises any of it, the answer is "no, I haven't" — never a hedge.

> cluster provisioning · ingress controllers · CNI/CSI/storage classes · network
> policies · RBAC · HPA/VPA/cluster-autoscaler · GPU node pools · MIG · Helm ·
> ArgoCD · GitOps · Terraform · Loki · ELK/OpenSearch · OpenTelemetry · Go ·
> SGLang · TensorRT-LLM · Triton · llama.cpp · KServe · Ray Serve · ClickHouse ·
> Elasticsearch · SLO/SLA definition · error budgets · on-call rotation ·
> CKA/CKAD/CKS

A `rg` check enforcing this is in the plan file. Re-run it if you edit the CV.

Two claims that *are* on the CV and that you should be ready to defend precisely:

- **"aggregate worker peak memory, 200+ GB → under 20 GB."** This is summed across
  parallel worker processes, not a single host. Say so unprompted — a platform
  engineer will ask, and volunteering it reads as rigour.
- **"about 1s TTFT, 40 tok/s per request, 200 tok/s aggregate."** Know the model
  size, the batch conditions, and the prompt length these were measured under. If
  you can't reconstruct the conditions, say "measured under our production traffic
  mix" rather than inventing a benchmark setup.

---

## 3. The four questions you will get

### (a) "Have you operated a Kubernetes cluster in production?"

Do not blur this. Separate what you own from what you don't, then move the
conversation to where you're strong.

> "Not the control plane — I've been a heavy consumer of clusters, not their
> operator. What I own is everything above it: containerised workloads at tens of
> thousands of jobs a day for about twenty engineers, across GCP and on-prem bare
> metal, with the scheduling, retries, failure alerting, CI/CD and the incident
> response when it breaks. The cluster-level work — ingress, storage classes,
> network policy, autoscaling — I haven't done, and I'd want to say that clearly
> rather than imply otherwise. Where I *have* gone deep is the layer this role is
> named for: GPU serving on bare metal, quantization, batching, KV-cache."

Then stop talking. Let them decide whether the gap matters.

### (b) "You'd be leaving your second role inside a year."

The dates: AcamarAI Jun 2025 – Jan 2026, Pi Jan 2026 – present, degree completing
Dec 2026. Both roles ran alongside a full-time degree.

> "Both of those have run concurrently with a degree I finish this December, so
> the timeline is denser than it looks on paper. The move here isn't away from Pi
> — it's toward GPU infrastructure specifically. I've done the inference work at
> AcamarAI and the platform work at Pi as two separate jobs, and this is the first
> role I've seen that's actually both."

Avoid: comp, boredom, management. Those all read as restlessness.

### (c) The deep-dive you should *invite*

This is your ground. Steer here early and volunteer detail:

- Why FP8/INT8 for that model, and what accuracy check you ran after quantizing.
- Continuous batching: what `max-num-seqs` / `gpu-memory-utilization` you settled
  on and what you traded off (TTFT vs aggregate throughput).
- KV-cache and prefix caching: what workload shape made prefix caching pay off.
- Tensor parallelism: why TP over more replicas at that model size, and what the
  interconnect cost was.
- Multi-replica behind a load balancer: how requests were routed, and what you'd
  do differently now (this is the JD's "inference orchestration and request
  routing" nice-to-have — have an opinion ready even though you haven't built it).
- The bare-metal host stack: driver/CUDA/container-toolkit version pinning, and
  what broke when versions drifted.

### (d) "Do you know Helm / ArgoCD / Terraform?"

Name it as a gap and give a timeline. Do not bluff — these are trivially
falsifiable in a follow-up question.

> "No. My CI/CD has been GitHub Actions, and deployment has been manifests rather
> than charts or a GitOps flow. It's the most obvious gap between me and this JD
> and it's the first thing I'd close — the concepts map onto what I already do,
> it's the tooling I haven't used."

If you want to remove this answer from the list, a weekend is genuinely enough:
a Helm chart for a vLLM deployment, an ArgoCD app pointing at it, and
kube-prometheus-stack with one alert rule on a vLLM metric. Do the work first,
then add the keywords — not the other way round.

---

## 4. What to give your referrer

They need one paragraph they can forward, and it should be the inference half —
not the Kubernetes half, which is where the JD's own reviewer will find you thin.

> Currently runs an internal compute platform on Kubernetes across GCP and
> on-prem bare metal — tens of thousands of jobs a day for ~20 engineers.
> Before that, built and tuned self-hosted LLM serving on A100s with vLLM:
> FP8/INT8 quantization, continuous batching, KV-cache tuning, tensor
> parallelism, multi-replica behind a load balancer, ~1s TTFT and 200 tok/s
> aggregate on bare-metal GPU hosts. Also built the agent platform on top of it
> (tool calling, multi-step planning, schema-validated output) and RAG over
> millions of vectors. Graduating Dec 2026, working full-time since Jun 2025.

Ask the referrer two things:

1. **Is the "Senior" in the title load-bearing?** If GreenNode has a lower band
   they'd slot you into, better to know before the salary conversation than after.
2. **Which half of the JD is the real pain?** If they're hiring for cluster
   operations, you're the wrong fit and should know now. If they're hiring because
   nobody in the market can tune vLLM, you're a strong candidate with a thin
   platform résumé — a very different conversation.

---

## 5. Two things worth fixing before you apply anywhere else

Carried over from the 2026-07-27 portfolio audit, both still open:

- **Your GitHub is linked on every CV and has nothing on it.** For an
  infrastructure application, a reviewer clicking through to an empty profile is
  worse than no link. Either put the vLLM benchmark work up, or drop the link.
- **Nine job titles across two jobs** in this repo. This CV reuses
  `Software Engineer, AI & Compute Platform` and `AI Engineer, Inference & AI Platform`
  from `cake_cv.yaml` rather than inventing new ones — but LinkedIn carries one
  title and a reviewer who cross-checks will see the mismatch. Pick the official
  titles and make everything agree.
