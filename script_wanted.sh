#!/bin/bash

# Display System Architecture Of you machine
arc=$(uname -a)

# CPU physical cores
pcpu=$(grep -c "^processor" /proc/cpuinfo)

# vCPU (virtual CPUs)
vcpu=$(lscpu | awk '/^CPU\(s\):/ {print $2}')

# Memory Usage
uram=$(free -m | awk '/Mem:/ {print $3}')
fram=$(free -m | awk '/Mem:/ {print $2}')
pram=$(awk "BEGIN {printf \"%.2f\", ($uram/$fram)*100}")

# Disk Usage
udisk=$(df -h --total | awk '/^total/ {print $3}')
fdisk=$(df -h --total | awk '/^total/ {print $2}')
pdisk=$(df --total | awk '/^total/ {printf("%.2f", $3/$2*100)}')

# CPU Load
cpul=$(top -bn1 | grep '^%Cpu' | awk '{printf("%.1f%%", $2 + $4)}')

# Last Boot
lb=$(who -b | awk '{print $3, $4}')

# LVM Usage
lvmt=$(lsblk | grep "lvm" | wc -l)
lvmu=$(if [ $lvmt -eq 0 ]; then echo no; else echo yes; fi)

# TCP Connections
ctcp=$(cat /proc/net/sockstat{,6} | awk '$1 == "TCP:" {print $3}')

# User Log
ulog=$(who | wc -l)

# Network Information
ip=$(hostname -I | xargs)
mac=$(ip link show | awk '$1 == "link/ether" {print $2}')

# Sudo Commands
cmds=$(journalctl _COMM=sudo | grep COMMAND | wc -l)

# Display Information
wall "	#Architecture: $arc
	#CPU physical: $pcpu
	#vCPU: $vcpu
	#Memory Usage: $uram/${fram}MB ($pram%)
	#Disk Usage: $udisk/${fdisk}Gb ($pdisk%)
	#CPU load: $cpul
	#Last boot: $lb
	#LVM use: $lvmu
	#Connexions TCP: $ctcp ESTABLISHED
	#User log: $ulog
	#Network: IP $ip ($mac)
	#Sudo: $cmds cmd"
	
	 
