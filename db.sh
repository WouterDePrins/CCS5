sudo dpkg -i mysql-apt-config_0.8.15-1_all.deb
sudo apt-get -y update
sudo apt-get -y install mysql-server
sudo apt-get -y install git
sudo service mysql start

# get mysql temp pwd
temp_password=$(sudo grep password /var/log/mysqld.log | awk '{print $NF}')

# create & execute query for new user
sudo echo "SET PASSWORD FOR 'appuser'@'%' = PASSWORD('C1sco123&');" | sudo tee /home/cliqruser/changepass.sql > /dev/null
sudo echo "GRANT ALL PRIVILEGES ON *.* TO 'appuser'@'%' IDENTIFIED BY 'C1sco123&';" | sudo tee /home/cliqruser/newuser.sql > /dev/null
mysql -u root --password="$temp_password" --connect-expired-password < /home/cliqruser/newuser.sql
mysql -u root --password="$temp_password" --connect-expired-password < /home/cliqruser/changepass.sql

# populate database
mkdir -p /home/cliqruser/db
git clone https://github.com/datacharmer/test_db.git /home/cliqruser/db
cd /home/cliqruser/db/
mysql -u root --password="$temp_password" --connect-expired-password < /home/cliqruser/db/employees.sql
