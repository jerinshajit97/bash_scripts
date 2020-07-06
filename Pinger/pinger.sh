#!/bin/bash
echo "***********STARTING PINGER************"

list=$(cat $1)

for var in $list
 do 
	echo "[+] pinging $var"
	ip=$(ping -c 1 $var | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' | head -n 1)
	if [ $(echo $ip | wc -c) -gt 1 ]
	  then
	  detail=$(whois $ip | grep -E 'organisation|org-name|CIDR|netname|country' -i | sort | uniq | tr "\n" " ")
	  echo "$var : $ip :$detail" >> result.txt	
	fi
 done

echo "[+] Relax!!!Your result is safe in result.txt"
#cat result.txt
echo "***********STOPPING PINGER************"
