terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.22.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
#  access_key = "#####"
#  secret_key = "########"  
}


#provider "aws" {
#    access_key = "${var.aws_access_key}"
#    secret_key = "${var.aws_secret_key}"
#    region = "${var.aws_region}"
#}