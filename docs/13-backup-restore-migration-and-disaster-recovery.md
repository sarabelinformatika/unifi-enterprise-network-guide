# 13. Backup, restore, migration, and disaster recovery


Back up the management configuration before upgrades and material changes. UniFi distinguishes full system backups on supported consoles from Network-application backups used especially for self-hosted migrations.

## Backup policy

Define automated frequency, retention, encryption, off-device copy, owner, and restore-test schedule. A backup stored only on the same console is not sufficient for console loss or administrative compromise.

## Recovery dependencies

Record owner accounts, MFA recovery, device credentials, SSH access, DNS, NTP, certificates, WAN details, inform/adoption behavior, and exact platform/version requirements. Store sensitive recovery material in an approved secrets system.

## Restore test

Use a controlled environment. Validate backup readability, login, site inventory, networks, WLANs, firewall rules, VPN configuration, and device adoption strategy without creating a duplicate active controller. Measure recovery time and update the runbook.

## Migration

Read current Ubiquiti migration requirements. Back up source and destination, align supported versions, move ownership deliberately, and avoid running two authoritative controllers against the same devices. Maintain a rollback window until acceptance is complete.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./12-monitoring-logging-alerting-and-capacity.md) · [Next](./14-hardening-identity-updates-and-supply-chain.md)
