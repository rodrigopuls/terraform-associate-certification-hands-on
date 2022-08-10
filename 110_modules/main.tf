terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

module "this" {
  source = "./modules/ec2_instance"
}
