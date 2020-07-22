#!/bin/bash

echo "***************starting STACK ETHA******************"
echo "[+] reading the file $1"

for var in $(cat $1)
	do 
		echo "[+] extracting stack info of $var"		
		curl -s "https://builtwith.com/$var" | pup 'form#mainForm h2,h5 text{}' > $(echo $var | tr -d "/").txt
	done	

echo "**************stoping STACK ETHA******************"
echo "adiós amigo"
