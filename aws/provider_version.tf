terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=2.10,<=2.30"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
