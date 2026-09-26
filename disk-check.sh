#!/usr/bin/env bash

threshold="$1"

if [ -z "$threshold" ]; then
    echo "Error: threshold is required."
    exit 2
fi

if ! [[ "$threshold" =~ ^[0-9]+$ ]]; then
    echo "Error: threshold must be a number."
    exit 2
fi

if [ "$threshold" -lt 1 ] || [ "$threshold" -gt 100 ]; then
    echo "Error: threshold must be between 1 and 100."
    exit 2
fi

path="${2:-/}"

if [ ! -d "$path" ]; then
    echo "Error: path does not exist or is not a directory."
    exit 2
fi

usage=$(df -P "$path" | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk usage: ${usage}%"

if [ "$usage" -lt "$threshold" ]; then
    echo "Disk usage is below the threshold."
    exit 0
else
    echo "Warning: disk usage has reached or exceeded the threshold."
    exit 1
fi