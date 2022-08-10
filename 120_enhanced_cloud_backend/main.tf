terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }

  cloud {
    organization = "rodrigopuls"

    workspaces {
      name = "remote-state"
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

  tags = {
    ManagedBy = "Terraform"
  }
}

output "public_ip" {
  value = aws_instance.this.public_ip
}