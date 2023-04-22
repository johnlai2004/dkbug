#!/bin/bash

apt-get update;
apt-get install -y vim curl gnupg gpg;
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo gpg --dearmor -o /usr/share/keyrings/elasticsearch-keyring.gpg;
echo "deb [signed-by=/usr/share/keyrings/elasticsearch-keyring.gpg] https://artifacts.elastic.co/packages/8.x/apt stable main" | sudo tee /etc/apt/sources.list.d/elastic-8.x.list;
apt-get install -y apt-transport-https;
apt-get update;
apt-get install -y elasticsearch;
apt-get install -y kibana;
apt-get install -y metricbeat;

#mkdir -p /etc/systemd/system/elasticsearch.service.d
#echo '[Service]' > /etc/systemd/system/elasticsearch.service.d/override.conf
#echo 'LimitMEMLOCK=infinity' >> /etc/systemd/system/elasticsearch.service.d/override.conf

mkdir -p /srv/elk/elastic
chown -R elasticsearch:elasticsearch /srv/elk/elastic

mkdir -p /etc/elasticsearch/certs/elastic1.evermight.net
chown -R elasticsearch:elasticsearch /etc/elasticsearch/certs/elastic1.evermight.net

echo '127.0.0.1 elastic1.evermight.net' >> /etc/hosts
