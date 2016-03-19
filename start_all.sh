service php5-fpm start;
service nginx start;
service elasticsearch start;
service filebeat start;
service packetbeat start;
screen -dmS kibana /home/elasticsearch/kibana-4.4.1-linux-x64/bin/kibana
