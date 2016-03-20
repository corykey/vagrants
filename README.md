## Dev Vagrant - Master Branch

#### bootstrap included services:
  [Nginx](http://nginx.org/) on http://localhost:8080
  [PhP5-Fpm](http://php-fpm.org/)

### optional installs:

>run scripts as root, if you have installed optional scripts,
make sure to enable restart commands in /vagrant/restart_services.sh


### - MySQL Server - phpMyAdmin
script path: configs/installs/debian/install_mysql.sh

#### [MySQL](https://www.mysql.de/)
<br>
### - Elasticsearch
script path: configs/installs/debian/install_elasticsearch.sh
<br>config in /etc/elasticsearch/elasticsearch.yml

#### [Java 8](http://www.oracle.com/technetwork/java/javase/overview/java8-2100321.html)
#### [Elasticsearch 2.2.0](https://www.elastic.co/products/elasticsearch)
#### [Kibana 4.4.1](https://www.elastic.co/products/kibana)
#### [Marvel](https://www.elastic.co/products/marvel)
#### [Packetbeat 1.1.1](https://www.elastic.co/products/beats)
#### [Filebeat 1.1.1](https://www.elastic.co/products/beats)
#### [Logstash 2.2.2](https://www.elastic.co/products/logstash)

<br>
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
