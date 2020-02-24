#!/bin/bash


echo "Running intitial scan of 1000 ports and OS, outputting to basicscan.txt"
nmap -O -T4 -iL list.txt --dns-servers 192.168.1.2 -oN basicscan.txt
echo "Intitial scan complete, review the output in a seperate terminal window"
echo "Running SYN scan with version detection of all map ports and"
echo "outputting to version.txt"
echo "This scan will run in the background, wait for completion notice"
nmap -iL list.txt -p- -sV --dns-servers 192.168.1.2 -oN versions.txt & 
echo
echo "Running UDP port scan of well known port range and Nmap registered"
echo "ports and outputing to UDP_well_known.txt"
nmap -sU -iL list.txt -p1-1023 -sV --dns-servers 192.168.1.2 -oN UPD_well_known.txt &
wait
echo "All scans completed."
