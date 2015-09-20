# Vagrant Master Branch

run as root after installation: /vagrant/install_mysql.sh

### installed services:
  - [Nginx](http://nginx.org/) on http://localhost:8080
  - [PhP5-Fpm](http://php-fpm.org/)
  - [MySQL](https://www.mysql.de/)
  - [PhpMyAdmin](https://www.phpmyadmin.net/) on http://localhost:8080/phpmyadmin/

### Networking:

 * ports forwarded to host maschine:
   + 22 -> 2222
   + 80 -> 8080
   + 3306 -> 3306

### Commands:

> basic vagrant commands: 
# 
     vagrant <up, halt, destroy, init... >
 #
 > controll services: 
  #
     /etc/init.d/<service name> <start, restart, stop>
 
### Directories:

 - Nginx shared folder: /usr/share/nginx/www 
 - package installation: /usr/packages/