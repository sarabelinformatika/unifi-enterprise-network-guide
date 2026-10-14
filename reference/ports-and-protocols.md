# Ports and protocols

This is a review checklist, not a rule to expose every port. Restrict sources and verify current Ubiquiti documentation.

| Purpose | Typical protocol/port | Direction | Notes |
|---|---|---|---|
| Network UI/API | TCP 443 | Admin to console/server | Do not publish broadly |
| Device inform | TCP 8080 | Device to Network Server | Common self-hosted adoption path |
| STUN | UDP 3478 | Device/server dependent | Required only for applicable deployments |
| Discovery | UDP 10001 | Local discovery | Limit to required segments |
| Guest portal | TCP 8880/8843 | Client to portal | Version/deployment dependent |
| RADIUS auth/accounting | UDP 1812/1813 | NAS to RADIUS | Restrict clients; RadSec differs |
| Syslog | UDP/TCP 514 or TLS variant | Device to collector | Prefer protected transport |
| SNMP | UDP 161 | Monitor to device | Prefer SNMPv3 where supported |
| WireGuard | UDP 51820 default | VPN client to gateway | Configurable |
| DNS/NTP | UDP/TCP 53; UDP 123 | Infrastructure to service | Control and monitor |
