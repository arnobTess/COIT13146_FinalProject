# Introduction

The current project involves the designing, implementing, testing and documenting of a multi-server Linux Network using virtual machines with Ubuntu Server. The purpose was to create a managed infrastructure that can perform networking, web hosting, versioning, backing up and securing services.

The current network comprises six servers which are connected through the use of a router. In this case, the Rocky Linux OS was configured to work as a router and firewall gateway. Darwin was configured as the DHCP Server whose main purpose is to dynamically assign IP addresses and other relevant networking information. In addition, Gladstone was configured as the Git Server providing the versioning services. Sydney was configured as the SSH Server and provided mechanisms to audit the failed login attempts. Adelaide was configured as the web server hosting the Apache and HTTPS services along with DokuWiki documentation.Security controls were implemented throughout the environment including firewall rules, SSH access restrictions, HTTPS encryption, login auditing and network segmentation. Automated backup scripts and scheduled cron jobs were used to provide data protection and recovery capabilities.

All services were tested to verify correct operation and documentation was maintained using DokuWiki and GitHub version control.

