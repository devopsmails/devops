provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "gabby_dev_instance" {
  ami = "ami-04d1dcfb793f6fa37"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "gabby_dev_s3" {
  bucket = "gabby-dev-s3"
}
