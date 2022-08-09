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
  count = 2
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  tags = {
    Name = "Server-${count.index}"
  }
}

resource "aws_s3_bucket" "this" {
  bucket = "rodrigopuls-7dj19e27109ey10"
  acl    = "private"
  depends_on = [
    aws_instance.this # will wait for instance creation
  ]
}