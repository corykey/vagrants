## Dev Vagrant - Master Branch

#### Requirements:
+ [VirtualBox 5.0](https://www.virtualbox.org/wiki/Downloads)
+ Development Environment: [Vagrant](https://www.vagrantup.com/downloads.html)

#### bootstrap included apt-packages:
build-essential, git, wget, nano, curl

### optional installs:

>executable install scripts in /vagrant/configs/installs/debian/<br>
>elasticsearch, mysql, nginx, rethinkdb
***
### [Nginx](http://nginx.org/) + [php-fpm](http://php-fpm.org/)

#
	sudo /vagrant/configs/installs/debian/install_nginx.sh
#
***
### [MySQL Server](https://www.mysql.de/) + [phpMyAdmin](https://www.phpmyadmin.net/)
###### enable port 3306 in Vagrantfile for MySQL-Server!
#
	sudo /vagrant/configs/installs/debian/install_mysql.sh
#
***
### Elasticsearch Stack
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
#### [Elasticsearch 2.2.0](https://www.elastic.co/products/elasticsearch)
#### [Kibana 4.4.1](https://www.elastic.co/products/kibana)
#### [Marvel](https://www.elastic.co/products/marvel)
#### [Packetbeat 1.1.1](https://www.elastic.co/products/beats)
#### [Filebeat 1.1.1](https://www.elastic.co/products/beats)
#### [Logstash 2.2.2](https://www.elastic.co/products/logstash)


##### Urls:
* [PhpMyAdmin](https://www.phpmyadmin.net/) on http://localhost:8080/phpmyadmin/
* [Elasticsearch node](https://www.elastic.co/guide/en/elasticsearch/reference/current/index.html) on: http://localhost:9200/
* [Marvel](https://www.elastic.co/guide/en/marvel/current/index.html) on: http://localhost:9200/_plugin/marvel/
* [Kibana](https://www.elastic.co/guide/en/kibana/current/index.html) on: http://localhost:5601
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
>
Contact: <dev@corykey.com>
>
