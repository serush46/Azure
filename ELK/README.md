# Kubernetes logging
## EFK - Elasticsearch, Fluentd, Kibana
* These files are modified from https://github.com/kubernetes/kubernetes/blob/master/cluster/addons/fluentd-elasticsearch to add persistent storage and kibana plugins

## Steps
* kubectl create -f ELK/
* Run a cluster with sufficient resources (3x Standard B2ms at least on Azure)
* Make sure to label nodes with beta.kubernetes.io/fluentd-ds-ready=true (i.e) 
for i in `kubectl get node | cut -d ' ' -f 1| grep agentpool` ; do kubectl label nodes ${i} beta.kubernetes.io/fluentd-ds-ready=true ; done
