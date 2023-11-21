Netflix Clone CI/CD Pipeline | Jenkins | Docker | Kubernetes | Monitoring | DevSecOps  
```
Doc Blog: https://mrcloudbook.hashnode.dev/devsecops-netflix-clone-ci-cd-with-monitoring-email
yt: https://youtu.be/pbGA-B_SCVk?si=MZhdC6XCTZABgIn-
```
Instance:
---------
on Jenkins cli
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
On Sonarqube webbrowser
```
j-Instance_p-ip:9000
Uname: admin
pwd: admin

Update new pwd:
---------------
old pwd: admin
new pwd: Admin
confirm pwd: Admin
update
```
on jenkins CLI  
------------
Install Trivy  
---------------
```
vi trivy.sh
----------
sudo apt-get install wget apt-transport-https gnupg lsb-release -y
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list
sudo apt-get update
sudo apt-get install trivy -y
----------
chmod +x trivy.sh
sh trivy.sh
```

Create TMDP API KEY:
----------------
```
Uname: sureshdev1
PWD: Devops@1
Account Profile pic >> Settings >> API:
  Create >>: Developer: Accept >>
  Type of USE: Desktop Application
  Application Name: Demo-app
  submit>>
  API Key: ff7b18fd132db08968c63c42be8fc12f
``` 
Step 4 — Install Prometheus and Grafana On the new Server:
First of all, let's create a dedicated Linux user sometimes called a system account for Prometheus. Having individual users for each service serves two main purposes:

It is a security measure to reduce the impact in case of an incident with the service.

It simplifies administration as it becomes easier to track down what resources belong to which service.

To create a system user or system account, run the following command:
```
sudo useradd \
    --system \
    --no-create-home \
    --shell /bin/false prometheus
```
```--system - Will create a system account.
--no-create-home - We don't need a home directory for Prometheus or any other system accounts in our case.
--shell /bin/false - It prevents logging in as a Prometheus user.
Prometheus - Will create a Prometheus user and a group with the same name.

Let's check the latest version of Prometheus from : https://prometheus.io/download/

You can use the curl or wget command to download Prometheus.
```
```
wget https://github.com/prometheus/prometheus/releases/download/v2.48.0/prometheus-2.48.0.linux-amd64.tar.gz
tar -xvf prometheus-2.48.0.linux-amd64.tar.gz
```
Usually, you would have a disk mounted to the data directory. For this tutorial, I will simply create a /data directory. Also, you need a folder for Prometheus configuration files.
```
sudo mkdir -p /data /etc/prometheus
```
Now, let's change the directory to Prometheus and move some files.
```
cd prometheus-2.48.0.linux-amd64
```
First of all, let's move the Prometheus binary and a promtool to the /usr/local/bin/. promtool is used to check configuration files and Prometheus rules.
```
sudo mv prometheus promtool /usr/local/bin/
```
Optionally, we can move console libraries to the Prometheus configuration directory. Console templates allow for the creation of arbitrary consoles using the Go templating language. You don't need to worry about it if you're just getting started.
```
sudo mv consoles/ console_libraries/ /etc/prometheus/
```
Finally, let's move the example of the main Prometheus configuration file.
```
sudo mv prometheus.yml /etc/prometheus/prometheus.yml
```
To avoid permission issues, you need to set the correct ownership for the /etc/prometheus/ and data directory.
```
sudo chown -R prometheus:prometheus /etc/prometheus/ /data/
```
You can delete the archive and a Prometheus folder when you are done.
```
cd
rm -rf prometheus-2.47.1.linux-amd64.tar.gz
prometheus --version
prometheus --help
```
We're going to use Systemd, which is a system and service manager for Linux operating systems. For that, we need to create a Systemd unit configuration file.
```
sudo vim /etc/systemd/system/prometheus.service
```
prometheus.service
```
[Unit]
Description=Prometheus
Wants=network-online.target
After=network-online.target

StartLimitIntervalSec=500
StartLimitBurst=5

[Service]
User=prometheus
Group=prometheus
Type=simple
Restart=on-failure
RestartSec=5s
ExecStart=/usr/local/bin/prometheus \
  --config.file=/etc/prometheus/prometheus.yml \
  --storage.tsdb.path=/data \
  --web.console.templates=/etc/prometheus/consoles \
  --web.console.libraries=/etc/prometheus/console_libraries \
  --web.listen-address=0.0.0.0:9090 \
  --web.enable-lifecycle

[Install]
WantedBy=multi-user.target
```
```
Let's go over a few of the most important options related to Systemd and Prometheus. Restart - Configures whether the service shall be restarted when the service process exits, is killed, or a timeout is reached.
RestartSec - Configures the time to sleep before restarting a service.
User and Group - Are Linux user and a group to start a Prometheus process.
--config.file=/etc/prometheus/prometheus.yml - Path to the main Prometheus configuration file.
--storage.tsdb.path=/data - Location to store Prometheus data.
--web.listen-address=0.0.0.0:9090 - Configure to listen on all network interfaces. In some situations, you may have a proxy such as nginx to redirect requests to Prometheus. In that case, you would configure Prometheus to listen only on localhost.
--web.enable-lifecycle -- Allows to manage Prometheus, for example, to reload configuration without restarting the service.

To automatically start the Prometheus after reboot, run enable.
```
```
sudo systemctl enable prometheus
sudo systemctl start prometheus
sudo systemctl status prometheus
```

