terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.3.0"
    }
  }
}

provider "aws" {
  version    = "3.3.0"
  region     = "eu-west-1"
  access_key = ""
  secret_key = ""
}
