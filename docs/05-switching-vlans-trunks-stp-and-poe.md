# 05. Switching, VLANs, trunks, STP, and PoE


Switching failures often originate from inconsistent trunks, native VLAN mismatches, loops, unmanaged downstream switches, or exhausted PoE budgets. Standardize port profiles by device class and review overrides.

## Layer 2 baseline

- Define the STP root and secondary root explicitly.
- Use RSTP unless a validated interoperability requirement dictates otherwise.
- Protect edge ports where supported; never enable loop-prone features blindly.
- Restrict trunk VLANs to those required downstream.
- Disable or quarantine unused access ports.
- Document LAG members and ensure both ends use compatible settings.

## PoE engineering

Compare switch budget with the maximum draw of APs, phones, cameras, and auxiliaries. Include cold-start peaks and future growth. Validate cable quality and distance when high-power devices reset or negotiate poorly.

## Change method

For trunk or management-VLAN changes, schedule a console or local recovery path. Change one side at a time only when the intermediate state remains reachable; otherwise use a coordinated cutover. Verify MAC learning, VLAN membership, STP state, uplink errors, PoE draw, and client leases.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./04-reference-topology-ip-plan-and-naming.md) · [Next](./06-wifi-rf-design-capacity-and-roaming.md)
