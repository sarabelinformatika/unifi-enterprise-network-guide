# 08. Firewall zones, segmentation, and egress control


Network 9 introduced zone-based firewalling. Build policy from trust relationships and required flows rather than from a growing list of exceptions. Default-deny between sensitive zones, then add named rules with owners and review dates.

## Policy order

1. Preserve established/related traffic where appropriate.
2. Permit management only from dedicated administrative sources.
3. Permit documented application, DNS, NTP, directory, update, and monitoring flows.
4. Isolate guest and IoT networks from internal destinations.
5. Deny and log meaningful residual traffic without creating unusable noise.

Do not assume a VLAN is secure merely because it has a different ID. Enforcement must occur at a routed boundary, gateway, or host firewall. Protect IPv6 as deliberately as IPv4; an IPv4-only rule set leaves a second path ungoverned.

## Egress

Restrict management devices and infrastructure to necessary destinations where operationally feasible. Review port forwards, UPnP, NAT rules, and policy-based routes. Prefer VPN access over publishing administrative interfaces.

## Validation

Test both allowed and denied traffic from representative endpoints. Record source, destination, protocol, expected result, actual result, and evidence. Re-test after firmware or topology changes.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./07-ssid-security-wpa-enterprise-and-radius.md) · [Next](./09-guest-iot-voice-cameras-and-multicast.md)
