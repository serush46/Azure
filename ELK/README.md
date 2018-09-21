# Kubernetes logging on Azure using EFK(ELK)
## EFK - Elasticsearch, Fluentd, Kibana
* These files are modified from https://github.com/kubernetes/kubernetes/blob/master/cluster/addons/fluentd-elasticsearch to add persistent storage and kibana plugins

## Steps
* kubectl create -f ELK/
* Run a cluster with sufficient resources (3x Standard B2ms at least on Azure)
* Make sure to label nodes with beta.kubernetes.io/fluentd-ds-ready=true (or) Execute this script: ./label.sh
