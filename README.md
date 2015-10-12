# Vagrant Master Branch

run as root after installation: /vagrant/install_mysql.sh

## installed services:
  - [Nginx](http://nginx.org/) on http://localhost:8080
  - [PhP5-Fpm](http://php-fpm.org/)
  - [MySQL](https://www.mysql.de/)
  - [PhpMyAdmin](https://www.phpmyadmin.net/) on http://localhost:8080/phpmyadmin/

### optional installs:
#
>if you have installed optional scripts, make sure to enable restart commands in /vagrant/restart_services.sh
 #### MySQL Server - phpMyAdmin
    /vagrant/install_mysql.sh
 
 #### Java 7- Elasticsearch 1.7.1 - Marvel - packetbeat 1.0.0-beta - Kibana
     /vagrant/install_elasticsearch.sh

>Elasticsearch Home path: /usr/share/elasticsearch -
config in /etc/elasticsearchElasticsearch.yml

##### Urls:
* Elasticsearch node: http://localhost:9200/
* Marvel: http://localhost:9200/_plugin/marvel/
* Kibana: http://localhost:5601
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