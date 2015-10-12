#!/bin/sh

# Roastbeef & Champagne dev Vagrant
#
# Cory Kehoe
# Eric Heun
# roastbeefandchampagne@gmail.com
# 2015

mkdir -p /home/elasticsearch
ELASTICSEARCH_PATH=/home/elasticsearch

echo "--INSTALLING: Java 7--"
apt-get install -y --force-yes openjdk-7-jre

echo "--INSTALLING: Elasticsearch--"
cd $ELASTICSEARCH_PATH
wget "https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.7.1.deb"
dpkg -i elasticsearch-*.deb
update-rc.d elasticsearch defaults 95 10

echo "--INSTALLING: Elasticsearch - Packetbeat--"
apt-get install -y --force-yes libpcap0.8
wget "https://download.elasticsearch.org/beats/packetbeat/packetbeat_1.0.0-beta3_amd64.deb"
dpkg -i packetbeat_1.0.0-beta3_amd64.deb

echo "--INSTALLING: ELASTICSEARCH - Marvel--"
cd /usr/share/elasticsearch 
./bin/plugin -i elasticsearch/marvel/latest
service elasticsearch restart
service packetbeat restart

echo "--INSTALLING: ELASTICSEARCH - Kibana--"
cd $ELASTICSEARCH_PATH
wget "https://download.elastic.co/kibana/kibana/kibana-4.1.2-linux-x64.tar.gz"
tar -zxf kibana*.tar.gz
screen -dmS kibana /home/elasticsearch/kibana-4.1.2-linux-x64/bin/kibana