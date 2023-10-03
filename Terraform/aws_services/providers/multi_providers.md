what is Multi Provders?  
------------------
Multiproviders can also be used to manage resources in different cloud providers.   

For example, the following Terraform code defines two provider aliases, one for the AWS provider and one for the Azure provider:  

```
provider "aws" {
  alias = "aws"
  region = "us-east-1"
}

provider "azurerm" {
  alias = "azure"
}
```
