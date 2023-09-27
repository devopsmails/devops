```
kubectl create ns rbac-test        # rbac-test = namespace name
```
Service account creating:  
=======================

```
service_account.yml
===================
apiVersion: v1
kind: ServiceAccount
metadata:
  name: pod-service-account
  namespace: rbac-test
