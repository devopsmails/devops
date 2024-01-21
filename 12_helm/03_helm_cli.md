Helm CLI commands:

```
helm create helloworld          - creates 1st helloworld helm chart directory
tree helloworld
ls -lart                        - Shows helloworld helm chart is created
cd helloworld/                  - 
ls
cd templates/                   
ls                              - shows the list of yaml files using for this hello world helm chart

Change service port to NodePort:  

vi values.yaml:
---------
change:
service:
  type: NodePort ###
  port: 80 >> save
------
cd ..                                       - should be at same dir path to execute the install cmd
helm install myhelloworld helloword         - myhelloworld=helmchartname, helloworld=helmchart dir
                                              This command deploy on k8 cluster with the name myhelloworld

helm list -a                                - list helm charts deployed on k8 cluster
-----------
kubectl get service                         - shows the myhelloworld sevice up on nodeport on #port
                                              Ex: myhelloworld   NodePort    10.152.183.217   <none>        80:32332/TCP   3m46s

open security group 32332
WEB BROWSER:
    pub IP: 32332                   - We can access our deployment on website


```
Kubernets DashBoard:
--------------
microk8s dashboard-proxy