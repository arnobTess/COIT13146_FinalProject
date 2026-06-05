#!/bin/bash

# Rocky firewall rules for cqunix project

EXT_IF="enp0s3"
INT_IF="enp0s8"

INTERNAL_NET="192.168.50.0/24"
ADELAIDE_IP="192.168.50.4"
SYDNEY_IP="192.168.50.3"

# Change this later to your external test client IP
ALLOWED_SSH_EXTERNAL_IP="10.10.10.4"

# Clear old rules
iptables -F
iptables -t nat -F
iptables -X

# Default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT ACCEPT

# Allow loopback
iptables -A INPUT -i lo -j ACCEPT

# Allow established traffic
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -m state --state ESTABLISHED,RELATED -j ACCEPT

# Allow ping to Rocky
iptables -A INPUT -p icmp -j ACCEPT

# Allow SSH to Rocky from internal network and host-only management
iptables -A INPUT -p tcp -s 192.168.50.0/24 --dport 22 -j ACCEPT
iptables -A INPUT -p tcp -s 192.168.56.0/24 --dport 22 -j ACCEPT

# NAT for internal network to Internet
iptables -t nat -A POSTROUTING -s $INTERNAL_NET -o $EXT_IF -j MASQUERADE

# Allow internal network to access Internet
iptables -A FORWARD -i $INT_IF -o $EXT_IF -s $INTERNAL_NET -j ACCEPT

# Block ICMP between internal and external
iptables -A FORWARD -p icmp -i $EXT_IF -o $INT_IF -j DROP
iptables -A FORWARD -p icmp -i $INT_IF -o $EXT_IF -j DROP

# Allow external web access to Adelaide
iptables -A FORWARD -p tcp -i $EXT_IF -o $INT_IF -d $ADELAIDE_IP --dport 80 -j ACCEPT
iptables -A FORWARD -p tcp -i $EXT_IF -o $INT_IF -d $ADELAIDE_IP --dport 443 -j ACCEPT

# Allow SSH to Sydney from one external IP only
iptables -A FORWARD -p tcp -i $EXT_IF -o $INT_IF -s $ALLOWED_SSH_EXTERNAL_IP -d $SYDNEY_IP --dport 22 -j ACCEPT

# Block all other external access to internal network
iptables -A FORWARD -i $EXT_IF -o $INT_IF -d $INTERNAL_NET -j DROP

# Port forward HTTP/HTTPS to Adelaide
iptables -t nat -A PREROUTING -i $EXT_IF -p tcp --dport 80 -j DNAT --to-destination $ADELAIDE_IP:80
iptables -t nat -A PREROUTING -i $EXT_IF -p tcp --dport 443 -j DNAT --to-destination $ADELAIDE_IP:443

# Port forward SSH to Sydney
iptables -t nat -A PREROUTING -i $EXT_IF -p tcp -s $ALLOWED_SSH_EXTERNAL_IP --dport 2222 -j DNAT --to-destination $SYDNEY_IP:22

echo "Rocky firewall rules applied."
