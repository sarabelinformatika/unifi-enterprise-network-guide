#!/usr/bin/env bash
set -euo pipefail
dir="${1:-}"
[[ -d "$dir" ]] || { echo "Usage: $0 <sanitized-export-directory>" >&2; exit 2; }
echo "Files: $(find "$dir" -type f | wc -l)"
echo "Size: $(du -sh "$dir" | awk '{print $1}')"
echo "Potential secrets (review locally; output shows file names only):"
grep -RIlE 'password|private[_ -]?key|secret|token|community' "$dir" 2>/dev/null | sort || true
echo "This script does not redact or upload data."
