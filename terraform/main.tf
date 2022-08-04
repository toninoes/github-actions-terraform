provider "aws" {
  region  = var.region
  #profile = var.profile
}

terraform {
  required_version = "~> 1.0.11"

  backend "s3" {
    bucket  = "toninoes-aws2-infra-tf-state"
    key     = "github-actions-terraform/terraform.tfstate"
    region  = "eu-west-1"
    profile = "toninoes-aws2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
