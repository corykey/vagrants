#!/bin/sh

# Cory Kehoe
# dev@corykey.com
# 2016


mkdir /vagrant/gospace
GOPATH=/vagrant/gospace
GOVERSION=1.7.3
GOPACKAGE=go${GOVERSION}.linux-amd64.tar.gz

apt-get update -y && cd /home/vagrant
if [ ! -f $GOPACKAGE ]
then
    echo "Downloading $GOPACKAGE"
    wget https://storage.googleapis.com/golang/$GOPACKAGE
fi

tar -xzf $GOPACKAGE \
    && rm -rf /usr/local/go && mv go /usr/local/ && rm go*.tar.gz

echo 'export PATH=$PATH:/usr/local/go/bin' >> /etc/profile
echo 'export GOPATH=/vagrant/gospace' >> /etc/profile
