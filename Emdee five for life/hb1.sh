#!/bin/bash

curl -c head.txt docker.hackthebox.eu:32038 > demo.txt
tmp=$(cat demo.txt | grep h3)
echo $tmp

str=${tmp:66:20}
echo $str

md=$(echo -n $str | md5sum | awk '{print $1}' )
echo $md

curl -d "hash=$(echo $md)" -X POST -b head.txt http://docker.hackthebox.eu:32038/

#hash=$md
#echo $hash
#cat head.txt
