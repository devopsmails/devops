```
O-link: https://www.splunk.com/en_us/sign-up.html?redirecturl=https://www.splunk.com/
YT: https://youtu.be/njTY4tf7ajg?si=scaeCYTysr73W9jG  
```
aws-ec2-ubuntu-20.04:
--------------
```
N: splunk
ami: ubuntu:22.04
t2.medium
mem: 24 GB
PORTS: 8000
```
Splunk Download:  
------------
```
signin >>
products >> 
Free trails & Downloads >>
splunk Enterprise: Free Trail >>
linux >>
debian download >>
accept >>
Download via CMD LINE >>
Copy the command and paste it on ubuntu linux >>
```
Commands on splunk:
------------------
```
wget -O splunk-9.1.1-64e843ea36b1-linux-2.6-amd64.deb "https://download.splunk.com/products/splunk/releases/9.1.1/linux/splunk-9.1.1-64e843ea36b1-linux-2.6-amd64.deb"

sudo dpkg -i splunk-9.1.1-64e843ea36b1-linux-2.6-amd64.deb

sudo /opt/splunk/bin/splunk enable boot-start

Enter continuosly till 100%
yes
admin username: adminsuresh
PWD: adminsuresh

sudo ufw allow openSSH
sudo ufw allow 8000
sudo ufw status
sudo ufw enable
sudo ufw status

sudo /opt/splunk/bin/splunk start

webbroswer:
PublicIP:8000
ENTER: USERNAME(adminsuresh) & PWD(adminsuresh)

wait: 1 minute
can see Splunk Dash Board

```
Splunk Dash Board:
-------------
Jenkins installation on spluck dashboard:  
```
click: apps >> Find more apps >>
Search: Jenkins >> will get: ""Splunk App for Jenkins"" >>
install >>
splunk enterprise login:
username: devopsmails1@gmail.com #(splunk enterprise login CREDS)
pwd: Devops@Devops1 #(splunk enterprise login CREDS) >>
Done >>
Click: Splunk Enterprise >> can see ""Splunk App for Jenkins"" added.
```
jenkins config:
---------
```
splunk Dash board >>
settings tab >>
Data >> Data Input >>
http Event Collector >>
Global settings tab >>
enabled >> uncheck: Enable SSL(for practice purpose) >>
port: same (8088) >>
save >>
------------
new token tab >>
name: Jenkins >>
next tab >>
Review tab >>
submit tab >>
search tab >> token would have been createed
----
settings tab >> 
Data >> Data Input >>
http Event Collector >> we can see the token created >>
