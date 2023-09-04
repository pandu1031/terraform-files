terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Create a VPC
resource "aws_vpc" "firstvpc-demo" {
  cidr_block = "10.0.0.0/16"
}


resource "aws_s3_bucket" "s3-bucket" {
  bucket = "my-tf-test-bucketpandu"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}