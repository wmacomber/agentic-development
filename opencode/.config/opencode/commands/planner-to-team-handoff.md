---
description: "Use planner for the execution brief, then launch a coordinated agent team to implement against that brief."
agent: planner
---

Use this workflow when the task is large enough that governance discipline should happen before implementation.

Task context: $ARGUMENTS

Steps:
1. Inspect the repository and produce a decision-complete execution brief using `docs/execution-brief-template.md` when available.
2. Restate the brief clearly before implementation starts.
3. Launch `@team-lead` with the approved brief as the controlling contract.
4. Require `@team-lead` to reuse that brief and continue from execution rather than creating a second plan.
5. Allow `@executor` to keep implementation single-owner when the task does not need extra fan-out.
6. Require `@qa-release-agent` signoff for cross-layer, regression-prone, or release-sensitive work.
7. Require `@reviewer` audit before final acceptance.

Final output should include the execution brief, implementation summary, validation summary, and a reviewer-style risk summary when needed.
