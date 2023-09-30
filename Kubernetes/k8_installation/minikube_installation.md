Minikube: https://minikube.sigs.k8s.io/docs/start/  
kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/  

Pre-requisites:    
------------
Install Docker
Install Kubectl  
Install Minikube    
   

on AWS EC2 ubuntu 20.04: 
-----------
sudo apt update -y  
sudo apt-get upgrade -y  

docker installation:   
-------------------
sudo apt install docker.io  -y  

sudo usermod -aG docker ubuntu  
sudo chmod +x /var/run/docker.sock  
ll /var/run/docker.sock  
systemctl status docker  

docker --version  

Kubectl Installation:   
--------------------  

DOC: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/  

uname -m  ##### to find xarm or arm64 #####

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"    
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl    
chmod +x kubectl    
mkdir -p ~/.local/bin    
mv ./kubectl ~/.local/bin/kubectl    
kubectl version --client    

Minikube installation:     
--------------------  
Doc: https://minikube.sigs.k8s.io/docs/start/  

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64    
sudo install minikube-linux-amd64 /usr/local/bin/minikube    
minikube start    
minikube status  
kubectl get nodes  

