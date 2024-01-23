What is HELM FILE?
----------
```
Helmfile is a tool used in Kubernetes deployments. 
It's essentially a declarative specification wrapper for deploying distributions of Helm charts.
```
Why HELM FILE?

```
Simplify complex deployments
Increase modularity and reusability
Improved version control and collaboration
CI/CD integration
Dependency management
Secret management
Environment-specific configuration
```

PRE-REQUISITES TO INSTALL HELM FILE

```
Helm charts 
```

HELM FILE INSTALLATION
------------------
```
DOCS:  https://github.com/roboll/helmfile/releases   >> copy amd64 link addr

wget https://github.com/roboll/helmfile/releases/download/v0.144.0/helmfile_linux_amd64
ls
mv helmfile_linux_amd64 helmfile
ls -lart
chmod 777 helmfile

sudo mv helmfile /usr/local/bin         - to run from anywhere in the terminal
ls -lart /usr/local/bin
helmfile version

helm create helloworld

vi helmfile.yaml
----------
INSERT BELOW
---
releases:

  - name: helloworldrelease
    chart: ./helloworld
    installed: true
---- >> SAVE

*****helmfile.yaml & helloworld chart should be on the same directory to execute helmfile sync cmd**
helmfile sync           - It performs actions as per helmfile.yaml(Here it installed)
helm list -a
kubectl get pods
kubectl get svc
    > We can check on dashboard

vi helmfile.yaml
----------
installed: false
>> save

helmfile sync           - It performs actions as per helmfile.yaml(Here it DELETES)
```

INSTALL USING REMOTE HELM CHART ON GITHUB  

```
INSTALL HELM-GIT PLUGIN
----------
Docs: https://github.com/aslafy-z/helm-git

helm plugin install https://github.com/aslafy-z/helm-git --version 0.15.1   
    > installs helm-git plugin

space > helmfile.yaml       - clears the complete file info if already exists
cat helmfile.yaml
vi helmfile.yaml
------
---
repositories:
  - name: helloworld
    url: git+https://github.com/rahulwagh/helmchart@helloworld?ref=master&sparse=0 

releases:
  - name: helloworldreleasedev
    chart: helloworld/helloworld
    installed: true
-------------

helmfile sync
helm list -a

vi helmfile.yaml
----------
installed: false
```
