# Security control catalog

| Control | Expected state | Evidence |
|---|---|---|
| Named administration | Shared accounts prohibited | Admin export/review |
| MFA | Enabled for privileged UI accounts | Account settings |
| Management isolation | Admin sources only | Zone rules and tests |
| Corporate WLAN | Enterprise auth where feasible | WLAN/RADIUS configuration |
| Guest/IoT isolation | No unsolicited internal access | Bidirectional test record |
| Device credentials | Unique, rotated, protected | Rotation record |
| Backup | Automated, off-device, restore-tested | Backup and recovery record |
| Updates | Staged and approved | Change tickets |
| Logging | Time-synchronized and retained | Collector evidence |
| Recovery | Two controlled admin recovery paths | Exercise record |
