#!/bin/bash
    
GROUP_ID=1669943154
BOT_TOKEN=5330045161:AAFvzWZTlluhWWUeQ19Ka-wq73eCHclyrlI
MESSAGE="$(cat ./fileOutput.txt)"

curl -s --data "text=$MESSAGE" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null

# Original script bellow

# this 3 checks (if) are not necessary but should be convenient
#if [ "$1" == "-h" ]; then
#  echo "Usage: `basename $0` \"text message\""
#  exit 0
#fi

#if [ -z "$1" ]
#  then
#    echo "Add message text as second arguments"
#    exit 0
#fi

#if [ "$#" -ne 1 ]; then
#    echo "You can pass only one argument. For string with spaces put it on quotes"
#    exit 0
#fi

# curl -s --data "text=$1" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' > /dev/null
