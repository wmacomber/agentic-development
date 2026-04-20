---
name: operability-readiness
description: Reusable guidance for assessing rollout safety, runtime configuration, health signals, and operational visibility for runtime-sensitive changes.
compatibility: opencode
---

# Operability Readiness

Use this skill when the task affects deployment, runtime behavior, migrations, health checks, configuration, or operator visibility.

## Review Areas

- rollout shape, dependency ordering, and blast radius
- rollback expectations and reversibility
- health and readiness behavior
- runtime configuration, env var, and secret boundaries
- migration and startup safety
- observability gaps across logs, traces, metrics, and alerts
- operator actions needed during deploy, rollback, or incident response

## Workflow

1. Identify the runtime-sensitive surfaces touched by the change.
2. Determine how the change is expected to roll out and how it could fail.
3. Check whether rollback is safe, partial, or blocked by data or configuration changes.
4. Check whether health, readiness, and runtime signals would reveal failure quickly.
5. Report readiness with concrete risks and operational follow-up.

## Rules

- Focus on operationally meaningful risk, not feature correctness.
- Use repository evidence first; do not invent deployment topology.
- Treat destructive or irreversible migrations as high-risk unless explicitly accepted.
- If observability is weak, say what signal is missing and why it matters during rollout or incident response.

## Output

- Runtime-sensitive scope.
- Rollout and rollback considerations.
- Health, readiness, and observability gaps.
- Runtime configuration or migration risks.
- Readiness recommendation.
