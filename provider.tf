terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.5.0"
    }
  }

  backend "s3" {
    bucket = "tf-backend-alan"
    key    = "tfstate/terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "tf-state-alan"
  }
}

provider "aws" {
  region = "us-west-2"
}