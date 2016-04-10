#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2016

mkdir -p /usr/packages/
PACKAGE_PATH=/usr/packages/

apt-get update -y \
    && apt-get install -y --force-yes build-essential \
    && apt-get install -y --force-yes git wget curl nano screen

echo "\nto enter the vagrant use -> vagrant ssh\n"
