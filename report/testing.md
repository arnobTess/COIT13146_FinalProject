# Testing and Validation

## Overview

Comprehensive testing was performed throughout the project to verify that all implemented services operated correctly. Testing included network connectivity, service availability, security controls, backup operations and recovery procedures.

All tests were completed successfully and documented using screenshots, configuration files and system logs.

---

## Network Connectivity Testing

The internal network was tested to confirm communication between all servers.

### Tests Performed

* IP address verification
* Gateway connectivity
* Inter-server communication
* Internet connectivity through Rocky

### Results

| Test                  | Result     |
| --------------------- | ---------- |
| Internal Connectivity | Successful |
| Gateway Connectivity  | Successful |
| Internet Access       | Successful |

---

## DHCP Testing

Darwin DHCP services were tested to ensure hosts received valid network configuration.

### Tests Performed

* DHCP service validation
* IP address allocation
* Gateway assignment
* DNS assignment
* DHCP reservation verification

### Results

| Test                 | Result     |
| -------------------- | ---------- |
| DHCP Service Running | Successful |
| Address Allocation   | Successful |
| DHCP Reservations    | Successful |

---

## SSH Testing

Sydney SSH services were tested using both password and key-based authentication.

### Tests Performed

* SSH connectivity
* Key-based authentication
* Remote administration
* Login auditing

### Results

| Test               | Result     |
| ------------------ | ---------- |
| SSH Access         | Successful |
| Key Authentication | Successful |
| Login Auditing     | Successful |

---

## Git Server Testing

Gladstone Git services were tested using standard Git operations.

### Tests Performed

* Repository cloning
* Pull operations
* Push operations
* SSH repository access

### Results

| Test  | Result     |
| ----- | ---------- |
| Clone | Successful |
| Pull  | Successful |
| Push  | Successful |

---

## Web Server Testing

Adelaide web services were tested through both HTTP and HTTPS connections.

### Tests Performed

* Apache service validation
* HTTP access
* HTTPS access
* SSL certificate verification
* DokuWiki accessibility

### Results

| Test            | Result     |
| --------------- | ---------- |
| Apache Service  | Successful |
| HTTP Access     | Successful |
| HTTPS Access    | Successful |
| DokuWiki Access | Successful |

---

## Firewall Testing

Rocky firewall controls were tested using an external client machine.

### Tests Performed

* HTTP forwarding
* HTTPS forwarding
* SSH forwarding
* ICMP blocking
* Direct access blocking

### Results

| Test                            | Result     |
| ------------------------------- | ---------- |
| HTTP Forwarding                 | Successful |
| HTTPS Forwarding                | Successful |
| SSH Forwarding                  | Successful |
| ICMP Blocking                   | Successful |
| Direct Internal Access Blocking | Successful |

---

## Backup Testing

Bundaberg backup services were tested to verify successful backup operations.

### Tests Performed

* Backup script execution
* Cron scheduling
* Backup report generation
* Backup validation

### Results

| Test                | Result     |
| ------------------- | ---------- |
| Backup Scripts      | Successful |
| Cron Automation     | Successful |
| Backup Verification | Successful |

---

## Recovery Testing

Recovery procedures were tested by restoring previously backed-up files.

### Tests Performed

* Test file creation
* Backup execution
* File deletion
* File restoration
* Content verification

### Results

| Test                 | Result     |
| -------------------- | ---------- |
| Recovery Procedure   | Successful |
| File Restoration     | Successful |
| Content Verification | Successful |

---

## Summary

All planned tests were completed successfully. Results confirmed that the network infrastructure, security controls, backup systems and documentation platform operated according to the project requirements.

The testing process demonstrated that the implemented solution is functional, secure and capable of supporting ongoing operational requirements.
