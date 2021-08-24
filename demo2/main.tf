terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  
}
resource "aws_s3_bucket" "jyobucket" {
  bucket = "jyomishra-tf"
  acl    = "private"

  tags = {
    Name = var.s3_name
   
  }
}
