#!/bin/bash

echo "===== Sydney Failed Login Audit Report ====="
echo "Generated on: $(date)"
echo
echo "Recent failed login attempts:"
echo "------------------------------------------"

grep "Failed password" /var/log/auth.log | tail -20

echo
echo "Summary by source IP:"
echo "------------------------------------------"

grep "Failed password" /var/log/auth.log | awk '{print $(NF-3)}' | sort | uniq -c

echo
echo "Summary by attempted username:"
echo "------------------------------------------"

grep "Failed password" /var/log/auth.log | awk '
/invalid user/ {print $(NF-5)}
!/invalid user/ {print $(NF-5)}
' | sort | uniq -c
