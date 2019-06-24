#!/bin/bash

#### Install Docker on Ubuntu
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh


#### Set Static IP 
#source /usr/local/cliqr/etc/userenv
#export IPAddr
#ifconfig ens160 $IPAddr netmask 255.255.255.0

# Install django
#apt install python-pip -y
# pip3 install Django
cd /home
mkdir Coding
cd Coding
sudo apt-get install git -y
git config --global user.email “wouterdeprins@hotmail.com”
git config --global user.name “WouterDePrins”
git clone https://github.com/WouterDePrins/EasyRefApp.git
