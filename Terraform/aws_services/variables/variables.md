Why Variables used ?
---------------------

By using Terraform variables, you can make your configuration more reusable, maintainable, and consistent.  
Terraform variables can be used to define a wide variety of values, and they can be used in any part of your Terraform configuration.   

Variable Block:  
-------------
```
variable "instance_type" {
  type = string
  description = "The type of EC2 instance to launch."
  default = "t2.micro"
}
```
```variable``` is used to declare an input variable named ```instance_type```.  
```description``` provides a human-readable description of the variable.  
```type ``` specifies the data type of the variable:
  > ```string```: A sequence of Unicode characters.  
  > ```number```: A numeric value.   
  > ```bool```: A boolean value, either true or false.  
  > ```list```: A sequence of values.  
  > ```map```: A collection of key-value pairs.  
  > ```set```: A collection of unique values.  
  > ```object```: A collection of named attributes.  
  >```tuple:``` A collection of values with a specific order.  
```default``` provides a default value for the variable, which is optional.  

Attaching Variables in resources:
------------------------------
```
resource "aws_instance" "example" {
  ami = "ami-01234567890abcdef0"
  instance_type = var.instance_type   #### Attaching variable here ####
}
```

Variable Types:
============== 
1. Input Variables  
2. Output Variables


