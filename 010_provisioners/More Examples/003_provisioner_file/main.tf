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

resource "aws_instance" "web" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"

  provisioner "file" {
    source      = ""
    destination = ""

    connection {
      type     = "ssh"
      user     = "root"
      password = ""
      host     = ""
    }
  }
}