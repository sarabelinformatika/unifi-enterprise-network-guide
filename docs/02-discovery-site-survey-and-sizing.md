# 02. Discovery, site survey, and sizing


Start with drawings and a physical walk-through. Document construction materials, ceiling heights, cable paths, racks, patch panels, PoE budgets, UPS runtime, RF interference, neighboring WLANs, outdoor areas, and device density. Validate assumptions with measurements rather than controller graphics alone.

## Discovery checklist

1. Capture ISP handoff, public addressing, MTU, VLAN tags, and failover constraints.
2. Trace uplinks and record speed, optics, LAG, STP role, and single points of failure.
3. Count powered devices and calculate worst-case PoE consumption with headroom.
4. Classify clients by band, Wi-Fi generation, authentication support, mobility, and business criticality.
5. Run passive and active RF surveys at representative load.

## Capacity model

Size for airtime, not only associated-client count. Voice, scanners, dense meeting rooms, and legacy 2.4 GHz devices have different requirements. Prefer additional correctly placed APs and lower transmit power over a few APs at maximum power. Plan 6 GHz only where client capability and cell density justify it.

## Deliverables

Produce an annotated floor plan, cable and rack schedule, device register, channel plan, IP/VLAN plan, PoE budget, bill of materials, and remediation list. Re-survey after installation and after material layout changes.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./01-scope-requirements-and-threat-model.md) · [Next](./03-platform-controller-and-management-architecture.md)
