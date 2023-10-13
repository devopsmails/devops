doc: https://microk8s.io/#install-microk8s  

The prerequisites for MicroK8s are:  
------------------------------- 

A 64-bit Linux operating system with a kernel version of at least 4.15.  
2 vCPUs and 4 GB of RAM per node.  
20 GB of disk space.  
An internet connection. 

installation on aws ec2 ubuntu 20.04 LTS:  
--------------------------
```
sudo apt update -y
sudo apt upgrade -y
```

MicroK8s
```

sudo snap install microk8s --classic

microk8s status --wait-ready          - Check the status while Kubernetes starts
  sudo usermod -a -G microk8s ubuntu
  newgrp microk8s
```
Kubectl installations:
```
doc: https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/  

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
```
docs: https://microk8s.io/docs/working-with-kubectl
```
cd $HOME
mkdir .kube
cd .kube
microk8s config > config
cat config

sudo reboot   - restart the instance

```

Helm installation on EC2-UBUNTU:
------------------------------
DOC: https://helm.sh/docs/intro/install/
```
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

helm version

```
Helm chart architecture:  
-----------------------

![image](https://github.com/devopsmails/devops/assets/119680288/77345505-8e8d-4e06-bd8f-9c732c988f85)







