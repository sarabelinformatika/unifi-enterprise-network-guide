# 15. Automation, API, change control, and testing


Automation reduces drift only when the interface, version, and failure behavior are controlled. Prefer supported product workflows. Treat undocumented endpoints as unstable and isolate their use behind versioned tooling and tests.

## Change record

Every material change should state objective, affected sites/devices, prerequisites, backup reference, exact implementation, validation, rollback trigger, rollback procedure, owner, and approval. High-risk examples include management VLANs, trunks, STP, WAN, firewall zones, RADIUS, and controller migration.

## Safe automation

Start with read-only inventory. Never embed credentials in scripts or Git. Use a secrets manager or runtime environment, minimum privileges, timeouts, rate limits, structured logs, and explicit target selection. Require human approval for destructive or broad configuration changes.

## Test ladder

1. Static validation and peer review
2. Lab or isolated site
3. Representative pilot group
4. Staged production rollout
5. Post-change observation and acceptance

This repository's scripts are intentionally read-only. They inspect reachability, TLS, DNS, ports, and exported inventory without changing UniFi configuration.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./14-hardening-identity-updates-and-supply-chain.md) · [Next](./16-deployment-acceptance-operations-and-incident-response.md)
