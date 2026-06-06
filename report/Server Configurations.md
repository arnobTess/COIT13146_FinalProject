# Server Configurations

## Rocky – Router and Firewall

Rocky was configured as the central router and security gateway for the network. The server provides packet forwarding between the internal network and external clients through Network Address Translation (NAT). Firewall rules were implemented using iptables to control inbound and outbound traffic.

### Services Implemented

* IP forwarding
* NAT (MASQUERADE)
* Firewall filtering
* HTTP/HTTPS port forwarding to Adelaide
* SSH port forwarding to Sydney
* ICMP filtering between internal and external networks

### Configuration Files

* `configs/rocky/rocky-netplan.yaml`
* `scripts/firewall/rocky-firewall-rules.sh`

---

## Darwin – DHCP Server

Darwin was configured as the DHCP server responsible for assigning IP addresses and network configuration to hosts on the internal network.

### Services Implemented

* DHCP address allocation
* Gateway assignment
* DNS server assignment
* DHCP reservations using MAC addresses

### Configuration Files

* `configs/darwin/dhcpd.conf`
* `configs/darwin/darwin-netplan.yaml`

---

## Sydney – SSH Server and Auditing

Sydney provides secure remote administration through SSH. Key-based authentication was configured to improve security. An auditing script was developed to generate reports of unsuccessful login attempts.

### Services Implemented

* OpenSSH Server
* Key-based authentication
* Failed login monitoring
* Security audit reporting

### Configuration Files

* `configs/sydney/sshd_config`
* `configs/sydney/sydney-netplan.yaml`
* `scripts/security/sydney-login-audit.sh`

---

## Gladstone – Git Server

Gladstone was configured as a centralized Git server using a bare repository. SSH authentication was used to provide secure repository access.

### Services Implemented

* Git server
* Bare repository hosting
* SSH authentication
* Repository cloning, pulling and pushing

### Configuration Files

* `configs/gladstone/gladstone-netplan.yaml`

---

## Adelaide – Web Server and Documentation Platform

Adelaide hosts the organisation’s web services. Apache was configured with both HTTP and HTTPS virtual hosts. A self-signed SSL certificate was deployed to provide encrypted communication. DokuWiki was installed to provide system documentation.

### Services Implemented

* Apache Web Server
* HTTPS using SSL/TLS
* Virtual Hosts
* DokuWiki Documentation System

### Configuration Files

* `configs/adelaide/adelaide.conf`
* `configs/adelaide/adelaide-ssl.conf`
* `configs/adelaide/dokuwiki.conf`
* `configs/adelaide/adelaide.crt`
* `configs/adelaide/adelaide-netplan.yaml`

---

## Bundaberg – Backup and Recovery Server

Bundaberg was configured as the backup server responsible for protecting critical system data. Automated backup scripts were developed using rsync and scheduled using cron. Recovery procedures were tested to verify successful restoration of deleted files.

### Services Implemented

* Automated backups
* Cron scheduling
* Backup reporting
* Recovery testing

### Configuration Files

* `configs/bundaberg/bundaberg-netplan.yaml`
* `configs/bundaberg/bundaberg-crontab.txt`
* `scripts/backups/backup-adelaide.sh`
* `scripts/backups/backup-sydney.sh`
* `scripts/backups/backup-gladstone.sh`
