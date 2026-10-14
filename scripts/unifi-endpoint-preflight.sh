#!/usr/bin/env bash
set -euo pipefail
url="${1:-}"
if [[ -z "$url" || ! "$url" =~ ^https:// ]]; then echo "Usage: $0 https://unifi.example.invalid" >&2; exit 2; fi
host="${url#https://}"; host="${host%%/*}"; host="${host%%:*}"
echo "== DNS =="; getent ahosts "$host" | sort -u || true
echo "== HTTPS headers =="; curl --fail --silent --show-error --location --head --max-time 10 "$url" || true
echo "== Certificate summary =="; timeout 12 openssl s_client -connect "${host}:443" -servername "$host" </dev/null 2>/dev/null | openssl x509 -noout -subject -issuer -dates -fingerprint -sha256 || true
