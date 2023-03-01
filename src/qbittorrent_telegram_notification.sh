#!/bin/bash

# Bot token
BOT_TOKEN="ADD_YOUR_TELEGRAM_BOT_TOKEN"

# Your chat id
CHAT_ID="ADD_YOUR_TELEGRAM_CHAT_ID"

# Get variables from qbittorrent
TORRENT_NAME="$1"

# Notification message
MESSAGE="Download Completed %0A${TORRENT_NAME}%0A"

# Sends the notification to the telegram bot and save the response content into the notificationsLog.txt
curl -s --data "text=$MESSAGE" --data "chat_id=$CHAT_ID" 'https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage' | tee -a notificationsLog.txt