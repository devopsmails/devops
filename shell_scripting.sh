What is shell script?

Consist a set of commands to perform a task.
All the executes sequentially.
Some tasks like file manipulations, Program Executions, User interactions, Automation Tasks can be done. 

Types of Shells?

Bourne Shell
Bourne Again Shell
Korn Shell
C Shell
Tcsh Shell

what is #!/bin/bash ? (shebang)
used to instruct the operating system to use bash as a command interpreter. 

Commands:
========

PWD                                : Present Workind Directory
ls -lrt                            : List all the directories including hidden
echo $0                            : Shows the which shell it's using as 

Creating Variables:
===========
vi Var.sh                           : vi = editor & creates & opens a file var.sh

#!/bin/bash

name=suresh
youtube=cinemacommunity

ls -lrt                            : lists file with permissions
chmod u+x var.sh                   : Gives the executable permisssion
./ var.sh                          : Execute the command in the file var.sh
sh var.sh                          : Execute the command in the file var.sh
cat var.sh                         : view the file info


Dynamic Variables: Taking the input from the User & take as a variable
=================
vi read.sh

echo Enter your name:
read name
echo hi i am $name and this is dynmic variable values assigning


echo                               : Print the value
read                               : Read the value assigned
chmod u+x read.sh                  : Gives the executable permisssion
./ read.sh                        

output:
------

Enter your name:                  (We'll Enter the input)
Suresh
hi i am Suresh and this is dynmic variable values assigning
