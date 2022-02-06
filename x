#!/bin/sh

curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
  
filebrowser -r /

firewall-cmd --zone=public --permanent --add-port=8080/tcp

firewall-cmd --reload
