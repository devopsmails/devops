Netflix Clone CI/CD Pipeline | Jenkins | Docker | Kubernetes | Monitoring | DevSecOps  
```
Doc Blog: https://mrcloudbook.hashnode.dev/devsecops-netflix-clone-ci-cd-with-monitoring-email
yt: https://youtu.be/pbGA-B_SCVk?si=MZhdC6XCTZABgIn-
```
Instance:
---------
on Jenkins
```
aws-ec2-ubuntu-22.04
all-traffic
t2.large
30 GB mem
```
Long Term Support release
java installation:
-------
```
sudo apt update -y
sudo apt install openjdk-17-jdk -y
```
Debian/Ubuntu
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins

jenkins --version

sudo apt update -y
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
newgrp docker
docker version
sudo chmod 777 /var/run/docker.sock
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
docker ps
j-INSTANCE-p-IP:8080
COPY-PASTE THE INITIAL ADMIN PASSWORD
INSTALL SUGGESTED PLUGINS
SKIP & CONTINUE AS ADMIN
ENTER THE INTITIAL ADMIN PWD
  username: "admin"
start using jenkins

Change the admin pwd on jenins  Dash-board:
-------------------------------------
admin tab >>
configure >>
Password >>
  enter passwd: Admin
  confirm pwd : Admin
  apply & save
---------
j-INSTANCE-p-IP:8080
UNAME: Admin
pwd: Admin
```
