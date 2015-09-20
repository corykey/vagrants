#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2015

mkdir -p /usr/packages/
PACKAGE_PATH=/usr/packages/

echo "installing: Nginx + Php-fpm"

apt-get update
apt-get install -y --force-yes git
apt-get install -y --force-yes screen
apt-get install -y --force-yes build-essential

apt-get install -y --force-yes php5-fpm
cp /vagrant/configs/php-fpm/php.ini /etc/php5/fpm/php.ini

apt-get install -y --force-yes nginx
cp /vagrant/configs/nginx/default /etc/nginx/sites-available/default
apt-get install -y --force-yes apache2-utils
service nginx restart

chmod +x /vagrant/install_mysql.sh
chown vagrant:vagrant user /vagrant/install_mysql.sh

echo "to enter the vagrant use -> vagrant ssh"
echo "run as root after installation: /vagrant/install_mysql.sh"