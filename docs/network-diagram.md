# Network Topology

<img width="1469" height="1024" alt="b2de1f04-0e3c-4f16-83de-5c6c37b9394e" src="https://github.com/user-attachments/assets/e9fed63c-867a-4eb6-b914-d5520e14d6ae" />




| Server    | IP Address   | Role                       |
| --------- | ------------ | -------------------------- |
| Rocky     | 192.168.50.1 | Router, NAT, Firewall      |
| Darwin    | 192.168.50.2 | DHCP Server                |
| Sydney    | 192.168.50.3 | SSH Server, Login Auditing |
| Adelaide  | 192.168.50.4 | Apache, HTTPS, DokuWiki    |
| Gladstone | 192.168.50.5 | Git Server                 |
| Bundaberg | 192.168.50.6 | Backup & Recovery Server   |
| Client1   | 10.10.10.4   | External Test Client       |


## Services:

* Darwin: DHCP with reservations
* Sydney: SSH and login auditing
* Adelaide: Apache, HTTPS, DokuWiki
* Gladstone: Git repository hosting
* Bundaberg: Automated backups and recovery
* Rocky: Routing, NAT, firewall, port forwarding
