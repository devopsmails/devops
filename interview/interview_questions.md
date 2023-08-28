28/08/2023

1.How do you restrict the port access from linux firewall apart from SG, NACL, VPC?
  ufw would auto installed as firewall
  ufw allow / deny port number

2. How can a user ssh with out using .pem file?
  2 ways possible
    - /etc/ssh/sshd_config
    - PasswordAuthentication yes
      PermitRootLogin yes
      sudo service sshd restart
      ssh username@ec2-instance-ip-address
   ---
   
In the given scenario, it is possible for user Ramu to SSH to the Ubuntu instance without a .pem file if you have previously added their
public key to the instance's authorized_keys file.To do this, you would first need to generate the public key for Ramu's account. 
You can do this by running the following command:

ssh-keygen -t rsa -b 4096
ssh-copy-id ramu@ubuntu-ip
ssh ramu@ubuntu-ip
------------

4. How to make one docker-compose to communicate with other docker-compose file?
  To make one Docker Compose to communicate with other Docker Compose file, you can use the following steps:

Create a common network in the Docker Compose file of one project.
Set the network to connect to in the other project's Docker Compose.
Set up the network for all services we want to be connect.
Here is an example of how to do this:

# Project 1 Docker Compose file
version: '3.7'
services:
  web:
    image: nginx:latest
    networks:
      - common

# Project 2 Docker Compose file
version: '3.7'
services:
  db:
    image: postgres:latest
    networks:
      - common

networks:
  common:

5. java -jar jenkins.war - This commands runs an application but when closes application stops. How to create a service & run  continously?

Create a systemd unit file.
Enable and start the service.
Here is an example of a systemd unit file for a service that runs the java -jar jenkins.war command:

[Unit]
Description=Jenkins Service
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/java -jar jenkins.war
Restart=always

[Install]
WantedBy=multi-user.target
Once you have created the systemd unit file, you can enable and start the service using the following commands:

sudo systemctl enable jenkins.service
sudo systemctl start jenkins.service
----------

6. Have your used apache server like ngix?
