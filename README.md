# COIT13146 Final Project

## Project Overview

This particular project entailed the creation, deployment, and testing of a multi-server Linux network. This includes capabilities for routing, DHCP services, secure remote administration, web hosting, source code versioning, backups, and documentation management.

The network was set up on Ubuntu Server virtual machines and configured to provide the basics of networking and systems administration.

---

## Network Topology

### Network Addressing

| Device    | IP Address   | Role                          |
| --------- | ------------ | ----------------------------- |
| Rocky     | 192.168.50.1 | Router, NAT and Firewall      |
| Darwin    | 192.168.50.2 | DHCP Server                   |
| Sydney    | 192.168.50.3 | SSH Server and Login Auditing |
| Adelaide  | 192.168.50.4 | Apache, HTTPS and DokuWiki    |
| Gladstone | 192.168.50.5 | Git Server                    |
| Bundaberg | 192.168.50.6 | Backup and Recovery Server    |
| Client1   | 10.10.10.4   | External Test Client          |

Network topology diagram :

<img width="1469" height="1024" alt="b2de1f04-0e3c-4f16-83de-5c6c37b9394e" src="https://github.com/user-attachments/assets/aef5b75b-1364-4b91-9843-955e73178393" />


---

## Server Responsibilities

### Rocky

* Routing
* NAT
* Firewall
* Port Forwarding
* Security Filtering

### Darwin

* DHCP Address Allocation
* DHCP Reservations
* DNS Distribution

### Sydney

* SSH Administration
* User Management
* Login Auditing
* Security Monitoring

### Adelaide

* Apache Web Server
* HTTPS Services
* SSL Certificate Management
* DokuWiki Documentation Platform

### Gladstone

* Git Repository Hosting
* Version Control Services
* SSH Repository Access

### Bundaberg

* Automated Backups
* Cron Scheduling
* Recovery Testing
* Backup Verification

---

## Repository Structure

```text
configs/
├── adelaide
├── bundaberg
├── darwin
├── gladstone
├── rocky
└── sydney

docs/
├── network-diagram.png
└── testing-results.md

report/
├── introduction.md
├── network-design.md
├── server-configurations.md
├── security.md
├── backup-recovery.md
├── testing.md
└── conclusion.md

screenshots/
├── phase1
├── phase2
├── phase3
└── phase4

scripts/
├── backups
├── firewall
└── security
```

---

## Testing Summary

The following services were successfully deployed and tested:

* Network Routing
* DHCP Services
* SSH Services
* Login Auditing
* Git Repository Hosting
* Apache Web Hosting
* HTTPS Encryption
* DokuWiki Documentation
* Firewall Rules
* Port Forwarding
* Automated Backups
* Recovery Procedures

Detailed evidence is available in:

```text
docs/testing-results.md
```

---

## Project Documentation

Additional project documentation can be found in:

```text
report/
```

Screenshots and implementation evidence are located in:

```text
screenshots/
```

---

## Group Details

| Name      | Student ID | Responsibilities                 |
| --------- | ---------- | -------------------------------- |
| Md Monirul Haque Arnob | 12286988 | Entire Project |

---

## Project Status

All planned infrastructure, security, backup and documentation requirements were successfully implemented, tested and validated.
