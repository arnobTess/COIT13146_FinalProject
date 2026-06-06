# Security Implementation

## Overview

Security was a major consideration throughout the design and implementation of the network. Multiple layers of security controls were deployed to protect systems, services and data from unauthorized access.

---

## Firewall Security

Rocky was configured as the central firewall and security gateway using iptables. Default deny policies were implemented where appropriate and only required services were allowed.

### Implemented Controls

* HTTP traffic forwarded to Adelaide
* HTTPS traffic forwarded to Adelaide
* SSH traffic forwarded to Sydney
* ICMP traffic restricted between external and internal networks
* Unauthorised direct access to internal servers blocked

Firewall rules were tested using an external client machine to verify both allowed and denied traffic scenarios.

---

## SSH Security

Sydney was configured as the primary SSH administration server.

### Implemented Controls

* OpenSSH Server installed
* Key-based authentication enabled
* Secure remote administration
* Centralised SSH access management

SSH access was successfully tested from authorised systems.

---

## HTTPS Security

Adelaide was configured to provide encrypted web services using SSL/TLS.

### Implemented Controls

* Self-signed SSL certificate deployed
* HTTPS virtual host configured
* Encrypted communication between clients and web services

HTTPS connectivity was verified using both browser access and command-line testing.

---

## Login Auditing

To improve security monitoring, an auditing solution was implemented on Sydney.

### Features

* Failed login monitoring
* SSH attack detection
* Login audit reporting script
* Historical login review using system logs

Failed login attempts were generated and successfully detected by the auditing system.

---

## Network Segmentation

The network was separated into internal and external segments.

### Benefits

* Reduced attack surface
* Controlled access to internal services
* Improved management of network traffic
* Enhanced overall security posture

External users were only able to access approved services through Rocky.

---

## Security Validation

The following tests were performed:

| Test                            | Result     |
| ------------------------------- | ---------- |
| HTTP Access                     | Successful |
| HTTPS Access                    | Successful |
| SSH Access                      | Successful |
| ICMP Blocking                   | Successful |
| Direct Internal Access Blocking | Successful |
| Login Auditing                  | Successful |

The results confirm that all implemented security controls operated as expected.
