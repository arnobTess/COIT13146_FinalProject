# Backup and Recovery

## Overview

Data protection and service recovery were implemented through a dedicated backup server named Bundaberg. Automated backup scripts were developed to protect critical services and configuration files hosted on the network.

The objective was to ensure that important data could be restored in the event of accidental deletion, corruption or system failure.

---

## Backup Architecture

Bundaberg was configured as the central backup server. Backups were collected from multiple servers using rsync over SSH.

### Protected Systems

* Sydney (SSH Server)
* Gladstone (Git Server)
* Adelaide (Web Server and DokuWiki)

Each backup operation stored files in a timestamped directory structure to allow recovery of historical versions.

---

## Backup Automation

Three backup scripts were developed:

* `backup-sydney.sh`
* `backup-gladstone.sh`
* `backup-adelaide.sh`

The scripts perform the following actions:

1. Connect to the remote server using SSH.
2. Copy files using rsync.
3. Store data in timestamped backup directories.
4. Generate backup reports.
5. Log backup activity for auditing purposes.

---

## Scheduled Backups

Automated execution was implemented using cron.

### Cron Features

* Scheduled backup execution
* Automatic report generation
* Reduced administrative overhead
* Consistent backup intervals

The cron service was verified to ensure scheduled jobs executed successfully.

---

## Backup Verification

Backup success was verified through:

* rsync output reports
* Directory inspection
* Backup log review
* File existence validation

Successful backup operations confirmed that protected data was correctly transferred to Bundaberg.

---

## Recovery Testing

Recovery testing was performed to verify that backed-up data could be restored successfully.

### Recovery Procedure

1. Create a test file on the source server.
2. Execute a backup operation.
3. Delete the original file.
4. Restore the file from Bundaberg.
5. Verify file contents.

### Results

Recovery testing successfully restored deleted files from backup storage. File contents matched the original data, confirming the integrity of the backup and recovery process.

---

## Backup Security

Security measures included:

* SSH-based communication
* Restricted access to backup storage
* Controlled execution through cron
* Backup reporting and verification

These controls help ensure backup confidentiality and integrity.

---

## Validation Results

| Test                    | Result     |
| ----------------------- | ---------- |
| Backup Script Execution | Successful |
| Cron Automation         | Successful |
| Backup Verification     | Successful |
| File Recovery           | Successful |
| Recovery Validation     | Successful |

The results demonstrate that the backup and recovery solution meets the project requirements and provides reliable protection for critical services and data.
