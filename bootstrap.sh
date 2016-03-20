#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2016

mkdir -p /usr/packages/
PACKAGE_PATH=/usr/packages/

echo "installing: Nginx + Php-fpm"

apt-get update -y \
    && apt-get install -y --force-yes build-essential \
    && apt-get install -y --force-yes git wget curl nano screen

apt-get install -y --force-yes php5-fpm
cp /vagrant/configs/php-fpm/php.ini /etc/php5/fpm/php.ini

apt-get install -y --force-yes nginx \
    && cp /vagrant/configs/nginx/default /etc/nginx/sites-available/default \
    && apt-get install -y --force-yes apache2-utils

echo "service php5-fpm start;" >> /vagrant/start_all.sh
echo "service nginx start;" >> /vagrant/start_all.sh

echo "\nto enter the vagrant use -> vagrant ssh\n"
echo "for mysql install run:"
echo "\t /vagrant/install_mysql.sh"
echo "\nfor elasticsearch:"
echo "\t /vagrant/install_elasticsearch.sh"
echo "!!AS ROOT!!"
