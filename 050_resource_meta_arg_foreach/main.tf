terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_instance" "this" {
  for_each = {
    t_one = "t1.micro"
    t_two = "t2.micro"
  }
  ami           = "ami-090fa75af13c156b4"
  instance_type = each.value
}

output "public_ip" {
  value = values(aws_instance.this)[*].public_ip
}