FROM prom/prometheus:v2.22.2
COPY prometheus.yml /etc/prometheus/prometheus.yml

FROM grafana/grafana:7.1.5
COPY grafana-config.yaml /etc/grafana/grafana.ini
COPY dashboards/ /etc/grafana/dashboards/
