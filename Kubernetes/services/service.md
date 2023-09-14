
YT: https://youtu.be/xY6Ic7Igzck?si=MyOh4yZNJPqZIBF4

Kubernets Services: 

public class Main {

  public static void main(String[] args) {

    // year to be checked
    int year = 1900;
    boolean leap = false;

    // if the year is divided by 4
    if (year % 4 == 0) {

      // if the year is century
      if (year % 100 == 0) {

        // if year is divided by 400
        // then it is a leap year
        if (year % 400 == 0)
          leap = true;
        else
          leap = false;
      }
      
      // if the year is not century
      else
        leap = true;
    }
    
    else
      leap = false;

    if (leap)
      System.out.println(year + " is a leap year.");
    else
      System.out.println(year + " is not a leap year.");
  }
}
~~~

~~~
 
Why Services: 
------------

Load Balancing: 
  Trafic will route to one pod to another pods  

Services Discovery (Through Labels & Selectors):  
  When pod goes down, Using Auto healing creates a new Pod(Rs) but ip changes not possible to route trafic. So Labels is used.  
  
Expose to world: 
  Can't be provided  to user to access a new ip address after every auto-Healing. So will be provided with elastic ip of Load Balancer to access from anywhere.  
'''  
Service Types:  
------------
Cluster IP:
  Allows access only who has access to Kubenets Cluster.  - Inside cluster

Node port:  
  Allows access only who has the Node (server/Instance) access - Inside Organization

Load Balancer:  
  To the whole outer world can be accessed.  

code  
        This is a preformatted text block.

              All whitespace characters will be preserved.

| Column 1                        | Column 2                       |
|---------------------------------|--------------------------------|
| This is a cell with two spaces between the words.        | #




# Readme

        This is a preformatted text block.

              All whitespace characters will be preserved.

| Column 1                        | Column 2                       |
|---------------------------------|--------------------------------|
| This is a cell with two spaces between the words.        |


```python
def my_function(arg1, arg2):
    """This is a Python example code."""
    # This is a comment.
    print(arg1 + **arg2**)

if __name__ == '__main__':
    my_function(1, 2) ```
-------------------
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
