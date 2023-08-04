Helm = Pre Production Validator

What is Helm and how it works?
  Helm is a tool that automates the creation, packaging, configuration, and deployment of Kubernetes 
    applications by combining your configuration files into a single reusable package. 
  In a microservice architecture, you create more microservices as the application grows, making it increasingly difficult to manage
==========

Helm Installation on aws ec2:
------------
pre-requisites:
---------
EC2-t2.medium
docker
minikube - Single node cluster
-----------

docker installation:
=========
sudo su
vi docker.sh
------------
#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y
---------------
chmod +x docker.sh
./docker.sh
docker --version
==============

Helm commands:
============
helm create #helmchartname#
helm list -a
helm delete #helmchartname
helm lint #To check any bugs in the code before going to production
helm template
helm install releasename --dry-run --debug helmchartname  - To check the dry run
helm install
helm list -a
helm delete releasename
rm -rf helmchartname
vi values.yaml
change replicas 2
helm upgrade releasename helmchartname
helm list -a  #we can see all how many replicas are active & deployed too. 
variabling:
--------
We can variables the Deployment & service yaml files.
vi Values.yaml
service:
  Type: Nodeport
  Port: 80
If i want the above variables to be enabled for deploymet or services yaml. 
Do it by going to the (VI FILENAME) file where we want to variablise as below.

Go to Change variable>>
ex: 
service:
  Type: (( .Values.service.type ))
  Port: (( .Values.service.port ))

helm template releasename chart name - ( can see updated variables in the templates)
-----------
Rollback: Going back to working old version
-----------
ex:
need to change some values like above and install the release.
So the revision number will be increased with the executed changes.
Rollback
helm rollback releasename Revisonnumber - Rollback successfull & happy rollback
