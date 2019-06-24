#!/bin/bash

#### Install Docker on Ubuntu
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh


#### Set Static IP 
#source /usr/local/cliqr/etc/userenv
#export IPAddr
#ifconfig ens160 $IPAddr netmask 255.255.255.0

# Install django
sudo apt-get update -y
sudo apt install python-pip -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo pip3 install Django

cd /home
mkdir Coding
cd Coding

sudo git config --global user.email “wouterdeprins@hotmail.com”
sudo git config --global user.name “WouterDePrins”
sudo git clone https://github.com/WouterDePrins/EasyRefApp.git
