#!/bin/bash
echo "====================================="
echo "     SYSTEM MONITORING REPORT"
echo "==========================================="
echo "Host Information:"
echo "HOSTNAME=$(hostname)"
echo "User: $(whoami)"
echo "Date: $(date)"
echo " "
echo "MEMORY USAGE"
if command -v free >/dev/null
then
free -h
else echo "Memory command not available"
fi 
echo "DISK USAGE"
df -h
echo ""
echo "RUNNING PROCESSES"
ps aux | head -10
echo ""
echo "NETWORK INFORMATION"
if command -v ip >/dev/null
then
ip addr | head -20
else echo "Network command not available in this environment"
fi

echo ""
echo "CURRENT DIRECTORY"
pwd
echo "==========================================="
echo "         REPORT COMPLETED"
echo "==========================================="
