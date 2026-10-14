# 14. Hardening, identity, updates, and supply chain


Protect the management plane as production infrastructure. Use MFA, named accounts, minimal roles, restricted management networks, trusted administration endpoints, and secure recovery paths.

## Baseline

- Keep Owner and Super Admin membership minimal and reviewed.
- Use separate day-to-day and privileged identities.
- Restrict local UI, SSH, inform, SNMP, syslog, and API exposure.
- Rotate device credentials and supplier access after personnel changes.
- Back up before updates and stage changes on a representative site.
- Remove unused port forwards, UPnP, legacy VPNs, WLANs, and accounts.

## Updates

Do not equate automatic updates with controlled patch management. Track release channels, advisories, known issues, hardware support, and rollback constraints. Pilot console, gateway, switch, and AP updates separately when possible.

## Supply chain

Buy through trusted channels, verify device ownership state, factory-reset reused equipment, record serials and firmware, and control who can adopt devices. Review integrations and API clients; tokens should be scoped, rotated, and stored outside source control.

## Evidence

Retain account reviews, configuration exports, change tickets, firmware inventory, scan results, and exception approvals. A hardening control without an owner or verification method will decay.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./13-backup-restore-migration-and-disaster-recovery.md) · [Next](./15-automation-api-change-control-and-testing.md)
