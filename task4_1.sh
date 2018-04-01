#!/bin/bash

touch task4_1.out; chmod u+w task4_1.out
echo "--- Hardware ---">>task4_1.out

a=`cat /proc/cpuinfo | grep model\ name | uniq` 
echo "CPU:" $a>>task4_1.out

#ram
b=`grep MemTotal /proc/meminfo | awk '{print $2}'`
	echo "RAM" $b>>task4_1.out
#motherboad
	#c=`` 
	#echo "Motherboard:" $c>>task4_1.out 

#System Serial Number:
#d=``

#	echo "">> $d>>task4_1.out 
#System Serial Number: XXXXXX

echo "--- System ---">>task4_1.out

#

e=`lsb_release -a | grep Des`
echo "OS Distribution:" $e >>task4_1.out 
#xxxxx (например Ubuntu 16.04.4 LTS)


d=`uname -r`
echo "iKernel version: $d">>task4_1.out 

#Kernel version: xxxx (например 4.4.0-116-generic)

f=``
echo "Installation date: $f">>task4_1.out
#Installation date: xxxx

g=`hostname`
echo "Hostname: $g">>task4_1.out
#Hostname: yyyyy

h=`uptime | sed 's/,.*//' | sed 's/.*up //'`
echo "Uptime: $h">>task4_1.out

#Uptime: XX days

k=`ps aux | wc -l`
echo "Processes running: $k">>task4_1.out
#Processes running: 56684
l=`who | wc -l`
echo "User logged in: $l">>task4_1.out
#User logged in: 665
echo "--- Network ---">>task4_1.out
#<Iface #1 name>:  IP/mask
#echo "">>task4_1.out

#<Iface #2  name>:  IP/mask







