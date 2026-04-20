---
name: logging-guidance
description: Portable, language-agnostic guidance for structured, privacy-safe, operator-useful logging that stays practical with or without OpenTelemetry.
compatibility: opencode
---

# Logging Guidance

Use this skill when the task needs practical guidance for application or service logging without assuming a specific language, framework, vendor, or tracing stack.

## Goals

- produce logs that help operators diagnose real runtime issues
- keep logs structured, privacy-safe, and low-noise
- align logs with traces and metrics when OpenTelemetry or similar telemetry is available
- remain useful when tracing is absent or only partially deployed

## Guidance Areas

- structured logging with stable field names and machine-parseable values
- practical log levels such as `DEBUG`, `INFO`, `WARN`, and `ERROR`
- operator-useful event wording that says what happened, where, and why it matters
- noise control, sampling, and avoiding overly chatty steady-state logs
- correlation context such as request IDs, trace IDs, span IDs, job IDs, tenant IDs, or other safe identifiers
- safe content boundaries for secrets, tokens, credentials, raw personal data, and large payload dumps
- OpenTelemetry-aware handling of logs, traces, metrics, and span events

## Workflow

1. Identify the operational questions the logs need to answer.
2. Define the key events, fields, and correlation context that make those events actionable.
3. Map each event to the right signal: log, metric, trace span, or span event.
4. Check for privacy, secret-safety, and verbosity risk.
5. Recommend the smallest logging shape that supports diagnosis without redundant telemetry.

## Level Guidance

- `DEBUG`: high-detail development or targeted diagnosis data that is usually disabled in steady-state production.
- `INFO`: meaningful lifecycle or business-flow events that operators may need during routine investigation.
- `WARN`: degraded behavior, retries, partial failure, fallback paths, or suspicious states that need attention but not immediate incident declaration.
- `ERROR`: failed operations, user-visible failures, dropped work, exhausted retries, or unrecoverable states.

Equivalent level schemes are acceptable if the practical usage stays the same.

## Rules

- Prefer structured fields over free-form blob messages.
- Put stable identifiers and safe dimensions in fields, not only in prose.
- Do not log secrets, tokens, raw credentials, private keys, session cookies, full auth headers, or raw personal data unless the repository has an explicit and justified redaction pattern.
- Avoid logging full request or response bodies by default.
- Use concise event wording that helps an operator distinguish cause, impact, and next diagnostic step.
- Avoid duplicate logs for the same failure path at every stack layer unless each layer adds new signal.

## OpenTelemetry-Aware Guidance

- When trace context exists, include enough correlation to join logs with traces, usually trace and span identifiers or the logger integration that emits them automatically.
- Prefer a metric for repeated numeric health signals, rates, queue depth, latency buckets, or error counts.
- Prefer a trace or span event for step-by-step execution timing, downstream call timing, and fine-grained request flow context.
- Prefer a log when an operator needs durable narrative context, configuration clues, safety-relevant state, or a sparse high-signal event record.
- Avoid emitting the same event as a full log, a verbose span event, and a custom metric unless each signal serves a distinct operational purpose.
- If OTEL is absent, preserve request or job correlation with application-level IDs so logs remain diagnosable.

## Output

- Recommended event set and level usage.
- Fields to include for correlation and diagnosis.
- Content that must be redacted, omitted, or summarized.
- Where logs should defer to traces, metrics, or span events.
- Fallback guidance when full tracing is unavailable.
