What is the config maps?  

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
