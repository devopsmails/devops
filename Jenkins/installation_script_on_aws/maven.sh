#https://maven.apache.org/download.cgi

sudo su
cd ~
cd /opt
wget https://dlcdn.apache.org/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz
ll
tar -xvzf apache-maven-3.9.3-bin.tar.gz
mv apache-maven-3.9.3 maven
cd /opt/maven/bin
./mvn -v

#Eviornment variable setup

sudo su
cd ~
ll -a
find / -name java-11* #copy(/usr/lib/jvm/java-11-openjdk-11.0.19.0.7-1.amzn2.0.1.x86_64)#
source .bash_profile
mvn --version
