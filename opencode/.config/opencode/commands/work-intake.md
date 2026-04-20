---
description: "Take a potentially messy pile of mixed work notes, decompose it into grouped work items, and route each group into the existing delivery pipeline."
agent: team-lead
---

Use this workflow when the input is a messy mix of bugs, features, docs fixes, test gaps, operational concerns, and incomplete notes. Or clean input. Any input from the user, really.

Task context: $ARGUMENTS

Workflow:
1. Read the pasted text as unstructured intake, not as a single task by default.
2. Split it into candidate work items, then group only related items together.
3. Do not merge unrelated concerns just because they arrived in one blob.
4. Classify each group with practical labels such as bug, feature, docs, refactor, test gap, operability or runtime concern, or mixed-but-related.
5. Even when the input is already clean, normalize it as intake first; if everything belongs together, you may collapse it to one ready group after decomposition.
6. For each group, produce:
   - a brief statement of what is wrong or needed
   - the classification
   - dependencies or overlaps
   - ambiguity or escalation notes
   - recommended routing
7. Recommended routing must be one of:
   - direct to normal `@team-lead` pipeline
   - `@product-intake-brief` first
   - optional `@sre-readiness-gate` later
8. When intake yields multi-group, staged, or dependency-heavy work, note that `planning-with-files` may be appropriate for downstream `@team-lead` coordination, but do not create planning files in this command.
9. Produce a suggested execution order across groups.
10. If no groups are ready, or missing information blocks safe routing, stop and ask targeted clarification before execution.
11. If one or more groups are ready, prepare all ready groups, show a brief intake summary, and ask the user whether to begin processing everything in the most logical order.
12. After explicit user approval, process groups one at a time through the existing pipeline:
    - use `@planner` for the execution brief when needed
    - use `@product-intake-brief` first only for groups with unclear user, problem, outcome, or success criteria
    - use `@qa-release-agent` and `@reviewer` for implementation work as usual
    - use `@sre-readiness-gate` only for runtime-sensitive groups

Required first-phase output:
- grouped work items
- classification per group
- brief statement of what is wrong or needed
- dependencies or overlaps
- ambiguity or escalation notes
- recommended routing
- suggested execution order

Rules:
- decompose first, execute second
- do not silently invent requirements
- do not require pre-cleaned input before using this command
- do not force product-intake or SRE review on every group
- do not force `planning-with-files` on every intake
- do not bypass planner, QA, or reviewer for implementation work
- preserve the existing `team-lead` coordination spine
- unrelated groups may be queued rather than blended into one execution stream

Use this as the front door for messy intake, not as a replacement for the normal planner or team-lead workflow when the task is already clear.
