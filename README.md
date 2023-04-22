
1. run install.sh
2. copy `etc/*/*.yml` to their respective locations
3. copy `certs/elastic1.evermight.net/*` to `/etc/elasticsearch/certs/elastic1.evermight.net/`
4. run `chown -R elasticsearch:elasticsearch /etc/elasticsearch`
5. run `chown -R kibana:kibana /etc/elasticsearch`
6. run `systemctl daemon-reload && systemctl enable elasticsearch.service && systemctl start elasticsearch.service`
7. run `/usr/share/elasticsearch/bin/elasticsearch-reset-password -i -u elastic --url https://elastic1.evermight.net:9200`
8. pick `ABCD1234` as the pass.
9. run `/usr/share/elasticsearch/bin/elasticsearch-reset-password -i -u kibana_system --url https://elastic1.evermight.net:9200`
10. pick `ABCD1234` as the pass.
11. run `systemctl enable kibana.service && systemctl start kibana.service`
12. run `/usr/share/metricbeat/bin/metricbeat setup -c /etc/metricbeat/metricbeat.yml --path.home /usr/share/metricbeat --path.data /var/lib/metricbeat`
13. run `systemctl enable metricbeat.service && systemctl start metricbeat.service`
