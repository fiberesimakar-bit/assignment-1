#!/usr/bin/env bash

echo "Hostname: $(hostname)"
echo "User: $(whoami)"
echo "Date/Time: $(date)"
echo "Operating System: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "CPU: $(lscpu | grep 'Model name' | cut -d: -f2 | xargs)"
echo "Memory:"
free -h
echo "Working Directory: $(pwd)"
