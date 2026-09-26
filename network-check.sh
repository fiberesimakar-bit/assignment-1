#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "Error: hostname or IP address is required."
    exit 2
fi

host="$1"

port="${2:-}"

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

if [ -n "$port" ]; then
    if ! [[ "$port" =~ ^[0-9]+$ ]]; then
        echo "Error: port must be a number."
        exit 2
    fi

    if [ "$port" -lt 1 ] || [ "$port" -gt 65535 ]; then
        echo "Error: port must be between 1 and 65535."
        exit 2
    fi
fi

echo "Network Interfaces:"
ip -brief address

if [ -n "$port" ]; then
    if timeout 3 bash -c "</dev/tcp/$host/$port" 2>/dev/null; then
        echo "TCP port $port: open"
    else
        echo "TCP port $port: closed or unreachable"
        exit 1
    fi
fi