Suppose you encounter any issues with Prometheus or are unable to start it. The easiest way to find the problem is to use the journalctl command and search for errors.
```
journalctl -u prometheus -f --no-pager
```

Now we can try to access it via the browser.
```
<public-ip:9090>
```
Go to status >> Targets = How many are connected for monitoring
-------------------
Install Node Exporter on Ubuntu 22.04
---------------------------------
Next, we're going to set up and configure Node Exporter to collect Linux system metrics like CPU load and disk I/O. Node Exporter will expose these as Prometheus-style metrics. Since the installation process is very similar, I'm not going to cover as deep as Prometheus.

First, let's create a system user for Node Exporter by running the following command:

```
sudo useradd \
    --system \
    --no-create-home \
    --shell /bin/false node_exporter

```
You can download Node Exporter from the same page.

Use the wget command to download the binary.
```
wget https://github.com/prometheus/node_exporter/releases/download/v1.6.1/node_exporter-1.6.1.linux-amd64.tar.gz
```
Extract the node exporter from the archive.
```
tar -xvf node_exporter-1.6.1.linux-amd64.tar.gz
```
Move binary to the /usr/local/bin.
```
sudo mv \
  node_exporter-1.6.1.linux-amd64/node_exporter \
  /usr/local/bin/
```
Clean up, and delete node_exporter archive and a folder.

```
rm -rf node_exporter*
```
Verify that you can run the binary.
```
node_exporter --version
```
Node Exporter has a lot of plugins that we can enable. If you run Node Exporter help you will get all the options.


```
node_exporter --help
```
--collector.logind We're going to enable the login controller, just for the demo.

Next, create a similar systemd unit file.
```
sudo vim /etc/systemd/system/node_exporter.service
```
```
node_exporter.service

[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

StartLimitIntervalSec=500
StartLimitBurst=5

[Service]
User=node_exporter
Group=node_exporter
Type=simple
Restart=on-failure
RestartSec=5s
ExecStart=/usr/local/bin/node_exporter \
    --collector.logind

[Install]
WantedBy=multi-user.target
```

Replace Prometheus user and group to node_exporter, and update the ExecStart command.
To automatically start the Node Exporter after reboot, enable the service.
```
sudo systemctl enable node_exporter
```
Then start the Node Exporter.
```
sudo systemctl start node_exporter
```
Check the status of Node Exporter with the following command:
```
sudo systemctl status node_exporter
```
If you have any issues, check logs with journalctl
```
journalctl -u node_exporter -f --no-pager
```
At this point, we have only a single target in our Prometheus. There are many different service discovery mechanisms built into Prometheus. For example, Prometheus can dynamically discover targets in AWS, GCP, and other clouds based on the labels. In the following tutorials, I'll give you a few examples of deploying Prometheus in a cloud-specific environment. For this tutorial, let's keep it simple and keep adding static targets. Also, I have a lesson on how to deploy and manage Prometheus in the Kubernetes cluster.

To create a static target, you need to add job_name with static_configs.
```
sudo vim /etc/prometheus/prometheus.yml


prometheus.yml
  - job_name: node_export
    static_configs:
      - targets: ["localhost:9100"]
```

By default, Node Exporter will be exposed on port 9100.

Since we enabled lifecycle management via API calls, we can reload the Prometheus config without restarting the service and causing downtime.

Before, restarting check if the config is valid.
```
promtool check config /etc/prometheus/prometheus.yml
```
Then, you can use a POST request to reload the config.
```
curl -X POST http://localhost:9090/-/reload
```

Check the targets section
```
http://<ip>:9090/targets
```
