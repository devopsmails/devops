rds_db_setup_on_ec2:  
N: Before setup dirctly the RDS need create DB subnet groups.  

DB subnets groups set up: 
```
AWS CONSOLE >> RDS >> SUBNET GROUPS >> CREATE: DB Subnet groups
NAME: dev-rds
VPC: Custom / default
AZ: Select AZ required
subnets will be disploayed in available AZ
create
```
RDS creation:
-----------
```
AWS CONSOLE >> RDS >> Databases >> create database:
  Choose a database creation method: Standard
  Engine options: MariaDB
  Engine version: #Select the version needed
  Templates: Free tier(practice)
  Settings:
  --------
    DB instance identifier: #dev-rds-database
    Credentials Settings:
      Master username: rdsuser
      Master & confirm password: admin123645
  Instance configuration:
  Burstable classes: db.t2.micro
  Storage: General purpose ssd gp2
  Allocated storage: 20
  Storage autoscaling:
  Disble = no cost
  Connectivity:
    Compute resource:
      Don’t connect to an EC2 compute resource
    Network type:
      IPv4
    Virtual private cloud (VPC):
      default/custom
    DB subnet group:
      dev-rds
    Public access: No
    VPC security group (firewall):
        open 3306
    Availability Zone: No preference
  Database authentication: Password authentication
  Monitoring: Disable = No cost
  Database options:
  Initial database name: employee
  Backup:
    diable = no cost
  Maintenance:
  Enable: Enable auto minor version upgrade
  Maintenance window:
  No preference = AWS will decide the slot
  Deletion protection
  enable = Not possible to delete accidentaly(prod)

  create database
```

    
 
