docker build -t hoopikhoop/multi-client -f ./client/Dockerfile ./client
docker build -t hoopikhoop/multi-server -f ./server/Dockerfile ./server
docker build -t hoopikhoop/multi-worker -f ./worker/Dockerfile ./worker
docker push hoopikhoop/multi-client
docker push hoopikhoop/multi-server
docker push hoopikhoop/multi-worker
kubectl apply -f k8s
kubectl set image deployments/server-deployment server=hoopikhoop/multi-server