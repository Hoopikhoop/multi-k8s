docker build -t hoopikhoop/multi-client:latest -t hoopikhoop/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t hoopikhoop/multi-server:latest -t hoopikhoop/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t hoopikhoop/multi-worker:latest -t hoopikhoop/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push hoopikhoop/multi-client:latest
docker push hoopikhoop/multi-server:latest
docker push hoopikhoop/multi-worker:latest

docker push hoopikhoop/multi-client:$SHA
docker push hoopikhoop/multi-server:$SHA
docker push hoopikhoop/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/client-deployment client=hoopikhoop/multi-client:$SHA
kubectl set image deployments/server-deployment server=hoopikhoop/multi-server:$SHA
kubectl set image deployments/worker-deployment worker=hoopikhoop/multi-worker:$SHA
