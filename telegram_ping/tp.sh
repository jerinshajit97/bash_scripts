#!/bin/bash

API=key
curl -s -o /dev/null --data chat_id="550682702" --data "text=$1, $(date)" "https://api.telegram.org/bot$API/sendMessage"

