# 01. Scope, requirements, and threat model


Define business services before choosing hardware. Inventory sites, users, endpoints, voice, cameras, building systems, guest traffic, cloud dependencies, public services, Internet circuits, support hours, and compliance constraints. Record owners and acceptable outage for each dependency.

## Outcomes

- A signed scope and site inventory
- Availability, latency, capacity, and coverage objectives
- Trust boundaries and data flows
- Threat scenarios with accountable mitigations
- Explicit exclusions and accepted risks

## Threat model

Model stolen administrator credentials, compromised clients, rogue or reset devices, malicious guests, lateral movement from IoT, exposed management interfaces, configuration mistakes, failed firmware, ISP outages, power loss, DNS/DHCP failure, controller loss, and physical access to switch ports. Treat an Owner or Super Admin account as a high-impact identity.

## Service objectives

Use measurable targets: coverage at work areas, minimum client RSSI, acceptable channel utilization, DHCP success rate, WAN failover time, maximum packet loss, and recovery time for the Network application. Avoid promising seamless roaming: the client ultimately decides when to roam.

## Safety boundary

This guide uses examples, not universal production values. Export a backup, record the current topology, maintain out-of-band access, and define rollback before changing gateways, trunks, native VLANs, firewall zones, RADIUS, STP, or WAN addressing.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[README](../README.md) · [Next](./02-discovery-site-survey-and-sizing.md)
