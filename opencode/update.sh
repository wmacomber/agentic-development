#!/usr/bin/env bash
set -Eeuo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source_dir="${script_dir}/.config/opencode/"
target_dir="${HOME}/.config/opencode/"

if ! command -v rsync >/dev/null 2>&1; then
  echo "error: rsync is required but was not found in PATH" >&2
  exit 1
fi

if [[ ! -d "${source_dir}" ]]; then
  echo "error: source directory not found: ${source_dir}" >&2
  exit 1
fi

mkdir -p "${target_dir}"

rsync -av --delete \
  --exclude='.DS_Store' \
  --exclude='Thumbs.db' \
  "${source_dir}" \
  "${target_dir}"
