Version control system:
```
   Sharing code: possible to share code with multiple users
   Versioning: easy to rollback or rollout & track the changes
```
SVN VS GIT:
```
SVN:
  > follows Centralized system.
  > Where we should push & pull the code  from only central server
  > no way for developers  to communicate with each other's code when svn server goes down
GIT:
  > follows Distributed system.
  > Where we should push & pull the code  from only central server
  > Git allows to take n number of copies required(Fork) as a back up for centralized server
```
What is Git & Github?
```
git:
  > Open source
  > on EC2 server installs git asked devlopers to commits git only
  > no UI, Difficult for reviewing, issues tracking, Usability

github:
  > UI enaled, easy code reviewing, issues tracking, usability
Hosting platform
Collaboration features
Social coding platform
```
GIT BRANCH:
-----
```
To add new features to main/master (branch) code more secure & effective use the branches
   > First creates a new branch called v2/feature. then code & test. then merge with main branch
```
Git Branching Strategy
----------------
```
master branch: always update
feature branch: new feature want to add
release branch: release app to customer from this branch
hot fix branch: error fixing
```
Git commands
```
git install
git init
mkdir app.com
cd app.com
vi calculator.sh(x=a+b)
git add .
git commit
git push -u origin main
vi calculator.sh(x=a+b+c)
git diff
git log
git reset --hard #commit id - to go back to previous version
cat calculator.sh
git remote add name url
git clone url
git clone url(https) If it ssh >> ssh-keygen copy id_rsa.pub >> github settings >>  ssh >> save with the name

git branch
git branch #name
git checkout -b #name
git checkout main
git log      - shows only main fetaure none other branch features
git log feature      = git checkout feature && git log
git log feature --oneline --graph      - shows in single lined commits
```
clone vs fork
----
```
clone: 
   > Download a repository
Fork:
   > Copies a repo
```
Git cherry-pick vs merge vs rebase
----
```
git cherry-pick:
   > Helps to pick a single commit from any other branch
   > ex: feature branch has 3 commit but main has only 1 commit
      > git checkout feature - switches to feature branch
      > git log   - shows all the commits (copy one commit id)
      > git checkout main
      > git cherry-pick #commitid
      > git log      - now we can see cheery picked commit with the new commit id
      > git cherry-pick #commitid and #commitid
```

