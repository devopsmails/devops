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

What is Buildah used for?
--------------------


Buildah is an open-source, Linux-based tool used to build Open Container Initiative (OCI)-compatible images. It is a daemon-less tool, which means that it does not require a running daemon to function. This makes it ideal for use in CI/CD pipelines and other environments where daemons are not always available.

Buildah is similar to Docker, but it has some key differences. Buildah does not require a daemon, and it can be used to build images from scratch or from existing images. Buildah is also more flexible than Docker, and it can be used to build images for a variety of platforms, including Linux, Windows, and macOS.

Buildah can be used to:

Build OCI-compatible images
Build images from scratch or from existing images
Build images for a variety of platforms
Integrate with CI/CD pipelines
Automate the build process
