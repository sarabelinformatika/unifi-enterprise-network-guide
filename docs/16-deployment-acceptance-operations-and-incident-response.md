# 16. Deployment, acceptance, operations, and incident response


Turn the design into a controlled service. Define responsibilities across business owner, network owner, security, ISP, cabling contractor, and support provider. Use the deployment workbook and acceptance record in this repository.

## Deployment gates

1. Scope, diagrams, IP plan, RF design, and bill of materials approved
2. Rack, power, UPS, cooling, cabling, labeling, and Internet ready
3. Management, identity, backup, and monitoring operational
4. Switching, WLAN, segmentation, VPN, and dependencies tested
5. Security review and exception register complete
6. Recovery test and operational handover accepted

## Acceptance evidence

Capture firmware and configuration versions, topology, cable results, PoE load, RF survey, performance tests, firewall tests, WAN failover, VPN, authentication, backup/restore, alerts, and administrator access review. Record failures and retest results.

## Incident response

Classify loss of connectivity, credential compromise, rogue device, loop/broadcast storm, DHCP/DNS failure, configuration loss, and suspected exploitation. Preserve logs and configuration evidence, contain the affected zone or account, use controlled rollback, and communicate business impact.

## Operating cadence

Daily: service and alert review. Weekly: backup status and change review. Monthly: capacity, accounts, firmware, and exceptions. Quarterly: restore, failover, access, RF, and rule review. Annually: architecture, lifecycle, supplier, and business-objective reassessment.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./15-automation-api-change-control-and-testing.md) · [README](../README.md)
