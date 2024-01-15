What is RDS multi AZ?

```
RDS Access ONLY via database CNAME(ENDPOINT). The CNAME will point at the primary instnce. You can't access standby replica for any reason via RDS.
The standby replica cannot be used for extra capacity.
Synchronous Replication = whatever the changes happend to Primary instance will happen to Standby instance.
```

Point to remember: 
```
Multi AZ feature is not free tier, extra infrastructure for standby. Generally, twice the price.
The standby replica can't be accessed directly unless a failure occurs.
Fail over is higly available, not fault tolarant(down time may happen)
This only possible in same region
Backup taken from standby(removes performance impacts)
failure may happen when: AZ outage, primarly failure, manual failover, instance type change, and software patching.
```
