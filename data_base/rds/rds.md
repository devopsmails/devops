3 tier architecture:
```
Webserver
Application
Data Basa(Best if it's on other instance)
```
Why you should run RDS on EC2?
```
Access to the DB instance OS
Advanced DB options tuning(DBROOT)
Vendor Demonds
DB or DB version that AWS doesn't provide.
If needed a specific version of an OS & DB that AWS doesn't provide.
```
Why you shouldn't run RDS on EC2?
```
Admin overhead
Backup & Disaster Recovery(DR)
EC2 is running in single AZ
Will miss out features from AWS DB products
skills & setup time to monitor is required.
Performance will be slower than AWS Options.
```
How to install DB on EC2?
---------------------
Instance: 
```
AWS EC2 AMI INSTANCES with t2.nano, sg: mysql:3306, ssh, http, https
```
Begin Configuration :
```
sudo su -
yum -y install mariadb-server wget
systemctl enable mariadb
systemctl start mariadb
yum -y update
```
N: Not for prod use with hard code info  
Set Environmental Variables:
```
DBName=ec2db
DBPassword=admin123456
DBRootPassword=admin123456
DBUser=ec2dbuser
```
Database Setup on EC2 Instance:
```
echo "CREATE DATABASE ${DBName};" >> /tmp/db.setup
echo "CREATE USER '${DBUser}' IDENTIFIED BY '${DBPassword}';" >> /tmp/db.setup
echo "GRANT ALL PRIVILEGES ON *.* TO '${DBUser}'@'%';" >> /tmp/db.setup
echo "FLUSH PRIVILEGES;" >> /tmp/db.setup
mysqladmin -u root password "${DBRootPassword}"
mysql -u root --password="${DBRootPassword}" < /tmp/db.setup
rm /tmp/db.setup
```
Adding some dummy data to the Database inside EC2 Instance:
```
mysql -u root --password="${DBRootPassword}"
USE ec2db;
CREATE TABLE table1 (id INT, name VARCHAR(45));
INSERT INTO table1 VALUES(1, 'Virat'), (2, 'Sachin'), (3, 'Dhoni'), (4, 'ABD');
SELECT * FROM table1;
```
Migration of Database in EC2 Instance to RDS Database:
```
mysqldump -u root -p ec2db > ec2db.sql
mysql -h <replace-rds-end-point-here> -P 3306 -u rdsuser -p rdsdb < ec2db.sql
mysql -h <replace-rds-end-point-here> -P 3306 -u rdsuser -p
USE rdsdb
SELECT * FROM table1;
```
