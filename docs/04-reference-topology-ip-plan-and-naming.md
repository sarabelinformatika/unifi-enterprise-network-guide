# 04. Reference topology, IP plan, and naming


Create a topology that makes failure domains and trust boundaries obvious. A typical site contains redundant WAN where justified, a gateway, distribution switching, access switches, APs, UPS-backed management, and separate service networks.

## Naming and addressing

Use predictable site/device names such as `BUD-HQ-SW-01` and `BUD-HQ-AP-03`. Reserve summary-friendly RFC1918 blocks per site and avoid overlapping subnets if site-to-site VPN is expected. Keep infrastructure addresses outside dynamic pools and document every reservation.

## Example segmentation

| VLAN | Purpose | Default posture |
|---:|---|---|
| 10 | Management | Admin sources only |
| 20 | Corporate clients | Required internal services |
| 30 | Servers | Explicit application flows |
| 40 | Voice | Call services, DNS, NTP |
| 50 | IoT/building | Deny lateral and admin access |
| 60 | Guest | Internet only, client isolation |
| 70 | Cameras | Recorder and management only |

Do not use VLAN 1 as the general management design. Keep native VLAN use intentional and identical at both ends of every trunk. Record switch port profiles, tagged/untagged membership, and allowed VLAN lists.

## Resilience

Map every dependency: DNS, DHCP, RADIUS, PKI, controller, Internet, VPN, and monitoring. Redundancy that shares one power circuit, uplink, or rack is not an independent failure domain.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./03-platform-controller-and-management-architecture.md) · [Next](./05-switching-vlans-trunks-stp-and-poe.md)
