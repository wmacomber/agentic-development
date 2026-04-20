---
description: "Run an optional SRE readiness pass for deploy-, infra-, config-, or runtime-sensitive work."
agent: sre-agent
---

Run an SRE readiness gate for this task: $ARGUMENTS

Inputs to read first:
- the approved execution brief when one exists
- the current implementation or handoff summary when one exists
- deployment, runtime, configuration, health-check, observability, and operational docs that actually exist in the target repository

SRE workflow:
1. Define the runtime-sensitive scope under review.
2. Identify rollout risks, dependency ordering, and rollback expectations.
3. Review health and readiness implications.
4. Review observability, logging, and tracing gaps using `operability-readiness` and `logging-guidance` when useful.
5. Report a readiness recommendation without taking implementation ownership.

Reporting format:
- scope under review
- runtime and deploy risks
- rollout and rollback considerations
- health and readiness implications
- observability, logging, and tracing gaps
- readiness recommendation: pass, pass with risk, or blocked

Use this workflow for runtime-sensitive work, not as a mandatory gate for every task.
