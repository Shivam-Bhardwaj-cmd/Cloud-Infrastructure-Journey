#!/bin/bash
echo "====================================="
echo "   LInux System Health Report"
echo "==========================================="
HOSTNAME=$(hostname)
CURRENT_USER=$(whoami)
CURRENT_DATE=$(date)
echo "Hostname: $HOSTNAME"
echo "==========================================="
echo "Current User: $CURRENT_USER"
echo "==========================================="
echo "Current Date: $CURRENT_DATE"
echo "==========================================="
UPTIME=$(uptime -p)
KERNEL=$(uname -r)
OS=$(uname -o)
echo "Uptime: $UPTIME"
echo "==========================================="
echo "Kernel Version: $KERNEL"
echo "==========================================="
echo "Operating System: $OS"
echo "==========================================="

echo "DISK USAGE:"
echo "==========================================="
df -h
echo "==========================================="
echo "CPU INFORMATION: "
echo "==========================================="
nproc
echo "Current Directory: "
echo "==========================================="
pwd
echo "System Health Check Completed Successfully"

