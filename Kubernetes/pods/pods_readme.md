doc: https://kubernetes.io/docs/concepts/workloads/pods/  

vi pod.yml  

apiVersion: v1  
kind: Pod  
metadata:  
  name: nginx  
spec:  
  containers:  
  - name: nginx  
    image: nginx:1.14.2  
    ports:  
    - containerPort: 80  

kubectl create -f pod.yml  
kubectl get pods -o wide  
minikube ssh  # - To ssh into minikube  
(or)   
ssh -i ubuntu@Master/node ip address  
curl ip ###### displays the application #####  
