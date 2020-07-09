#!/bin/bash

echo "*********Running SEC NEWS 24x7***********"
echo "[+] clearing previous fetch"
echo "SEC NEWS 24x7 updated on $(date)" > secnews.txt
echo "[+] fetching hot news "
echo "[+] fetching headlines "
curl https://thehackernews.com/ | grep "</h2>" | sed -e 's/<[^>]*>//g' > news.txt
link=$(curl https://thehackernews.com/ | grep "'story-link'" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_%:-]*")

i=0
for var in $link
	do
	url[$i]=$var
	((i=i+1))
	done

j=0
while IFS= read -r line; do
    echo "**********************************************$line*******************************************************" >> secnews.txt
	echo "[+] fetching more details "
	curl ${url[$j]} | sed '/<script/,/<\/script>/d' | sed -e 's/<[^>]*>//g' | sed  '/^$/d' | head -n 20 >> secnews.txt
	((j=j+1))
	printf "\n\n\n" >> secnews.txt
done < news.txt

echo "[+] removing tmp files "
rm news.txt
echo "[+] creating the file "
echo "[+] news saved in secnews.txt"
#cat secnews.txt
echo "[+] Process completed.Amigo!!! Its time to get some sleep"
