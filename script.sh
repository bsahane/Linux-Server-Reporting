#!/bin/bash

printf "+------------------------------------------------------------------------+\n"
printf "Server Monitoring Report\n"
printf "+------------------------------------------------------------------------+"
printf "\nOS Type\n"
uname -s
printf "=========================================================================="
printf "\nOS Name\n"
cat /etc/*release* | grep "^NAME" | awk -F\" '{print $(NF-1)}'
printf "=========================================================================="
printf "\nOS Version\n"
cat /etc/*release* | grep "^VERSION" | head -1 |awk -F\" '{print $(NF-1)}'
printf "=========================================================================="
printf "\nArchitecture\n"
uname -p
printf "=========================================================================="
printf "\nKernel Release\n"
uname -r
printf "=========================================================================="
printf "\nHostname\n"
hostname
printf "=========================================================================="
printf "\nIP Address\n"
hostname -i
printf "=========================================================================="
printf "\nNameserver\n"
grep "nameserver" /etc/resolv.conf
printf "=========================================================================="
printf "\nLogged In Users\n"
w | awk 'NR>2' |  awk '{print $1}' | awk '!x[$0]++'
printf "=========================================================================="
printf "\nMemory Usage in MB\n"
printf "Total\tUsed\tFree\tPercentage\n"
free -m | grep "Mem:" | awk '{print $2"\t",$3"\t",$4"\t",$3/$2 * 100.0"%  "}'
printf "=========================================================================="
printf "\nSwap Usage in MB\n"
printf "Total\tUsed\tFree\tPercentage\n"
free -m | grep "Swap:" | awk '{print $2"\t",$3"\t",$4"\t",$3/$2 * 100.0"%  "}'
printf "=========================================================================="
printf "\nDisk Usages\n"
df -h | awk '{print $1,$2,$3,$4,$5,$6}' | column -t
printf "=========================================================================="
printf "\nLoad Average\n"
printf "1 Min\t5 Min\t15 Min\n"
uptime | gawk -F" " '{print $8"\t",$9"\t",$10}'
printf "=========================================================================="
printf "\nSystem Uptime\n"
uptime -p
printf "==========================================================================\n"
