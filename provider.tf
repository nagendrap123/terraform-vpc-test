terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "nag-devops1"
    key    = "module-vpc"     #we need to change the key value 
    region = "us-east-1"
    dynamodb_table = "nag-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}
