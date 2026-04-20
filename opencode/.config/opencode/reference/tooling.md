# Tooling Guidance

This starter pack is meant to stay portable. Prefer common tools that exist on a typical Unix-like development machine, and adapt to the active repository rather than assuming one stack.

## Preferred tools

- `rg`: default tool for text search
- `rg --files`: default fast path for file discovery
- `jq`: preferred tool for inspecting and reshaping JSON
- `yq`: preferred tool for YAML inspection when available
- `sed`, `head`, `tail`: quick text inspection
- `find`: directory traversal when pattern-based file search is not enough
- `tree`: quick repo-shape inspection when available
- `shellcheck`: validate non-trivial shell scripts when available

## Command preferences

- Prefer `rg` over slower generic search tools.
- Prefer `rg --files` when you only need file names.
- Prefer `jq` and `yq` over ad hoc parsing for structured data.
- Prefer repository-native task runners and scripts before inventing one-off commands.
- Prefer the active workspace shell for repository inspection, validation, and local automation.

## Working style

- Inspect the repository before assuming framework, storage, or deployment shape.
- Use the smallest reliable command that answers the question.
- Re-run repo-supported validation before signoff when the repository provides it.
- Keep temporary automation disposable unless the repository clearly benefits from keeping it.
