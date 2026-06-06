# Testing Results and Evidence Index

## Overview

This document provides an index of all screenshots collected during implementation and testing. The evidence demonstrates successful deployment, configuration, validation, security testing, backup operations, and recovery procedures across the project infrastructure.

---

# Phase 1 – Network Infrastructure

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 1 | 05-rocky-router-ip.png | Verification of Rocky router network interfaces and IP addressing. |
| Figure 2 | rocky-router-network-configuration.png | Rocky router network configuration validation. |
| Figure 3 | 11-darwin-internet-connectivity.png | Verification of Internet connectivity through the routed network. |
| Figure 4 | 13-dhcp-service-running.png | Confirmation that the DHCP service is operational. |
| Figure 5 | darwin-dhcp-configuration.png | DHCP server configuration and address allocation settings. |
| Figure 6 | network-connectivity-successful-ping.png | Successful connectivity testing between network devices. |

---

# Phase 2 – Core Services

## Sydney SSH Server

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 7 | sydney-network-configuration.png | Sydney network interface configuration. |
| Figure 8 | 15-sydney-ssh-running.png | SSH service operational status. |
| Figure 9 | 16-sydney-users-created.png | User account creation and management. |
| Figure 10 | 17-sydney-password-policy.png | Password policy implementation. |
| Figure 11 | 19-sydney-ssh-test.png | Successful SSH connectivity testing. |
| Figure 12 | 20-sydney-password-policy.png | Password policy verification. |

## Gladstone Git Server

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 13 | gladstone-git-installation.png | Git server installation. |
| Figure 14 | gladstone-git-repository-created.png | Creation of the bare Git repository. |
| Figure 15 | 22-gladstone-bare-repository.png | Verification of repository structure. |
| Figure 16 | gladstone-ssh-access-test.png | SSH access validation for Git operations. |
| Figure 17 | gladstone-git-clone-success.png | Successful repository clone operation. |
| Figure 18 | gladstone-initial-git-commit.png | Initial commit and repository usage. |
| Figure 19 | gladstone-git-repository-verification.png | Repository verification and validation. |

## Adelaide Web Services

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 20 | adelaide-apache-service-running.png | Apache service operational status. |
| Figure 21 | adelaide-web-root-verification.png | Verification of deployed web content. |
| Figure 22 | adelaide-virtual-host-configuration.png | Apache virtual host configuration. |
| Figure 23 | adelaide-dokuwiki-installation.png | DokuWiki installation process. |
| Figure 24 | adelaide-dokuwiki-apache-validation.png | Validation of DokuWiki through Apache. |

## DokuWiki Documentation

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 25 | dokuwiki-password-policy-page.png | Password policy documentation page. |
| Figure 26 | dokuwiki-user-access-page.png | User access management documentation. |
| Figure 27 | dokuwiki-certificate-management-page.png | Certificate management documentation. |
| Figure 28 | dokuwiki-project-review-page.png | Project review and documentation page. |

---

# Phase 3 – Security Controls

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 29 | rocky-firewall-rules-loaded.png | Firewall rule implementation and verification. |
| Figure 30 | rocky-nat-rules-loaded.png | NAT configuration validation. |
| Figure 31 | rocky-port-forwarding-rules.png | Port forwarding configuration. |
| Figure 32 | rocky-ping-router-allowed.png | ICMP traffic testing. |
| Figure 33 | rocky-ssh-allowed.png | SSH access validation through firewall controls. |
| Figure 34 | rocky-web-port-forward-working.png | Web traffic forwarding verification. |
| Figure 35 | rocky-direct-ssh-blocked.png | Demonstration of restricted direct access. |
| Figure 36 | 18-sydney-login-audit.png | Login auditing implementation. |
| Figure 37 | sydney-failed-login-records.png | Failed login attempt detection. |
| Figure 38 | sydney-login-audit-report.png | Generated login audit report. |

---

# Phase 4 – Backup and Recovery

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 39 | bundaberg-network.png | Bundaberg backup server configuration. |
| Figure 40 | bundaberg-ssh-trust.png | SSH trust relationship used for backups. |
| Figure 41 | bundaberg-crontab-config.png | Automated backup scheduling using cron. |
| Figure 42 | bundaberg-backup-folders.png | Backup directory structure. |
| Figure 43 | bundaberg-adelaide-backup-after-test-file.png | Successful backup validation. |
| Figure 44 | ssh-backups-exists.png | Verification of backup existence. |
| Figure 45 | adelaide-recovery-test-file-created.png | Creation of recovery test data. |
| Figure 46 | adelaide-recovery-test-restored.png | Successful restoration of backed-up data. |
| Figure 47 | darwin-dhcp-service-after-reservations.png | Verification of DHCP reservations after implementation. |

---

# Network Topology

| Figure | Evidence | Description |
|----------|----------|----------|
| Figure 48 | network-diagram.png | Final network topology showing all servers, services and addressing scheme. |

---

## Summary

A total of 48 pieces of evidence were collected during implementation and testing. The evidence confirms successful deployment of routing, DHCP, SSH services, Git repository hosting, web services, security controls, backup automation, recovery procedures and documentation management across the project environment.
