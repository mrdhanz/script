#!/bin/sh

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
  
pkill -9 filebrowser

filebrowser -p 8080 -a "0.0.0.0" -r /

firewall-cmd --zone=public --permanent --add-port=8080/tcp

firewall-cmd --reload
