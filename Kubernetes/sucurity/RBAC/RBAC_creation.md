```
kubectl create ns rbac-test                          # rbac-test = namespace name
```
Service account creating:  
=======================
doc: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/  
```
service_account.yml
===================
apiVersion: v1
kind: ServiceAccount
metadata:
  name: pod-service-account
  namespace: rbac-test



kubectl get ns                                      #list all the namespaces
kubectl get serviceaccount ns rbac-test             #lists all the service accounts created in ns rbac-test

****** to Check the permission of service account******
kubectl auth can-i --as system:serviceacccont:rbac-test:pod-service-account get pod -n rbac-test          #op: No=not permitted, yes= it has permission

```

Role creating:  
==========
doc: https://kubernetes.io/docs/reference/access-authn-authz/rbac/
```
vi rolecreate.yml
==================
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: default
  name: pod-reader
rules:
- apiGroups: ["*"] # "*" indicates all the api groups # "" indicates the core API group
  resources: ["*"] # "*" indicates all the resounces: pods, deploy, service .. # "pods" indiacates permission only for po 
  verbs: ["*"] # "*" all the verbs # "get", "watch", "list" indicates only these verbs
