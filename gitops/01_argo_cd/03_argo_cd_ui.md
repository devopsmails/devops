01_config apps to argocd to deploy on minikube cluster for everychange with versioning
---------------------
```
argo cd dash board:
-------------
create app:
    > GENERAL:
        > Application Name: first_argo_cd_dev
        > Project Name: default
        > SYNC POLICY: Automatic
        > SOURCE:
            Repository URL: Git repo >> code >> https code: ex: https://github.com/devopsmails/argocd-example-apps.git
            Revision: HEAD
            Path: Deploymentfilepath ex: guestbook
        > DESTINATION: Cluster URL : ex: default minikube cluster
        > Namespace: ex: dev or pprod ( will wail until namespace is created to deploy)
        >> create

```
