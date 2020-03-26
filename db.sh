sudo apt-get -y update
sudo apt-get -y install mysql-server
sudo apt-get -y install git
sudo service mysql start
aptitude -y install expect
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
echo "$SECURE_MYSQL"
aptitude -y purge expect
# populate database
mkdir -p /home/cliqruser/db
git clone https://github.com/datacharmer/test_db.git /home/cliqruser/db
cd /home/cliqruser/db/
mysql -u root --password="ciscocisco" --connect-expired-password < /home/cliqruser/db/employees.sql
