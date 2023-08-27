
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

process:
-------
ps -df - lists all the running process in a running format
ps -df | grep "amazon or ###" - lists only related to amazon

pipe(|) - pipe sends the first command output second command
-----
ps -df | grep "amazon or ###" - lists only related to amazon
vi test.sh
----
echo 1
echo 11
echo 12
echo 59
echo 60

./test.sh | grep 1
result: 
--------
1
11
12

AWK:
--
ps -df |grep "amazon" | awk -F " " '{print $1}'    - print all the process name with amozon of column 1  

Logfiles:
--------
cat /var/log/syslog | grep "error" - shows only the log files filterd with error from syslog

curl: to downalod or Retrive the info from internet or URL
--
curl https://us-east-1.console.aws.amazon.com/ec2-instance-connect/ssh?connType=standard&instanceId=i-05b0d00d364ba627d&osUser=ubuntu&region=us-east-1&sshPort=22#/ 
| grep "error"  


man - to view the details info of any command
----
man cat
man grep
