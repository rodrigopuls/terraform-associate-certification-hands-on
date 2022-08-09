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
}

# trigger a resource reimplementation
resource "null_resource" "this" {
  triggers = {
    cluster_id = ""
  }

  connection {
    host = ""
  }

  provisioner "local-exec" {
    command = "echo hello world!"
  }
}