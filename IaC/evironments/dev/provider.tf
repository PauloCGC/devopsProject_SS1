terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      version = "3.45.0"
      source = "hashicorp/aws"
    } 
  }
}

provider "aws" {
  region = local.region
}