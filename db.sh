#!/bin/bash
sudo apt-get -y update
sudo apt-get -y install mysql-server 
sudo apt-get -y install git
sudo sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('something');FLUSH PRIVILEGES;"
sudo mysql -e "DELETE FROM mysql.user WHERE User='';"
sudo mysql -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"
sudo mysql -e "DROP DATABASE test;DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';"
sudo mysql -u root -psomething -e "CREATE USER 'ubuntu'@'localhost' IDENTIFIED BY 'something';GRANT ALL PRIVILEGES ON *.* TO 'ubuntu'@'%';FLUSH PRIVILEGES;"
cd /home/cliqruser/
sudo git clone https://github.com/datacharmer/test_db.git
cd /home/cliqruser/test_db/
sudo mysql -u ubuntu -psomething < employees.sql
