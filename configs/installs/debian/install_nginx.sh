#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2016

apt-get update -y \
	&& apt-get install -y --force-yes php5-fpm \
	&& cp /vagrant/configs/php-fpm/php.ini /etc/php5/fpm/php.ini

apt-get install -y --force-yes nginx \
	&& cp /vagrant/configs/nginx/default /etc/nginx/sites-available/default \
	&& apt-get install -y --force-yes apache2-utils
