# GreenNode (VNG) — Senior Inference Engineer — gap sheet & interview prep

**Internal use only. Do not send this.**

CV: `vng_greennode_inference_cv.yaml` → `rendercv_output_vng_greennode_inference/Dao_Xuan_Tan_CV.pdf`
Way in: **referral, 5-YoE requirement waived.**

> **Same company as the Senior Platform Engineer (AI Inference & Agent Platform)
> role you scrapped.** Those files are still in the repo as `vng_greennode_cv.yaml`
> and `vng_greennode_gaps.md`. Two consequences worth planning for:
>
> - **Do not let both CVs reach GreenNode.** They use different headlines and a
>   different emphasis on the same two jobs. That is legitimate tailoring, but a
>   recruiter holding both sees a candidate who reshapes himself per posting.
> - **If your referrer already floated you for the platform role, close the loop
>   explicitly.** "I looked at both and the inference one is the better match for
>   what I've actually done" is a strong answer — it reads as self-knowledge. Being
>   silently in two pipelines does not.
>
> GreenNode is VNG's AI-cloud/GPU business, so the interviewer likely runs real
> GPU fleets rather than a single A100. Expect scale questions — what changes when
> you go from one node to a cluster — and be honest that your serving experience is
> single-node plus replicas, not fleet-scale.

---

## 1. Where you stand

This JD is a far better fit than the GreenNode one. That role was half
platform/SRE — cluster operations, GitOps, SLOs — and you were framing around a
real hole. This one is almost entirely inference and performance work, and you
clear most of it on evidence rather than framing.

### Hard requirements

| Requirement | Your evidence | Strength |
| --- | --- | --- |
| Software engineering, distributed systems, performance optimization | Compute platform at tens of thousands of jobs/day, minutes → <10s, memory leak, GIL-aware concurrency design | **Strong** |
| Proficient in Python | Core language, asyncio + multiprocessing, profiled and tuned | **Strong** |
| High-throughput systems, distributed services, large-scale serving | Both roles qualify — the platform and the vLLM serving tier | **Strong** |
| AI/ML serving, LLM inference, GPU workloads | vLLM on A100 in production, bare-metal GPU hosts | **Strong** |
| At least one inference engine, hands-on | vLLM — the JD asks for *one*, so this is **met** | **Strong** |
| Inference optimization: batching, KV-cache, quantization, tensor/pipeline parallelism | All four real: continuous batching, KV-cache + chunked prefill + prefix caching, FP8/INT8, TP and PP | **Strong** |
| Profiling, bottleneck analysis, perf tuning in production | cProfile, py-spy, torch.profiler, vLLM metrics, nvidia-smi; two concrete wins | **Strong** |
| GPU architecture and the CUDA programming model | Kernels written, run and profiled — but self-directed, not production | **Adequate, will be probed** |
| C/C++, Go or other low-level *(a plus)* | C++ readable, written slowly. No Go. | **Weak** |
| Speculative decoding | Not held — named in the JD | **Gap** |
| Disaggregated serving (prefill/decode split) | Not held — named in the JD | **Gap** |
| 5 years as SWE / Performance Engineer | ~1.5 years | **Waived by referral** |

### Nice-to-haves

| Nice-to-have | You | |
| --- | --- | --- |
| LLMOps, RAG, agents | Qdrant at millions of vectors, LangChain/LangGraph, eval harnesses, regression suite | **Strong** |
| Distributed inference, request routing, orchestration | Multi-replica behind a load balancer — real but shallow | **Partial** |
| Observability (Prometheus, Grafana, OTel) for ML/distributed | Grafana + Prometheus as a *consumer*; no OTel | **Weak** |
| Production CUDA, cuBLAS / cuDNN / NCCL | None | **Gap** |
| NVIDIA stack: Triton, CUTLASS, TensorRT, Nsight Systems / Compute | None | **Gap** |
| Open-source contributions to vLLM / SGLang / TensorRT-LLM | None, and the linked GitHub is empty | **Gap** |
| Published research in ML systems | None | **Gap** |

**Net read:** you are strong on the engine-tuning and profiling half, thin on the
kernel-and-NVIDIA-toolchain half, and absent on the community-signal half
(open source, papers) that this JD asks for twice.

---

## 2. Three claims you must be able to defend precisely

### The CUDA line — new, and the biggest change from your previous CVs

The CV now says **"CUDA programming model, kernels written and profiled"** with
no "self-study" hedge. Your older `nvidia_perf_engineer_cv.yaml` hid this behind
a disclaimer; this one asserts it. That is the right call — but it means an
interviewer will open it up, and you need the specifics ready:

- **Which kernels** did you write? Name them concretely (vector add, tiled matmul
  with shared memory, a reduction, a softmax — whatever is true).
- **What did you profile with**, and what did the numbers say?
- **What did you learn** that you could not have learned from the PyTorch level?
  The strongest possible answer is a specific realisation: an occupancy limit, a
  memory-bound vs compute-bound diagnosis, a coalescing fix and its speedup.
