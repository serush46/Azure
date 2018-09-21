# Kubernetes logging on Azure AKS using EFK(ELK)
## EFK - Elasticsearch, Fluentd, Kibana
* These files are modified from https://github.com/kubernetes/kubernetes/blob/master/cluster/addons/fluentd-elasticsearch to add persistent storage and kibana plugins

# Requirements:
* Run a cluster with sufficient resources(nodes) (3x Standard B2ms at least on Azure AKS)

## Steps
* Make sure to label nodes with beta.kubernetes.io/fluentd-ds-ready=true (or) Execute this script: ./label.sh
* kubectl create -f ELK/
