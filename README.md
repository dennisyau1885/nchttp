# nchttp

Trivial webserver using netcat

## Build
```
docker-compose build
```

## Run
```
docker-compose up -d  # Override OUTPUT in docker-compose.yaml
OR
kubectl run --expose --port 3000 --env OUTPUT="nchttp@k8s" --image=docker-registry:5000/nchttp:latest nchttp
kubectl create ingress --rule=kubernetes.docker.internal/=nchttp:3000 nchttp
kubectl port-forward pods/nchttp 3000:3000
```

## Test
```
curl localhost:3000
```

## Stop
```
docker-compose down
OR
kubectl delete pod,svc,ingress nchttp
pkill kubectl
```

