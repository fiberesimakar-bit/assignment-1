# Linux System Monitoring and Network Utility Scripts

## Project Overview

This project contains Bash scripts created to practice Linux system administration, monitoring, networking, logging, and Git version control.

The project was developed in a Linux environment using WSL2.

## Scripts

### 1. system-info.sh

Displays basic system information, including:

- Hostname
- Current user
- Date and time
- Operating system
- Kernel version
- System uptime
- CPU information
- Memory usage
- Current working directory

Run:

    ./system-info.sh

### 2. disk-check.sh

Checks disk usage for a specified path and compares the usage against a user-defined threshold.

Usage:

    ./disk-check.sh <threshold> [path]

Example:

    ./disk-check.sh 80

The script displays the current disk usage and reports whether it is below or has reached the specified threshold.

### 3. network-check.sh

Checks network connectivity to a hostname or IP address.

It can:

- Resolve the hostname
- Check whether the host is reachable
- Display latency
- Display network interfaces
- Check whether a specified TCP port is open

Usage:

    ./network-check.sh <hostname-or-IP> [port]

Example:

    ./network-check.sh google.com 443

### 4. log.sh

Provides a simple logging helper that records timestamped messages.

Example:

    ./log.sh "Testing the logging system"

Logs are stored in:

    logs/system.log

## Logging

The monitoring scripts write timestamped entries to the system log.

Example:

    [2026-09-26 09:27:08] System information script started
    [2026-09-26 09:27:55] Disk check script started
    [2026-09-26 09:28:45] Network check script started

## Testing

The scripts were tested successfully.

### System information

    ./system-info.sh

The script successfully displayed system information.

### Disk usage

    ./disk-check.sh 80

Example result:

    Disk usage: 1%
    Disk usage is below the threshold.

### Network connectivity

    ./network-check.sh google.com 443

The test successfully resolved and reached Google and confirmed that TCP port 443 was open.

### Syntax checking

All scripts were checked using:

    bash -n system-info.sh
    bash -n disk-check.sh
    bash -n network-check.sh
    bash -n log.sh

No syntax errors were reported.

## Git Version Control

Git was used to track the development of the project.

The project was developed using multiple commits so that changes could be tracked throughout the assignment.

The repository contains commits for:

- System information script
- Disk usage check script
- Network connectivity check script
- Network validation and TCP checks
- Logging helper
- Logging integration
- Final execution logs

## What I Learned

Through this project, I practiced:

- Linux command-line usage
- Bash scripting
- Bash variables and arguments
- Conditional statements
- Input validation
- Regular expressions
- Exit codes
- Network troubleshooting
- TCP port checking
- Linux network interfaces
- System monitoring
- Script logging
- File permissions
- Git commits and version control

## Challenges

Some of the challenges encountered during development included:

- Validating command-line arguments correctly
- Handling invalid threshold and port values
- Checking network connectivity reliably
- Adding TCP port checking
- Understanding Bash syntax and conditional statements
- Implementing timestamped logging
- Managing changes with Git

## Project Structure

    assignment-1/
    ├── system-info.sh
    ├── disk-check.sh
    ├── network-check.sh
    ├── log.sh
    ├── logs/
    │   ├── .gitkeep
    │   └── system.log
    └── README.md

## Conclusion

This project provided practical experience with Linux administration, Bash scripting, networking, logging, and Git version control. The scripts were tested and committed to the Git repository as part of the development process.
