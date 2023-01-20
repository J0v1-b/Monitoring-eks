# Monitoring and Logging Solution for EKS

This repository contains the code and configuration files for deploying a monitoring and logging solution for the performance and health of containers in an EKS cluster using Prometheus and Grafana.

## Prerequisites

- A running EKS cluster
- kubectl configured to access the EKS cluster
- Docker installed and configured to build the container

## Installation

To deploy the monitoring and logging solution, follow these steps:

1. Clone the repository:
git clone https://github.com/your-username/monitoring-eks.git
2. Build the container image:
docker build -t monitoring-logging-eks .
3. Deploy the Kubernetes manifests:
kubectl apply -f k8s/

## Configuration

You can configure the monitoring and logging solution by editing the files in the `config` directory.

- `prometheus.yml` contains the configuration for the Prometheus server.
- `prometheus-config.yaml` contains the configuration for the Prometheus operator.
- `grafana-config.yaml` contains the configuration for the Grafana.

## Usage

After the installation, you can access Prometheus and Grafana by using kubectl port-forward or by creating a load balancer service.

- To access Prometheus, run:
kubectl port-forward svc/prometheus 9090:80

- To access Grafana, run:
kubectl port-forward svc/grafana 3000:80


You can then access Prometheus at `http://localhost:9090` and Grafana at `http://localhost:3000`.

## Contributing

If you find any bugs or have suggestions for improvements, please open an issue or a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

