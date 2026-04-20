# Delivery Readiness

This note is a low-authority reference for delivery-support artifacts that may matter when a change affects deployment or runtime behavior. It is intentionally concise and should not replace project-specific policy.

Use it to check whether the repository or task needs explicit notes for:

- rollout shape and dependency ordering
- rollback expectations and reversibility
- runtime configuration changes and secret handling
- health or readiness behavior
- migration or data-shape risk
- observability coverage across logs, traces, and metrics
- operator actions during deploy, rollback, or incident response

Not every task needs every artifact. Small local refactors may need none of them. Runtime-sensitive changes usually need at least a short note on rollout, rollback, and operational visibility.
