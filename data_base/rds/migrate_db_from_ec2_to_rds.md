How to migrate DB from ec2 to RDS?
```
STEP1: Get the dump of your existing DB on EC2
STEP2: Connect to your RDS DB instance
STEP3: Migrate the DB dump that you have taken in step1 to RDS
STEP4: connect to RDS & Varify if the data is available.
```
Migration of Database in EC2 Instance to RDS Database:  
STEP1: Get the dump of your existing DB on EC2

```
mysqldump -u root -p ec2db > ec2db.sql
```

STEP2: Connect to your RDS DB instance  
STEP3: Migrate the DB dump that you have taken in step1 to RDS  
```
mysql -h <replace-rds-end-point-here> -P 3306 -u rdsuser -p rdsdb < ec2db.sql
```

STEP4: connect to RDS & Varify if the data is available.
```
mysql -h <replace-rds-end-point-here> -P 3306 -u rdsuser -p
USE rdsdb
SELECT * FROM table1;
```
