#### Install Docker on Ubuntu
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh

source /usr/local/cliqr/etc/userenv
export IPAddr
sudo ifconfig ens160 $IPAddr netmask 255.255.255.0
