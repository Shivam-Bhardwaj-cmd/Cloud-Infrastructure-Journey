#!/bin/bash
echo "====================================="
echo "   LInux System Health Report"
echo "==========================================="
HOSTNAME=$(hostname)
CURRENT_USER=$(whoami)
CURRENT_DATE=$(date)
echo "Hostname: $HOSTNAME"
echo "Current User: $CURRENT_USER"
echo "Current Date: $CURRENT_DATE"
UPTIME=$(uptime -p)
KERNEL=$(uname -r)
OS=$(unmame -o)
echo "Uptime: $UPTIME"
echo "Kernel Version: $KERNEL"
echo "Operating System: $OS"
