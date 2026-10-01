# Assignment 1 - Deploy on AWS EC2

## Task 1: Launch an EC2 Instance and SSH into It

### Objective

The objective of this task was to launch an Ubuntu EC2 instance on AWS and connect to it remotely using SSH.

### Steps Completed

1. Logged into the AWS Management Console.
2. Opened the EC2 service.
3. Launched an Ubuntu 24.04 LTS EC2 instance.
4. Selected the `t3.micro` instance type.
5. Created/selected the `Demo` SSH key pair.
6. Configured the security group to allow SSH traffic on port 22.
7. Obtained the public IPv4 address of the EC2 instance.
8. Used Ubuntu WSL and OpenSSH to connect to the instance.
9. Successfully logged into the Ubuntu EC2 server.

### SSH Connection

The instance was accessed using:

```bash
ssh -i ~/Demo.pem ubuntu@98.90.195.72
