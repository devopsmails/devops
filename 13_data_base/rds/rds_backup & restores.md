
RPO - Recovry Point Objective
```
    Time between last backup & when the failure occured.
    amount of maximum data loss
    infuence technical solution & data lost
    Business usually provides RPO
```
RTO - Recovery Time Objective
```
    Time between DR(Disaster Recovery) event and full recovery
    influenced by process, staff, tech & documentation.
```

RDS Backups
```
First snap is full size of consumed data
manual snapshots will remain in aws account even after the life of snapshot. These need be deleted manually.
Autometic snapshots:
Every 5 miinutes trnsaltes logs are saved to S3. A database can then be resored to a 5 min snapshot in time.
Autometic cleanups can be anywhere from 0 to 35 days.
When database is deleted, they can retained but expired based on retention period.
```

Points to remember
```
When performing a resore, RDS creates a nes RDS with a new endpoint address.
Backups are restored and transaction logs are replayed to bring DB to desired point in time.
Resore aren't fast(RTO).
```

RDS Read-Replicas;

```
Follows Asynchronous replication = once the primary disk is written then it pushes to stand by.
posibility of little lag.
This can created in a same region or diffent region which is called Cross Region replication.
```
