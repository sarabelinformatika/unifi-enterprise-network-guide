# 03. Platform, controller, and management architecture


Choose deliberately between a UniFi Cloud Gateway, a console-hosted Network application, and a self-hosted UniFi Network Server. The management plane is not the packet-forwarding path for normal switching and access-point traffic, but its loss affects visibility, configuration, guest functions, and operations.

## Design choices

| Model | Strength | Watch point |
|---|---|---|
| Cloud Gateway | Integrated gateway and management | Hardware lifecycle and blast radius |
| CloudKey/console | Appliance-like operations | Capacity, backup, and ownership |
| Self-hosted server | Flexible placement and compute | OS, database, Java, TLS, and backup ownership |

Use stable DNS, NTP, and addressing. Keep device adoption and management reachable across routed sites without exposing inform or administration services broadly to the Internet. Document Layer-3 adoption dependencies and DHCP/DNS discovery mechanisms.

## Administrative model

Maintain named accounts, MFA, minimal roles, two controlled emergency paths, and a tested ownership-transfer procedure. Disable unused remote access paths. Protect device SSH credentials separately from UI accounts and rotate them after personnel or supplier changes.

## Lifecycle

Separate Network application, console OS, gateway, switch, and AP firmware change decisions. Pilot releases on a representative site, read release notes, back up, define success criteria, and avoid simultaneous upgrades across all layers.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./02-discovery-site-survey-and-sizing.md) · [Next](./04-reference-topology-ip-plan-and-naming.md)
