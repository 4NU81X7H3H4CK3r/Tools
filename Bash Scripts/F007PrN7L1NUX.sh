#!/bin/bash

# color variables
R='\033[0;31m'
G='\033[0;32m'
RT='\033[0m'


# System variables
v1=$(hostname)
v1a=$(whoami)
v2=$(uname -a)
v2b=$(cat /proc/version)
v2c=$(cat /etc/issue)
v2d=$(lscpu)
v2a=$(ps aux | grep root)
v4=$(ps aux | grep $v1a)
v3=$(date)


# User Enumeration variables
u1=$(id)
u2=$(sudo -l)
u3=$(cat /etc/passwd | cut -d : -f 1)
u5=$(cat /etc/group)
us=$(whoami)

# Network Enumeration variables
n1=$(ip a)
n2=$(ip route)                      # Finding route information 
n3=$(ip neigh)
n4=$(netstat -ano)                  # Looking for open ports





                                                 ## System Footprinting ##
echo -e "${RT}+++++++++++++++++++++${G}System Enumeration${RT}++++++++++++++++++++\n" >>  system_enumeration.txt

# Current Host & Kernel & CPU information 
echo -e "${RT}TimeStamp:\n${R}$v3${RT}\n" >> system_enumeration.txt
echo -e "${RT}HostName:\n${R}$v1a${RT}\n" >>  system_enumeration.txt   
echo -e "${RT}KernelInfo: \n${R}$v2${RT}\n" >>  system_enumeration.txt 
echo -e "${RT}ProcVersion: \n${R}$v2b${RT}\n" >>  system_enumeration.txt 
echo -e "${RT}etcIssue: \n${R}$v2c${RT}\n" >>  system_enumeration.txt 
echo -e "${RT}CPUarchitecture: \n${R}$v2d${RT}\n" >>  system_enumeration.txt 

# Checking Processes for ROOT & Current User
echo -e "${RT}ChkProcessRT:\n${R}$v2a${RT}\n" >>  system_enumeration.txt
echo -e "${RT}ChkProcessUser:\n${R}$v4${RT}\n" >>  system_enumeration.txt

#processing 
clear
echo "😈    "
sleep 1 
clear
echo "😈😈   "
sleep 1 
clear
echo "😈😈😈  "
sleep 1 
clear
echo "😈😈😈😈 "
sleep 1
clear
echo "😈😈😈😈😈"
sleep 1
clear
sleep 5 
clear

# System Enumeration completed
echo -e "${R}[+] System Enumeration Completed"
sleep 3

						## User Enumeration ##
echo -e "${RT}+++++++++++++++++++++${G}User Enumeration${RT}++++++++++++++++++++\n" >>  user_enumeration.txt

# Who we are, and group associatation
echo -e "${RT}CurrentUser:\n${R}$us${RT}\n" >> user_enumeration.txt
echo -e "${RT}GroupAffliated:\n${R}$u1${RT}\n" >> user_enumeration.txt

# Identify all passwordless sudo commands user can execute 
echo -e "${RT}passwdlessSUDO:\n${R}$u2${RT}\n" >> user_enumeration.txt

# Identify other users on system
echo -e "${RT}IdUsers:\n${R}$u3${RT}\n" >> user_enumeration.txt

# Identify access to sensitive files 
echo -e "${RT}GroupAccess:\n${R}$u5${RT}\n" >> user_enumeration.txt

#processing 
clear
echo "😈    "
sleep 1 
clear
echo "😈😈   "
sleep 1 
clear
echo "😈😈😈  "
sleep 1 
clear
echo "😈😈😈😈 "
sleep 1
clear
echo "😈😈😈😈😈"
sleep 1
clear
sleep 5 
clear

# User Enumeration completed
echo -e "${R}[+] User Enumeration Completed"
sleep 3
clear


                                                   ## Network Enumeration ##
                                                   
echo -e "${RT}+++++++++++++++++++++${G}Network Enumeration${RT}++++++++++++++++++++\n" >>  network_enumeration.txt

# Network Interfaces 
echo -e "${RT}NetworkInterfaces:\n${R}$n1${RT}\n" >>  network_enumeration.txt

echo -e "${RT}RouteTable:\n${R}$n2${RT}\n" >>  network_enumeration.txt # Route Table
echo -e "${RT}ArpTable:\n${R}$n3${RT}\n" >>  network_enumeration.txt # ArpTable

# Locating internal open ports
echo -e "${RT}InternalOpenPorts:\n${R}$n4${RT}\n" >>  network_enumeration.txt


#processing 
clear
echo "😈    "
sleep 1 
clear
echo "😈😈   "
sleep 1 
clear
echo "😈😈😈  "
sleep 1 
clear
echo "😈😈😈😈 "
sleep 1
clear
echo "😈😈😈😈😈"
sleep 1
clear
sleep 5 
clear

# Network Enumeration completed
echo -e "${R}[+] Network Enumeration Completed"
sleep 3
clear

# Network Enumeration completed
echo -e "${R}[+] Enumeration Process Completed"
sleep 2
clear

echo -e "${R}[+] 3 Files have been generated 😈"
sleep 2 
clear

mkdir host && mv *.txt ~/Desktop/host/
ls -lsa ~/Desktop/host
sleep 5 
clear


