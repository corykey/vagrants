#!/usr/bin/env bash

echo "RAC: INSTALLING Re-Think DB"
echo "deb http://download.rethinkdb.com/apt `lsb_release -cs` main" | tee /etc/apt/sources.list.d/rethinkdb.list
wget -qO- http://download.rethinkdb.com/apt/pubkey.gpg | apt-key add -
apt-get update
apt-get install -y --force-yes rethinkdb

echo "screen -dmS db rethinkdb --bind all;" >> /vagrant/start_all.sh
