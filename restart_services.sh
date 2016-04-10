#!/bin/sh

# Cory Kehoe
# roastbeefandchampagne@gmail.com
# 2015

/etc/init.d/php5-fpm restart
/etc/init.d/nginx restart

# additional installed services:
#/etc/init.d/mysql restart
#/etc/init.d/elasticsearch restart
#/etc/init.d/packetbeat restart
#screen -X -S kibana quit
#screen -dmS kibana sudo /home/elasticsearch/kibana-*/bin/kibana

ps auxuf
