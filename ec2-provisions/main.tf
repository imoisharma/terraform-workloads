terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.56"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
    profile= "default"
    region = "us-east-1"
    
}

# Create AWS resource
resource "aws_instance" "ubuntu-server-virgina-region" {
    ami="ami-0c2b8ca1dad447f8a"
    instance_type="t2.micro"
    tags = {
        Name= "ubuntu-server-sydney",
        Department="IT"
    }
}