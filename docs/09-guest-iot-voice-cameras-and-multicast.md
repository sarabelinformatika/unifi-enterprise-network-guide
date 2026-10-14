# 09. Guest, IoT, voice, cameras, and multicast


Special-purpose networks require purpose-built controls. Guest traffic should reach the Internet without reaching internal networks or other guests. IoT and cameras should reach only their controllers, recorders, update services, DNS, and NTP as required.

## Guest access

Enable network isolation and client isolation where appropriate. Define captive portal ownership, terms, retention, branding, and failure behavior. Rate limits protect capacity but do not replace RF design.

## IoT and cameras

Inventory cloud dependencies and local discovery protocols before blocking traffic. Disable vendor cloud features that are not required. Restrict administrative interfaces and prevent devices from initiating sessions toward corporate clients.

## Voice

Validate LLDP-MED, voice VLAN assignment, DHCP options, SIP/RTP paths, QoS markings, and WAN behavior with the actual provider. QoS cannot create bandwidth and may harm traffic if applied without measurement.

## Multicast

Use IGMP snooping, querier placement, mDNS reflection, and multicast controls only with a documented requirement. Discovery across zones intentionally weakens isolation; expose only required services and test failure modes.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./08-firewall-zones-segmentation-and-egress.md) · [Next](./10-wan-redundancy-routing-dns-dhcp-and-ipv6.md)
