
sudo hostnamectl set-hostname JENKINS-SERVER    - To change the hostname to Jenkins_server   
sudo systemctl reboot                           - To reboot the system  
find / -name java-11*                           - To find the path of a file  
source .bash_profile                            - Update the changes to a file  

COPY:  
--
Secure Copy from local to remote server:  
scp  -i /Users/sures/Downloads/key1.pem /Users/sures/Downloads/key1.pem ubuntu@54.234.208.15:/home/ubuntu  
    (Key must be as chomod 0600 #key.pem)

SSH:  
---  
ssh -i #key.pem ubuntu@#publicip or Private ip   


NODE:
----
df - disk free
nproc - shows how many processors are in the instance
free - show memory detials
top - What are the processors running, causing more usage of memory..
