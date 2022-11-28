terraform {
  required_version = "~> 1.3.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.40.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.ec2_region["virginia"]
}