YT: https://youtu.be/FZPTL_kNvXc


VPC(Isolated Cloud Resource) Creating:
--

vpc dashboard >> vpc create >> vpc settings: 
Resources to create: VPC and more 
Name tag auto-generation: aws_prod 
IPv4 CIDR block: #10.0.0.0/16 
IPv6 CIDR block>:
  check: No IPv6 CIDR block
uncheck: Amazon-provided IPv6 CIDR block
Tenancy: Default
Number of Availability Zones: 2
Number of public subnets: 2
Number of private subnets: #2
NAT gateways: 1 per AZ
VPC endpoints: #none
DNS options: 
  check: Enable DNS hostnames
  check: Enable DNS resolution
click: Create VPC
