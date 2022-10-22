k8s-deploy:
	kubectl create ns otus-msa-hw5
	#kubectl apply -n otus-msa-hw5 -f profile-service/charts
	kubectl apply -n otus-msa-hw5 -f auth-service/charts

k8s-remove:
	kubectl delete ns otus-msa-hw5

newman:
	newman run postman/collection.json

