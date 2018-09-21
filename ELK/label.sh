for i in `kubectl get node | cut -d ' ' -f 1| grep agentpool` ; do kubectl label nodes ${i} beta.kubernetes.io/fluentd-ds-ready=true ; done
