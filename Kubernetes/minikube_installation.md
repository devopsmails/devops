Minikube: https://minikube.sigs.k8s.io/docs/start/  
kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/  

Pre-requisites:    
------------
Install Minikube    

Install Kubectl    

on AWS EC2 ubuntu 20.04: 
-----------
Docker installation:  
------------------
sudo apt install docker.io     
sudo usermod -aG docker ubuntu     
sudo chmod 660 /var/run/docker.sock    
ls -l /var/run/docker.sock    
sudo systemctl start docker     


Kubectl installation:  
--------------------

curl -LO https://storage.googleapis.com/kubernetes-release/release/latest/bin/linux/amd64/kubectl     

Minikube installation:  
---------------------

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64    

minikube start     

               ( or )

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64  
sudo install minikube-linux-amd64 /usr/local/bin/minikube  

minikube start  
minikube start --force  


