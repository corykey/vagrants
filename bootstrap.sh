#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2015

mkdir -p /usr/packages/
PACKAGE_PATH=/usr/packages/

echo "installing: g++ - git - libs"

apt-get update
apt-get install -y --force-yes git
apt-get install -y --force-yes screen
apt-get install -y --force-yes build-essential

apt-get install -y --force-yes g++ cmake zlib1g-dev ant # \
	# && apt-get install -y --force-yes libbz2-dev libboost-date-time-dev \ 
	# && apt-get install -y --force-yes libboost-program-options-dev \
	# && apt-get install -y --force-yes libboost-system-dev \
	# && apt-get install -y --force-yes libboost-filesystem-dev \
	# && apt-get install -y --force-yeslibboost-iostreams-dev

echo "\n Vagrant install complete \nto enter the vagrant use -> vagrant ssh\n"
