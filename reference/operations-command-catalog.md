# Operations command catalog

Commands below are read-only examples. Confirm platform availability and authorization.

```bash
dig +short unifi.example.invalid
curl -fsSIL --max-time 10 https://unifi.example.invalid/
openssl s_client -connect unifi.example.invalid:443 -servername unifi.example.invalid </dev/null
ping -c 4 192.0.2.1
tracepath 192.0.2.1
ip route get 192.0.2.1
```

Avoid undocumented device-shell changes. Make supported configuration changes through approved UniFi workflows with backup and rollback.
