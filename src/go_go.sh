#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT

echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf

rm -rf /root/SDA_ALL
cd /root/

git clone https://github.com/GH0STAV0/SDA_ALL.git


cd /root/SDA_ALL/
#rm -rf site_5
git reset --hard
git pull
cd /root/SDA_ALL/site_5/ && cp /root/0nord_pass /root/SDA_ALL/site_5/0nord_pass
chmod +x *
pwd
while true
do
	echo "NEW ..............."
	cd /root/SDA_ALL/site_5/ && cp /root/0nord_pass /root/SDA_ALL/site_5/0nord_pass
	timeout 6m python3 48_ads.py
done
