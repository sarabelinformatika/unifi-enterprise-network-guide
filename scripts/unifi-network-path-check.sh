#!/usr/bin/env bash
set -euo pipefail
target="${1:-}"
[[ -n "$target" ]] || { echo "Usage: $0 <hostname-or-ip>" >&2; exit 2; }
echo "== Resolution =="; getent ahosts "$target" | sort -u || true
echo "== Route =="; ip route get "$target" 2>/dev/null || true
echo "== ICMP =="; ping -c 4 -W 2 "$target" || true
echo "== Path MTU =="; command -v tracepath >/dev/null && tracepath -m 12 "$target" || true
