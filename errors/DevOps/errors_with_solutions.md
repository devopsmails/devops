

docker + K8
------
CMD: kubectl get pods
error: 
Status: ImagePullBackOff

<img width="569" alt="image" src="https://github.com/devopsmails/devops/assets/119680288/c8b7bbbe-bfaa-48b2-9b3d-424313b4a6b4">

Solution:
---------
Need to docker login to docker hub with Username & password
docker build -t #dusername/appname:v1
docker push #dusername/appname:v1

mention the same #dusername/appname:v1 in deployment.yml at images

CMD: kubectl apply -f deployment.yml
kubectl get pods (5 sec will be in running status)
```
