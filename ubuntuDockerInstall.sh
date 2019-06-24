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
pip3 install Django
pip3 install git
mkdir Coding
cd Coding
git clone https://github.com/WouterDePrins/EasyRefApp.git

