
YT: https://youtu.be/xY6Ic7Igzck?si=MyOh4yZNJPqZIBF4

Kubernets Services: 

 
Why Services: 
------------

Load Balancing: 
  Trafic will route to one pod to another pods  

Services Discovery (Through Labels & Selectors):  
  When pod goes down, Using Auto healing creates a new Pod(Rs) but ip changes not possible to route trafic. So Labels is used.  
  
Expose to world: 
  Can't be provided  to user to access a new ip address after every auto-Healing. So will be provided with elastic ip of Load Balancer to access from anywhere.  
'''  
Service Types:  
------------
Cluster IP:
  Allows access only who has access to Kubenets Cluster.  - Inside cluster

Node port:  
  Allows access only who has the Node (server/Instance) access - Inside Organization

Load Balancer:  
  To the whole outer world can be accessed.  

code  
        This is a preformatted text block.

              All whitespace characters will be preserved.

| Column 1                        | Column 2                       |
|---------------------------------|--------------------------------|
| This is a cell with two spaces between the words.        | #




# Readme

        This is a preformatted text block.

              All whitespace characters will be preserved.

| Column 1                        | Column 2                       |
|---------------------------------|--------------------------------|
| This is a cell with two spaces between the words.        |


'''

num = int(input("Enter a number: "))
if (num % 2) == 0:
   print("{0} is Even".format(num))
else:
   print("{0} is Odd".format(num))
