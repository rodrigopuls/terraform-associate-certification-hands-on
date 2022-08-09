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
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
    prevent_destroy = false
    ignore_changes = [
      tags
    ]
  }
}
