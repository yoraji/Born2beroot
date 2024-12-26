#! /bin/bash

arc=$(uname -a)

physicl_cpu=$(grep 'physical id' /proc/cpuinfo | sort | uniq | wc -l)
virtual_cpu=$(grep "^processor" /proc/cpuinfo | sort | uniq | wc -l)

uram=$(free -m | grep Mem | awk '{print $3}')
fram=$(free -m | grep Mem | awk '{print $2}')
parm=$(free -m | grep Mem | awk '{printf("%.2f", $3/$2*100)}')

udisk=$(df -h --total | awk '/^total/ {print $3}')
fdisk=$(df -h --total | awk '/^total/ {print $2}')
perce=$(df -h --total | awk '/^total/ {printf("%.2f", $3/$2*100)}')

cpul=$(uptime | awk '{printf("%.1f%", $9)}')
last_boot=$(who -b | awk '{print $3, $4}' )

lvmt=$(lsblk | grep "lvm" | wc -l | awk '{if($1 != 0) {printf("yes");} else printf("no");}')
ctcp=$(ss -t | grep ESTAB | wc -l)

ulog=$(who |awk '{print $1}' |  uniq | wc -l)

ip=$(hostname -I | awk  '{print $1}')
mac=$(ip a | grep link/ether | head -n 1 | awk '{print $2}')

cmds=$(grep COMMAND /var/log/sudo/sudo.log | wc -l)

wall "	#Architecture: $arc
	#CPU physical: $physicl_cpu
	#vCPU: $virtual_cpu
	#Memory Usage: $uram/${fram}MB ($parm%)
	#Disk Usage: $udisk/${fdisk}B ($perce)
	#CPU load: $cpul
	#Last boot : $last_boot
	#LVM use: $lvmt
	#Connexion TCP : $ctcp ESTABLISHED
	#User log: $ulog
	#Network: IP $ip ($mac)
	#Sudo: $cmds cmd"
