#!/bin/bash
REPORT="reports/health_report.txt"

print_line(){
echo  "=========================================="

}

generate_report(){

echo "Linux System Health Report" > $REPORT
echo  "Generated: $(date)" >> $REPORT

print_line >> $REPORT

echo "HOST INFORMATION" >> $REPORT
echo "User: $(whoami)" >> $REPORT
echo "Kernel: $(uname -r)" >> $REPORT
echo "OS: $(uname -o)" >> $REPORT
print_line >> $REPORT
echo "CPU INFORMATION" >> $REPORT
echo "CPU Cores: $(nproc)" >> $REPORT
print_line >> $REPORT
echo "DISK USAGE" >>$REPORT
df -h >> $REPORT
echo "Disk Check Completed Successfully" >> $REPORT
print_line >> $REPORT
echo "MEMORY USAGE" >> $REPORT
if command -v free >/dev/null 2>&1
then
free -h >> $REPORT
else
echo "Memory command not available in this environment" >> $REPORT
fi
print_line >> $REPORT


echo "RUNNING PROCESSES" >> $REPORT
ps aux | head -10 >> $REPORT
print_line >> $REPORT

echo "CURRENT DIRECTORY: $(pwd)"  >> $REPORT
print_line >> $REPORT

}

generate_report 

echo "Report generated successfully:"
echo $REPORT

