#!/bin/bash

### This script prints system info


#checking system uptime
echo "########################################"
echo "The uptime of the system is: "
uptime
echo

#Memory Utilization
echo "#############################################"
echo "Memory Utlilization"
free -m
echo

#Disk Utilization
echo "#########################################"
echo "Disk Utilization"
df -h
~
