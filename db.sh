#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install aptitude
sudo apt-get -y install mysql-server
sudo apt-get -y install git
sudo aptitude -y install expect
MYSQL_ROOT_PASSWORD=ciscocisco
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"$MYSQL\r\"
expect \"Change the root password?\"
send \"n\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")
sudo echo "$SECURE_MYSQL"
sudo aptitude -y purge expect
sudo mkdir database
sudo git clone https://github.com/datacharmer/test_db.git database
cd database/
sudo mysql -u root --password="ciscocisco" --connect-expired-password < database/employees.sql