- **Be explicit that this is self-directed, not production.** Say it before
  they ask. "I've written and profiled kernels to understand the model — I
  haven't shipped CUDA to production" is a completely respectable position and
  costs you nothing. Being *caught* overstating it costs you the interview.

If you cannot give concrete answers to all three bullets, tell me and I will
soften the skills line before you send this.

### The memory figure

"200+ GB to under 20 GB" is **aggregate across worker processes**, not a single
host. Say so unprompted — a performance engineer will ask, and volunteering it
reads as rigour rather than correction.

### The throughput numbers

"~1s TTFT, 40 tok/s per request, 200 tok/s aggregate." Know the model and
parameter count, the concurrency level, and the prompt/output lengths these were
measured at. If you can't reconstruct the setup, say "measured under our
production traffic mix" — never invent a benchmark configuration.

---

## 3. The five questions you will get

### (a) "Which inference engines have you worked with?"

vLLM only. The JD asks for *at least one*, so this satisfies the requirement —
answer it as a fact, not an apology, then show you understand the landscape:

> "vLLM in production — that's the one I've actually tuned. I've read enough
> about SGLang and TensorRT-LLM to know where they diverge: SGLang's RadixAttention
> is a better fit when you have heavy prefix sharing across requests, and
> TensorRT-LLM trades flexibility for compiled per-model engines and the best
> NVIDIA-specific numbers. I haven't run either, and I'd expect a ramp."

Do not claim comparative benchmarks you haven't run.

### (b) Speculative decoding and disaggregated serving

Both are named in the JD and you have neither. Explain the mechanism, then be
clear about the line between understanding and shipping:

- **Speculative decoding** — a small draft model proposes several tokens, the
  target model verifies them in one forward pass; the win depends on the
  acceptance rate, and it helps latency at low batch sizes far more than it helps
  aggregate throughput at high ones.
- **Disaggregated serving** — split prefill and decode onto separate workers
  because they have opposite resource profiles (prefill is compute-bound, decode
  is memory-bandwidth-bound), at the cost of shipping KV-cache between them.

> "I understand both well enough to reason about when they pay off. I haven't
> implemented either — the workloads I've tuned didn't call for them."

### (c) The CUDA deep-dive — invite this one

This is now the part of your profile that changed most, so steer into it. Have
ready: the kernels you wrote, the profiling numbers, and one specific thing that
surprised you. Then connect it upward — the reason the kernel work matters here
is that it's why you can reason about *why* a serving-layer knob moves
throughput, not just that it does.

### (d) "You'd be leaving your second role inside a year"

AcamarAI Jun 2025 – Jan 2026, Pi Jan 2026 – present, degree finishing Dec 2026.
Both roles ran alongside a full-time degree.

> "Both have run concurrently with a degree I finish this December, so the
> timeline is denser than it looks. The move is toward inference specifically —
> I've done the serving work at AcamarAI and the performance work at Pi as two
> separate jobs, and this is the first role that's actually both."

### (e) Open source and papers

Asked for twice in this JD, and you have neither. Do not manufacture a story.

> "Nothing public yet. Most of what I've built has been internal. It's the gap
> I'm most aware of."

**This is the one gap you could still close cheaply before applying.** A single
public repo — your CUDA kernels with profiling numbers, or a vLLM benchmark
sweep across batch sizes and quantization settings with a written-up result — would
answer (c) and (e) at once, and would be genuinely on-topic for this specific
role. It's also the only gap on the list you can fix in a weekend.

---

## 4. Also worth knowing

**One JD responsibility has no evidence behind it:** *"Ensure the reliability of
the inference pipeline through A/B launches, rollback, model versioning, and
fault tolerance."* You have model and prompt versioning and a regression suite —
both on the CV. You have **no A/B testing** (`zalopay_intake.md:120`) and no
rollback story. If asked, say which half you've done.

**Your GitHub is linked on this CV and is empty.** For a role that names
open-source contributions twice, a reviewer will click it. Either put something
there or remove the link — an empty profile is worse than no link.

---

## 5. What to give your referrer

Note: if this is the same referrer as the platform role, lead by telling them
which posting you're targeting and why, before the pitch below.


> Currently owns an internal Python compute platform sustaining tens of thousands
> of jobs a day — profiled it down from minutes to under 10 seconds per run and
> fixed a leak that was costing 200+ GB of aggregate worker memory. Before that,
> tuned self-hosted LLM serving on A100s with vLLM: FP8/INT8 quantization,
> continuous batching, KV-cache and chunked prefill, tensor and pipeline
> parallelism, ~1s TTFT and 200 tok/s aggregate, instrumented with torch.profiler
> and vLLM metrics. Writes and profiles his own CUDA kernels to understand the
> layer underneath. Graduating Dec 2026, working full-time since Jun 2025.

Two things to ask them:

1. **How much of this role is kernel-level versus serving-level?** The JD claims
   "kernel to scheduling to distributed execution". If the team genuinely writes
   CUDA daily, you are a serving-layer engineer applying to a kernel role and
   should know that going in. If the day job is tuning vLLM and hunting
   bottlenecks, you're a strong fit.
2. **Is "Senior" load-bearing on the band?** Better to learn before the
   compensation conversation than after.
