
# run install.sh
# copy `etc/*/*.yml` to their respective locations
# copy `certs/elastic1.evermight.net/*` to `/etc/elasticsearch/certs/elastic1.evermight.net/`
# run `chown -R elasticsearch:elasticsearch /etc/elasticsearch`
# run `chown -R kibana:kibana /etc/elasticsearch`
# run `chown -R metricbeat:metricbeat /etc/metricbeat`
# systemctl daemon-reload && systemctl enable elasticsearch.service && systemctl start elasticsearch.service
# run `/usr/share/elasticsearch/bin/elasticsearch-reset-password -i -u elastic --url https://elastic1.evermight.net:9200`
# pick `ABCD1234` as the pass.
# run `/usr/share/elasticsearch/bin/elasticsearch-reset-password -i -u kibana_system --url https://elastic1.evermight.net:9200`
# pick `ABCD1234` as the pass.
# systemctl enable kibana.service && systemctl start kibana.service
# run `/usr/share/metricbeat/bin/metricbeat setup -c /etc/metricbeat/metricbeat.yml --path.home /usr/share/metricbeat --path.data /var/lib/metricbeat`
# run `systemctl enable metricbeat.service && systemctl start metricbeat.service`
