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

provider "aws" {
  region  = "us-east-2"
  profile = "terraform"
  alias = "aws_east_2"
}

resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  provider = aws
}

resource "aws_instance" "ci_cd" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  provider = aws.aws_east_2
}