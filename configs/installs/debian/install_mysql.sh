#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2015

echo "installing: MySQL SERVER + PhpMyAdmin"
apt-get update
apt-get install -y --force-yes mysql-server

if apt-get -qq install mysql-server; then
    #echo "Successfully installed $pkg"
    
   	# debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
	#	debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'
    
    apt-get install -y --force-yes phpmyadmin
	ln -s /usr/share/phpmyadmin /usr/share/nginx/www
	php5enmod mcrypt
	service php5-fpm restart
	echo "INSTALL COMPLETE"
else
    echo "Could not install mysql-server and phpmyadmin"
fi