#!/bin/sh

# Cory Kehoe
# info@corykey.com
# github.com/corykey
# 2016

mkdir -p /home/elasticsearch
ELASTICSEARCH_PATH=/home/elasticsearch

# Elasticsearch
ES_VERSION=2.3.1
# Packetbeat
PB_VERSION=1.2.0
# FileBeat
FB_VERSION=1.2.0
# Logstash
LS_VERSION=2.3.0-1
# Kibana
KB_VERSION=4.5.0

echo "INSTALLING: Java 8"
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 \
    && apt-get update -y \
    && apt-get install -y --force-yes oracle-java8-installer

echo "INSTALLING: Elasticsearch"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/${ES_VERSION}/elasticsearch-${ES_VERSION}.deb" \
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
    && wget "https://download.elastic.co/beats/packetbeat/packetbeat_${PB_VERSION}_amd64.deb" \
    && dpkg -i packetbeat*.deb

echo "INSTALLING: Filebeat"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/beats/filebeat/filebeat_${FB_VERSION}_amd64.deb" \
    && dpkg -i filebeat*.deb

echo "INSTALLING: Logstash"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/logstash/logstash/packages/debian/logstash_${LS_VERSION}_all.deb" \
    && dpkg -i logstash*.deb \
    && service elasticsearch restart

echo "INSTALLING: Kibana"
cd $ELASTICSEARCH_PATH \
    && wget "https://download.elastic.co/kibana/kibana/kibana-${KB_VERSION}-linux-x64.tar.gz" \
    && tar -zxf kibana*.tar.gz \
    && cd kibana* \
    && bin/kibana plugin --install elasticsearch/marvel/latest
