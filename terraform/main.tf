provider "aws" {
  region = var.region
}

terraform {
  required_version = "~> 1.0.11"

  backend "s3" {
    bucket = "toninoes-aws2-infra-tf-state"
    key    = "github-actions-terraform/terraform.tfstate"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
