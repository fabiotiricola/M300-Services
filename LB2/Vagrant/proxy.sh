#!/bin/bash
#Proxy
sudo apt-get install -y haproxy
printf '\nfrontend main-site\n  bind *:80\n  use_backend public\n' | dd conv=notrunc oflag=append bs=1 of=/etc/haproxy/haproxy.cfg
sudo systemctl reload haproxy
sudo ufw allow 80/tcp
sudo ufw reload