provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-teja"
    key    = "roboshop/terraform.tfstate"
    region = "us-east-1"
  }
}