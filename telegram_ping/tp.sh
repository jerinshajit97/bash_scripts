#!/bin/bash

API=key
curl -s -o /dev/null --data chat_id="id" --data "text=$1, $(date)" "https://api.telegram.org/bot$API/sendMessage"

