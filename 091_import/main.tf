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

# terraform import aws_s3_bucket.bucket bucket-name
resource "aws_s3_bucket" "this" {
  bucket = "3cc41cd7-8457-4119-8cf2-e41cbd69af50"

  versioning {
    enabled = true
  }
}