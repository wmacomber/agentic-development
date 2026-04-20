---
description: "Plan and execute risk-based QA for full-stack changes, with findings-first review, regression checks, and release-gate recommendations."
agent: qa-release-agent
---

Run QA as a release gate for this task: $ARGUMENTS

Inputs to read first:
- `CLAUDE.md` when present
- the approved execution brief when one exists
- the team task list or current handoff summary when one exists
- project-owned contract, schema, or decision docs that actually exist in the target repository

QA workflow:
1. Define scope and identify touched layers.
2. Build a risk list covering contract drift, validation and error handling, regression risk, empty or loading states, and environment assumptions.
3. Verify in layers, starting with the narrowest reliable reproduction.
4. Run relevant repo commands before signoff when they exist, including `scripts/lint`, `scripts/test`, and `scripts/check-integration` or equivalents.
5. Review with a findings-first mindset.

Reporting format:
- scope under test
- commands run
- findings
- coverage gaps
- release recommendation: pass, pass with risk, or blocked

Do not hand-wave failing checks, and do not expand scope into feature work unless explicitly reassigned.
