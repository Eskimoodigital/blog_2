

# Terraform for Infrastructure Architects - Part 2

#define the terraform providers

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


#define the AWS region

provider "aws" {
    region = "eu-central-1"
}


#define AWS resources


resource "aws_instance" "mcna_ec2" {
    ami = "ami-00f22f6155d6d92c5"
    instance_type = "t2.micro"

}

output "publicdns" {
    value = aws_instance.eskimoo16661.public_dns
}

