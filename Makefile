k8s-deploy:
	kubectl create ns otus-msa-hw5
	helm upgrade --install -n otus-msa-hw5 otus-msa-hw5 helm/chart

k8s-remove:
	kubectl delete ns otus-msa-hw5

newman:
	newman run postman/collection.json

