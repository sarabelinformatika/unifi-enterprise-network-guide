# 12. Monitoring, logging, alerting, and capacity


Monitor service outcomes, not just device reachability. Combine UniFi telemetry with independent checks for Internet, DNS, DHCP, RADIUS, VPN, gateway paths, switch uplinks, PoE, AP health, and critical applications.

## Signals

- Device disconnects, adoption loops, firmware failures, and configuration errors
- WAN latency, loss, jitter, availability, and failover state
- Uplink errors, discards, STP changes, loops, and saturation
- AP channel utilization, retries, interference, client experience, and roaming
- PoE budget, temperature, UPS state, and power events
- Authentication failures, admin changes, VPN events, and IDS/IPS alerts

Send logs to a protected remote destination where retention and investigation require it. Normalize time with reliable NTP. Avoid collecting credentials, portal form data, or unnecessary personal identifiers.

## Alert quality

Every alert needs severity, owner, context, runbook, suppression logic, and closure evidence. Correlate a site-wide power or WAN event to avoid one ticket per device. Review capacity trends before thresholds become incidents.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./11-remote-access-site-to-site-vpn-and-sdwan.md) · [Next](./13-backup-restore-migration-and-disaster-recovery.md)
