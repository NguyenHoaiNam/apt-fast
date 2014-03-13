#!/bin/bash
#
# apt-fast: fast download package Ubuntu
# HSP Viet Nam
#
# Support: namnt2202@gmail.com
#

echo "Install apt-fast for Ubuntu"
echo "warring......"
apt-get install software-properties-common python-software-properties -y
clear
echo "add soucers list ....."
add-apt-repository ppa:apt-fast/stable << eof

eof
clear
echo ""
echo "update soucers list...."
apt-get update
clear
echo "Install apt-fast"
apt-get install apt-fast axel -y
clear
echo "Setting apt-fast"
cd /etc/
wget -cnv http://118.70.211.65/source/apt-fast.conf
chmod 644 /etc/apt-fast.conf
rm -rf /tmp/apt-fast.list
touch /tmp/apt-fast.list
chmod -R 777 /tmp/apt-fast.list
echo "alias apt-get='apt-fast'" >> ~/.bashrc 
source .bashrc 
echo "update souces list for apt-fast"
apt-fast update
clear
echo "Install success full"
echo "Thanks!"
