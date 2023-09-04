Evolution of Docker?
=================
On Prem Server:(Physcical server)
==============
One OS (10 GB) + one App(10 GB) 
= 60-70% percent space is unutilized

Virtual Machines:
===============
EX: AWS EC2
One phiscical server:
100 GB WITH 100 CPU
---------------------------------------
|  OS 5 GB  |   OS 5 GB  | OS 5 GB    |
|  APP 10 GB|   APP 10GB | APP 10GB   |
|  CPU 10   |    CPU 10  | CPU 10     |
| Instance1 | Instance 2 | Instance 3 |   = 50% space  is unused 
|-------------------------------------|
|      Hypervisor - AWS-Xen           |
|-------------------------------------|
|          OS-UBUNTU                  |
|-------------------------------------|

Containers:
==========
 ""0%""  unused space
---------------------------------------
|  APP 100 MB| APP 100 MB |APP 100 MB |
| con1       | con2       | con3 .... |    
| ----------------------------------- |
|          Docker                     |
|-------------------------------------|
|      Hypervisor - AWS-Xen           |
|-------------------------------------|
|          OS-UBUNTU                  |
|-------------------------------------|

What is Docker ?

docker is a containerazation tool which helps to utilize the space to the fullest.

con:
====
SPOF: 
Single Point of Failure. If Docker engine goes down. All the containers created will go down. 
