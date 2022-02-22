provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-teja"
    key    = "sample"
    region = "us-east-1"
  }
}