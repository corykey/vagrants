## Dev Vagrant - Master Branch

#### Requirements:
+ Newest version of [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
+ get the [Oracle VM VirtualBox Extension Pack](http://download.virtualbox.org/virtualbox/5.1.4/Oracle_VM_VirtualBox_Extension_Pack-5.1.4-110228.vbox-extpack)
+ Development Environment: [Vagrant](https://www.vagrantup.com/downloads.html)

#### bootstrap included apt-packages:
build-essential, git, wget, nano, curl

### optional installs:

>executable install scripts in /vagrant/configs/installs/debian/<br>
>elasticsearch, mysql, nginx, rethinkdb

***

### [node.js](https://nodejs.org) + [vue.js](https://vuejs.org)
clones [a fork](https://github.com/corykey/node) of the official [node.js source-code](https://github.com/nodejs/node).<br>It will compile by default branch v4.x with is needed for [vue.js](https://vuejs.org)
######
#
	sudo /vagrant/configs/installs/debian/install_vue.sh
#
###### create an Vue-App with and webpack boilerplate by using:
#
	cd /vagrant
    vue init webpack <app-name>

	cd <app-name>
	npm install
#
###### to run the app, use:
#
	npm run dev
#
###### the Vue-App will run on http://localhost:8080
### [Nginx](http://nginx.org/) + [php-fpm](http://php-fpm.org/)

#
	sudo /vagrant/configs/installs/debian/install_nginx.sh
#
###### URLS:
+ [Nginx](http://nginx.org/) on http://localhost:8000

***

### [MySQL Server](https://www.mysql.de/) + [phpMyAdmin](https://www.phpmyadmin.net/)
###### enable port 3306 in Vagrantfile for MySQL-Server!
#
	sudo /vagrant/configs/installs/debian/install_mysql.sh
#

###### URLS:
+ [MySQL](https://www.mysql.de/) on localhost:3306
+ [PhpMyAdmin](https://www.phpmyadmin.net/) on http://localhost:8000/phpmyadmin/

***

### [Elasticsearch](https://www.elastic.co/)
###### enable port 9200 + 5601 in Vagrantfile for node and kibana!
install:
#
	sudo /vagrant/configs/installs/debian/install_elasticsearch.sh
#

run Kibana:
#
	sudo /home/elasticsearch/kibana-*/bin/kibana
#
run Kibana in a screen, attach to screen:
#
	screen -dmS kibana sudo /home/elasticsearch/kibana-*/bin/kibana
    screen -x kibana
#
config gets placed in /etc/elasticsearch/elasticsearch.yml
<br>

#### [Java 8](http://www.oracle.com/technetwork/java/javase/overview/java8-2100321.html)
#### [Elasticsearch 2.3.1](https://www.elastic.co/products/elasticsearch)
#### [Kibana 4.5.0](https://www.elastic.co/products/kibana)
#### [Marvel 2.0](https://www.elastic.co/products/marvel)
#### [Packetbeat 1.2.0](https://www.elastic.co/products/beats)
#### [Filebeat 1.2.0](https://www.elastic.co/products/beats)
#### [Logstash 2.3.0-1](https://www.elastic.co/products/logstash)


###### URLs:
+ [node](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html) on: http://localhost:9200/
+ [Marvel](https://www.elastic.co/guide/en/marvel/current/index.html) on: http://localhost:5601/app/marvel
+ [Kibana](https://www.elastic.co/guide/en/kibana/current/index.html) on: http://localhost:5601
## Networking:

* ports forwarded to host maschine:
+ 22 -> 2222
+ 80 -> 8080

* enable service ports in Vagrant File:
+ MySQL Port: 3306 -> 3306
+ Elasticsearch node: 9200 -> 9200
+ Kibana default: 5601 -> 5601

## Commands:

> basic vagrant commands:
#
     vagrant <up, halt, destroy, init... >
 #
 > controll services:
  #
     /etc/init.d/<service name> <start, restart, stop>

## Directories:

 - Nginx shared folder: /usr/share/nginx/www
 - package installation: /usr/packages/


***

Contact: <dev@corykey.com>
<br>CK - 2016
