#!/usr/bin/env bash
set -euo pipefail
host="${1:-}"
[[ -n "$host" ]] || { echo "Usage: $0 <hostname-or-ip> [port ...]" >&2; exit 2; }
shift || true
ports=("$@"); ((${#ports[@]})) || ports=(443 8080 8443)
for port in "${ports[@]}"; do
  if timeout 3 bash -c "</dev/tcp/${host}/${port}" 2>/dev/null; then status=open; else status=closed_or_filtered; fi
  printf '%-6s %s\n' "$port" "$status"
done
