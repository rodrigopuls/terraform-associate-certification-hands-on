
provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_instance" "this" {
  ami           = "ami-090fa75af13c156b4"
  instance_type = var.instance_type
}
