sudo mkdir -p /home/cliqruser/db/
cd /home/cliqruser/db
sudo git clone https://github.com/datacharmer/test_db.git
sudo mysql -u root --password="ciscocisco" --connect-expired-password < /home/cliqruser/db/employees.sql
