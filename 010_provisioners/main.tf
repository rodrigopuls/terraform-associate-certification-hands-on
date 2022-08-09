terraform {
  # cloud {
  #   organization = "rodrigopuls"

  #   workspaces {
  #     name = "provisioners"
  #   }
  # }

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

resource "aws_security_group" "this" {
  name        = "sg_my_server"
  description = "Allow http inbound traffic"
  vpc_id      = data.aws_vpc.this.id

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
  }

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["187.39.16.212/32"]
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
  }

  egress {
    description      = "Outgoing traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    prefix_list_ids  = []
  }
}

resource "aws_instance" "this" {
  ami             = "ami-090fa75af13c156b4"
  instance_type   = "t2.micro"
  key_name        = "terraform"
  security_groups = [aws_security_group.this.name]
  user_data       = file("./userdata.yml")

  # Run on local state to generate file
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }

  provisioner "remote-exec" {
    inline = [
      "echo ${self.private_ip} >> /home/ec2-user/private_ips.txt"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("./terraform.pem")
    }
  }

  provisioner "file" {
    content     = "ami used: ${self.ami}"
    destination = "/home/ec2-user/file-provisioner.txt"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("./terraform.pem")
    }
  }

  tags = {
    ManagedBy = "Terraform"
  }
}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "aws ec2 wait instance-status-ok --instance-ids=${aws_instance.this.id} --profile=terraform"
  }
  depends_on = [
    aws_instance.this
  ]
}

data "aws_vpc" "this" {
  state = "available"
  # id = "vpc-1ac55267"
}

output "public_ip" {
  value = aws_instance.this.public_ip
}
