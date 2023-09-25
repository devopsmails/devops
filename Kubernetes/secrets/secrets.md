What is & why secrets used in K8's?  
--------------------------
Secrets in Kubernetes are objects that store sensitive data such as passwords, tokens, and keys.   
They are similar to ConfigMaps, but they are encrypted at rest and in transit.   
This makes them ideal for storing sensitive data that should not be exposed to users or other applications.   

Creating a Secret:   
----------------
Type1:  
-----
To create a Secret, you can use the """kubectl create secret """ command.   
For example, the following command creates a Secret called """ my-secret""" with two key-value pairs:  

kubectl create secret generic my-secret --from-literal=key1=value1 --from-literal=key2=value2  
 
Type2:    
------    
You can also create a Secret from a file or directory of files.   
For example, the following command creates a Secret called """my-secret""" from the contents of the directory """/path/to/secret/files:"""  

kubectl create secret generic my-secret --from-file=/path/to/secret/files  
