#!/bin/bash
echo "[=]********VEGAM NOKKE V1*********"
echo "[+] checking for live hosts"
nmap $1 -sn | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' > ips.txt
ino=$(cat ips.txt | wc -l)
echo "[+] found $ino hosts"
cat ips.txt

for var in $(cat ips.txt)
do

echo "[+] scanning host $var"  
nmap  -p- $var | grep tcp | grep '[0-9]\{1,5\}' -o > $var.txt


echo "[+] found $(cat $var.txt | wc -l) ports"
cat $var.txt

if [ $(cat $var.txt | wc -l) -gt 0 ]
then
echo "[+] enumerating the ports"
a=$(cat $var.txt | tr '\n' ,)
nmap 192.168.225.1 -p $(echo "${a::-1}") -A > $var.txt

echo "[+] generating report"
cat $var.txt
fi

done

echo "[=]********SCANNING COMPLETE*********"
