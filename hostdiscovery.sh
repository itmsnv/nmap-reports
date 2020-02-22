#!/bib/bash

echo "host results from Pin Scan"
echo
nmap -sn -PE $1
echo
echo "Host results from TCP SYN Ping"
echo
namp -sn -PS22-25,80,113,443,445,8080 $1
echo
echo "Host results from TCP ACK Ping"
echo
nmap -sn -PA $1
echo
echo "Host results from UDP Ping"
echo
nmap -sn -PU $1

