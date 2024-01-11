What is argo cd?

```
Argo CD is an open-source, declarative GitOps continuous delivery (CD) tool for Kubernetes. 
It focuses on automating your application deployments and configuration management using Git as the single source of truth.
```
argocd type tools = Flux, spinnakar, Jenkinx


GitOps - Architecture:
![image](https://github.com/devopsmails/devops/assets/119680288/d0c0f755-7158-43cf-9aa1-645840905927)


```
API Server: 
    Acts as the central access point, processing API requests from the CLI, UI, and CI/CD tools.
Repository Server: 
    Maintains a local cache of the Git repository containing application manifests.
Application Controller: 
    Monitors running applications and compares their current state to the desired state specified in the repository. Trigger updates if necessary.
Resource Event Watcher: 
    Watches for Kubernetes resource events and updates the application controller about state changes.
Metrics Server: 
    Aggregates and exposes application and infrastructure metrics for monitoring.
UI (Optional): 
    Web interface for managing applications, resources, and cluster configurations.
```
