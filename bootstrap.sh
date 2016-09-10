#!/bin/sh

# Cory Kehoe
# dev@corykey.com
# 2016

mkdir -p /usr/packages/
PACKAGE_PATH=/usr/packages/
export DEBIAN_FRONTEND=noninteractive

unset UCF_FORCE_CONFFOLD
export UCF_FORCE_CONFFNEW=YES
ucf --purge /boot/grub/menu.lst

apt-get update -y && apt-get -o Dpkg::Options::="--force-confnew" --force-yes -fuy dist-upgrade \
    && apt-get install -y --force-yes build-essential \
    && apt-get install -y --force-yes git wget curl nano screen \
    && apt-get --force-yes upgrade

echo "\nto enter the vagrant use -> vagrant ssh\n"
