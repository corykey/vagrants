#!/bin/sh

# Cory Kehoe
# info@corykey.com
# github.com/corykey
# 2016

mkdir -p /home/elasticsearch
ELASTICSEARCH_PATH=/home/elasticsearch

echo "INSTALLING: Java 8"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 \
    && apt-get update -y \
    && apt-get install -y --force-yes oracle-java8-installer

echo "INSTALLING: Elasticsearch"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.2.0/elasticsearch-2.2.0.deb" \
    && dpkg -i elasticsearch-*.deb \
    && update-rc.d elasticsearch defaults 95 10 \
    && cp /etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.clean \
    && rm /etc/elasticsearch/elasticsearch.yml && echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.default \
    && mv /etc/elasticsearch/elasticsearch.default /etc/elasticsearch/elasticsearch.yml \
    && service elasticsearch start

echo "INSTALLING: Marvel"
cd /usr/share/elasticsearch \
  && bin/plugin install license \
  && bin/plugin install marvel-agent

echo "INSTALLING: Packetbeat"
apt-get install -y --force-yes libpcap0.8 && cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/beats/packetbeat/packetbeat_1.1.1_amd64.deb" \
    && dpkg -i packetbeat*.deb

echo "INSTALLING: Filebeat"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/beats/filebeat/filebeat_1.1.1_amd64.deb" \
    && dpkg -i filebeat*.deb

echo "INSTALLING: Logstash"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/logstash/logstash/packages/debian/logstash_2.2.2-1_all.deb" \
    && dpkg -i logstash*.deb \
    && service elasticsearch restart

echo "INSTALLING: Kibana"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/kibana/kibana/kibana-4.4.1-linux-x64.tar.gz" \
    && tar -zxf kibana*.tar.gz \
    && cd kibana* \
    && bin/kibana plugin --install elasticsearch/marvel/latest

echo "service elasticsearch start;" >> /vagrant/start_all.sh
echo "service filebeat start;" >> /vagrant/start_all.sh
echo "service packetbeat start;" >> /vagrant/start_all.sh
echo "screen -dmS kibana /home/elasticsearch/kibana-4.4.1-linux-x64/bin/kibana" >> /vagrant/start_all.sh

chmod 755 /vagrant/start_all.sh && /vagrant/start_all.sh
