terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA5OYEFMPBSOGMDBVS"
  secret_key = "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"
  }