# VCC Assignment2: GCP Auto-scaling - with Security

By
Amit Kumar (M25AI2126) - MTech AI Executive - IIT Jodhpur

## Overview
- VM Type: e2-micro (2 vCPU, 1 GB memory)
- OS: Debian GNU/Linux 12 (bookworm)
- Auto-scaling: CPU > 60% triggers scale-out
- Min Instances: 1 | Max Instances: 3
- Zones: us-central1-b, us-central1-c, us-central1-f
- Firewall: SSH restricted to 49.36.191.194/32
- IAM: Custom role "VM Viewer Plus"

## Files in this Repository
1- setup.sh
2- cleanup.sh
3- test.sh
