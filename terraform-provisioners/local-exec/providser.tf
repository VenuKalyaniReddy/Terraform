terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" ##AWS provider version, not terraform version
    }
  }


backend "s3" {
    bucket = "aidevops-remote-state"
    key = "provisioner"
    region= "us-east-1"
    dynamodb_table= "aidevops-locking"
}

}


provider "aws" {
  region = "us-east-1"
}



