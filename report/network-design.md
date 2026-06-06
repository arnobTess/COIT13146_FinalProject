# Network Design

The network is based on a routed architecture where Rocky acts as the central gateway between the internal network and external clients.

## Server Roles

| Server    | IP Address    | Role                       |
| --------- | ------------- | -------------------------- |
| Rocky     | 192.168.50.1  | Router and Firewall        |
| Darwin    | DHCP Assigned | DHCP Server                |
| Sydney    | 192.168.50.3  | SSH Server                 |
| Adelaide  | 192.168.50.4  | Apache, HTTPS and DokuWiki |
| Gladstone | 192.168.50.5  | Git Server                 |
| Bundaberg | 192.168.50.6  | Backup Server              |
| Client1   | 10.10.10.4    | External Test Client       |

## Network Architecture

Client1 accesses services through Rocky, which performs routing, NAT and firewall filtering. Internal servers communicate using the 192.168.50.0/24 network provided by Darwin DHCP services.

The network was designed to separate internal infrastructure from external access while maintaining secure access to required services.

## DHCP Configuration

Darwin provides DHCP services including:

* Dynamic address allocation
* Gateway assignment
* DNS assignment
* DHCP reservations using MAC addresses

Reserved IP addresses were configured for all critical servers to ensure consistent addressing across reboots.
