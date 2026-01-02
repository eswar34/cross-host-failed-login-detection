#!/bin/bash

alert=2

ips=$(grep "Failed password" auth.log | awk '{print $NF}' | sort | uniq)

for ip in $ips; do
  host_count=$(grep "Failed password" auth.log | grep "$ip" | awk '{print $1}' | sort | uniq | wc -l)

  if [ "$host_count" -gt "$alert" ]; then
    echo "---------------------------"
    echo "Suspicious IP: $ip"
    echo "Unique hosts targeted: $host_count"
  fi
done
