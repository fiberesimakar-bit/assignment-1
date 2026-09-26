#!/usr/bin/env bash

LOG_FILE="logs/system.log"

log_message() {
    timestamp=$(date '+%Y-%m-%d %H:%M:%S')
    echo "[$timestamp] $1" >> "$LOG_FILE"
}
