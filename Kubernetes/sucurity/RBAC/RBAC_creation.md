```
kubectl create ns rbac-test                          # rbac-test = namespace name
```
Service account creating:  
=======================
doc: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/  
```
vi service_account.yml
===================
apiVersion: v1
kind: ServiceAccount
metadata:
  name: pod-service-account
  namespace: rbac-test
-----------------

kubectl apply -f service_account.yml
kubectl get ns                                      #list all the namespaces
kubectl get serviceaccount ns rbac-test             #lists all the service accounts created in ns rbac-test

****** to Check the permission of service account******
kubectl auth can-i --as system:serviceacccont:rbac-test:pod-service-account get pods -n rbac-test          #op: No=not permitted, yes= it has permission

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
  namespace: rbac-test
  name: testadmin-role
rules:
- apiGroups: ["*"] # "*" indicates all the api groups # "" indicates the core API group
  resources: ["*"] # "*" indicates all the resounces: pods, deploy, service .. # "pods" indiacates permission only for po 
  verbs: ["*"] # "*" all the verbs # "get", "watch", "list" indicates only these verbs
---------------------
kubectl apply -f rolecreate.yml
kubectl auth can-i --as system:serviceacccont:rbac-test:pod-service-account get pod -n rbac-test          #op: No=not permitted as role not bindied with service account 
```
Role binding:  
===========
```
vi rolebinding.yml
==================

apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: testadmin-binding
  namespace: rbac-test
subjects:
- kind: ServiceAccount  # binding service account with rolebinding 
  name: pod-service-account
  apiGroup: ""
roleRef:
  kind: Role          # binding  role with rolebinding 
  name: testadmin-role
  apiGroup: ""
----------------------------
 kubectl apply -f rolebinding.yml
kubectl auth can-i --as system:serviceaccount:rbac-test:pod-service-account get <pods>/<svc>/<deploy>.. -n rbac-test

#op: Yes for all the resournces, as service account & role is properly binded

```

