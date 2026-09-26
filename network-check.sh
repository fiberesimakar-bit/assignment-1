#!/usr/bin/env bash

host="${1:-google.com}"
ip=$(getent ahostsv4 "$host" | awk 'NR==1 {print $1}')
if [ -z "$ip" ]; then
    echo "Error: could not resolve host: $host"
    exit 1
fi

echo "Host: $host"
echo "Resolved IP: $ip"

if ping -c 1 -W 2 "$host" > /dev/null 2>&1; then
    echo "Status: reachable"
else
    echo "Status: unreachable"
    exit 1
fi

latency=$(ping -c 1 -W 2 "$host" 2>/dev/null | awk -F'time=' '/time=/{print $2}' | awk '{print $1}')
echo "Latency: ${latency} ms"
