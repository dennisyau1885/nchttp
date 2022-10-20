build:
	docker-compose build

start:
	docker-compose up -d  # Override OUTPUT in docker-compose.yaml
start_k8s:
	kubectl run --expose --port 3000 --env OUTPUT="nchttp@k8s" --image=docker-registry:5000/nchttp:latest nchttp
	kubectl create ingress --rule=kubernetes.docker.internal/=nchttp:3000 nchttp
	kubectl port-forward pods/nchttp 3000:3000


test:
	curl localhost:3000

stop:
	docker-compose down
stop_k8s:
	kubectl delete pod,svc,ingress nchttp
	pkill kubectl
