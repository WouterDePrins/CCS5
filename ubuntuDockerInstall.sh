#!/bin/bash

sudo apt-get install python3 python3-pip git -y
sudo pip3 install Django

cd /home
mkdir Coding
cd Coding

sudo git config --global user.email "wouterdeprins@hotmail.com"
sudo git config --global user.name "WouterDePrins"
sudo git clone https://github.com/WouterDePrins/CCS_IPAM.git
