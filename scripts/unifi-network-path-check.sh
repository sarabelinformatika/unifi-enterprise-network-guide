#!/usr/bin/env bash
set -euo pipefail
target="${1:-}"
[[ -n "$target" ]] || { echo "Usage: $0 <hostname-or-ip>" >&2; exit 2; }
echo "== Resolution =="; getent ahosts "$target" | sort -u || true
echo "== Route =="; ip route get "$target" 2>/dev/null || true
echo "== ICMP =="; ping -c 4 -W 2 "$target" || true
echo "== Path MTU =="
if command -v tracepath >/dev/null; then
  tracepath -m 12 "$target" || true
else
  echo "tracepath is not installed; skipping path MTU discovery."
fi
