#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2016

apt-get update -y \
    && apt-get install -y --force-yes systemd systemd-sysv \
    && reboot
