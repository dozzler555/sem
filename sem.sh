#!/bin/bash
mkdir -p /tmp/recovery
cd /tmp/recovery
apt install tmate -y
apt install git -y
git config --global user.name "Dazzler555"
git config --global user.email "71560605+Dazzler555@users.noreply.github.com"
git config --global color.ui false
tg(){
	bot_api=1744981054:AAEwTewZaL8Z6K49crBWlfRnW3Zi9Aqim6U
	your_telegram_id=$1
	msg=$2
	curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" --data "text=$msg&chat_id=${your_telegram_id}"
}

id=1033360588

tmate -S /tmp/tmate.sock new-session -d && tmate -S /tmp/tmate.sock wait tmate-ready && send_shell=$(tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}') && tg $id "semaphore starded :)" && tg $id "$send_shell"

sleep 6600
sleep 4500
