# 07. SSID security, WPA-Enterprise, and RADIUS


Keep SSID count low because beacon and management overhead consumes airtime. Map each SSID to a defined business purpose, VLAN, authentication method, client set, and owner.

## Security choices

Use WPA2/WPA3-Enterprise with 802.1X for managed corporate devices where identity infrastructure supports it. Prefer certificate-based EAP-TLS over shared secrets. Use WPA2/WPA3-Personal only for constrained use cases with unique, rotated credentials. Avoid open networks unless captive-portal risk is accepted and traffic remains isolated.

## RADIUS design

Deploy redundant RADIUS services where authentication availability matters. Restrict clients by source address, use long unique shared secrets stored outside Git, synchronize time, validate server certificates, and document EAP methods. Dynamic VLAN assignment requires consistent RADIUS attributes and a safe fallback policy.

## Migration

Pilot new authentication with a separate SSID or device group. Validate certificate trust, revocation behavior, machine/user authentication, sleep/resume, roaming, and failure behavior before broad rollout. Keep an emergency network tightly controlled and temporary.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./06-wifi-rf-design-capacity-and-roaming.md) · [Next](./08-firewall-zones-segmentation-and-egress.md)
