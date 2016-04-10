#!/bin/sh

# Cory Kehoe
# dev@corykey.com
# 2016

echo "installing: MySQL SERVER + PhpMyAdmin"
apt-get update
apt-get install -y --force-yes mysql-server

if apt-get -qq install mysql-server; then
    apt-get install -y --force-yes phpmyadmin
    ln -s /usr/share/phpmyadmin /usr/share/nginx/www
    php5enmod mcrypt
    echo "INSTALL COMPLETE"
else
    echo "Could not install mysql-server and phpmyadmin"
fi
