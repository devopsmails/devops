What is the config maps?  
=========================

Configs Maps helps to save non-sensitive info: DB port, DB Username  

ConfigMaps in Kubernetes are a way to store and manage non-sensitive configuration data. They are stored as key-value pairs, and can be used to configure Pods, Deployments,   
and other Kubernetes objects. ConfigMaps are useful for decoupling configuration data from container images, which makes applications more portable and easier to manage.  

Creating a ConfigMap:  
====================
type 1:  
======  
To create a ConfigMap, you can use the """kubectl create configmap""" command. For example,   
the following command creates a ConfigMap called """my-configmap""" with two key-value pairs:  

kubectl create configmap my-configmap --from-literal=key1=value1 --from-literal=key2=value2   
Type 2:   
========  
You can also create a ConfigMap from a file or directory of files.   
For example, the following command creates a ConfigMap called """my-configmap""" from the contents of the directory """/path/to/config/files:"""  

kubectl create configmap my-configmap --from-file=/path/to/config/files  

---------------------------------------------------------------------

What is & why secrets used in K8's?  
=================================  
Secrets in Kubernetes are objects that store sensitive data such as passwords, tokens, and keys.  
They are similar to ConfigMaps, but they are encrypted at rest and in transit.  
This makes them ideal for storing sensitive data that should not be exposed to users or other applications.  

Creating a Secret:  
Type1:  
=====
To create a Secret, you can use the """kubectl create secret """ command.  
For example, the following command creates a Secret called """ my-secret""" with two key-value pairs:  

kubectl create secret generic my-secret --from-literal=key1=value1 --from-literal=key2=value2  

Type2:  
======
You can also create a Secret from a file or directory of files.  
For example, the following command creates a Secret called """my-secret""" from the contents of the directory """/path/to/secret/files:"""  

kubectl create secret generic my-secret --from-file=/path/to/secret/files  

How it protects the sensitive info:  
=> By using Strong RBAC(with least Privilliages) => secrets saves the data in encryption format.  
