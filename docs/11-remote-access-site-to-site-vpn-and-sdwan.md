# 11. Remote access, site-to-site VPN, and SD-WAN


Use VPNs instead of exposing management interfaces. UniFi gateways support multiple remote-access and site-to-site options; capability depends on gateway and Network application versions.

## Selection

- WireGuard: preferred modern remote-access option for supported clients.
- Teleport/Identity: simplified user access with ecosystem dependencies.
- OpenVPN: useful for broad compatibility and selected site-to-site scenarios.
- IPsec: common for third-party site interoperability.
- Site Magic/SD-WAN: streamlined connectivity between compatible UniFi sites.

Ubiquiti recommends WireGuard over L2TP for desktop and laptop users. Treat L2TP as a compatibility exception, not the new baseline.

## Controls

Use named users, least-privilege routes, MFA where the selected identity path supports it, controlled configuration distribution, key rotation, device revocation, and time-bounded supplier access. Separate remote-user, administrator, and site-to-site policies.

## Validation

Test from external networks, behind NAT, and across realistic MTUs. Verify split/full tunnel behavior, DNS, IPv4/IPv6 leakage, route overlap, failover, throughput, idle reconnection, and access revocation. Store client configurations as secrets, never in this repository.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./10-wan-redundancy-routing-dns-dhcp-and-ipv6.md) · [Next](./12-monitoring-logging-alerting-and-capacity.md)
