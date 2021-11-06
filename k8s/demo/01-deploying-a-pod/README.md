## To run the pod,

1. kubectl apply -f pod.yml
2. kubectl get po sample-kube-pod -o yaml
3. kubectl logs sample-kube-service-pod

Optionally, you can expose your pod using the `kubectl port-forward` command

NOTE: this is for testing purposes only and should not be used in production

4. kubectl port-forward sample-kube-service-pod 18080:8080
5. curl localhost:18080/hello


## To list pods according to labels

1. kubectl get po -l created_via=manual


## Delete pod

1. kubectl delete pod sample-kube-pod
2. kubectl delete -f pod.yml
