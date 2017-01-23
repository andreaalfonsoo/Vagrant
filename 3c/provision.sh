apt-get -y update2
apt-get -y install apache2
apt-get -y install git

#MySQL y password a root
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password root'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

#php
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt

git clone https://github.com/andreaalfonsoo/landing_page.git /var/www/php
