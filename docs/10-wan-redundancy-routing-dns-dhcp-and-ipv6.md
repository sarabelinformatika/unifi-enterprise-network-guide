# 10. WAN redundancy, routing, DNS, DHCP, and IPv6


The network is only as available as its dependencies. Document provider demarcation, addressing, MTU, DNS, DHCP, NTP, routing, and failover behavior. Test outages rather than trusting a green status icon.

## WAN

Use diverse circuits and paths when the business objective justifies them. Define health-check targets that distinguish an ISP failure from a single remote service failure. Validate failover and failback with active sessions, inbound services, VPNs, and public DNS.

## DHCP and DNS

Keep scopes, reservations, lease times, relay paths, and exclusions documented. Monitor pool exhaustion and duplicate addressing. Corporate environments with internal DNS must ensure required public `ui.com` names remain resolvable. Do not hard-code public DNS on domain-joined clients when internal resolution is required.

## IPv6

Decide whether IPv6 is deployed, contained, or disabled by policy. If enabled, document prefixes, RA/DHCPv6 behavior, DNS, firewall zones, VPN support, and monitoring. Avoid accidental unmanaged IPv6 connectivity.

## Routing

Prevent overlapping site prefixes. Record static routes, dynamic-routing adjacencies if used, policy-based routing, route priorities, and asymmetric paths. Test return traffic and MTU across every VPN and WAN path.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./09-guest-iot-voice-cameras-and-multicast.md) · [Next](./11-remote-access-site-to-site-vpn-and-sdwan.md)
