

docker + K8
------
CMD: kubectl get pods
error: 
Status: ImagePullBackOff

![image](https://github.com/devopsmails/devops/assets/119680288/b01424b4-756d-4bdf-8718-d13157fe9876)


Solution:
---------
Need to docker login to docker hub with Username & password
docker build -t #dusername/appname:v1
docker push #dusername/appname:v1

mention the same #dusername/appname:v1 in deployment.yml at images

CMD: kubectl apply -f deployment.yml
kubectl get pods (5 sec will be in running status)
```
