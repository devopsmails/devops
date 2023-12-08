 Configure SMTP on Grafana server

 ```
vi /etc/grafana/grafana.ini
 ---------------------
Change 1 to 2
 ```
1. #################################### SMTP / Emailing ##########################
[smtp]
;enabled = false
;host = localhost:25
;user =
# If the password contains # or ; you have to wrap it with triple quotes. Ex """#password;"""
;password =
;cert_file =
;key_file =
;skip_verify = false
;from_address = admin@grafana.localhost
;from_name = Grafana
# EHLO identity in SMTP dialog (defaults to instance_name)
;ehlo_identity = dashboard.example.com
# SMTP startTLS policy (defaults to 'OpportunisticStartTLS')
;startTLS_policy = NoStartTLS
```
2.
```
#################################### SMTP / Emailing ##########################
[smtp]
**enabled = true **
**host = smtp.gmail.com:465**
**user = devopsmails1@gmail.com**
# If the password contains # or ; you have to wrap it with triple quotes. Ex """#password;"""
**password = cdcp mrnf snbs wzug**
;cert_file =
;key_file =
**skip_verify = true**
**from_address = devopsmails1@gmail.com**
**from_name = Grafana**
# EHLO identity in SMTP dialog (defaults to instance_name)
;ehlo_identity = dashboard.example.com
# SMTP startTLS policy (defaults to 'OpportunisticStartTLS')
;startTLS_policy = NoStartTLS
```
[emails]
