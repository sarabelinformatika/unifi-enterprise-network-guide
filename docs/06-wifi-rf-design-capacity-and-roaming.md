# 06. Wi-Fi RF design, capacity, and roaming


Good Wi-Fi is an RF design outcome, not an automatic controller setting. Survey first, then tune channel width, channel reuse, transmit power, minimum data rates, and roaming assistance for the client population.

## Band guidance

- 2.4 GHz: preserve for legacy/IoT needs; normally use 20 MHz and non-overlapping channels.
- 5 GHz: primary enterprise band; choose width based on density and spectrum availability.
- 6 GHz: high-capacity option with shorter range and modern security/client requirements.

Aim for at least -67 dBm for demanding business mobility unless the validated application target differs. Ubiquiti notes that -70 dBm or better is required for stable connectivity and -65 dBm or better is recommended in many cases. Treat these as design references, then test real clients.

## Roaming

802.11k/v/r features can improve transitions but must be tested with scanners, voice devices, older drivers, and IoT clients. Minimum RSSI is a hard intervention and can create disconnect loops; use it only after coverage and power are correct. Prefer measured cell overlap and client-compatible BSS transition behavior.

## Acceptance

Test coverage, SNR, channel utilization, latency, loss, throughput, roaming, voice quality, captive portal, and authentication at representative locations and load. Preserve survey evidence and controller screenshots with the acceptance record.


## Exit criteria

- Configuration and evidence match the approved design.
- Monitoring and rollback are available.
- Exceptions have an owner, expiry, and compensating control.

---

[Previous](./05-switching-vlans-trunks-stp-and-poe.md) · [Next](./07-ssid-security-wpa-enterprise-and-radius.md)
