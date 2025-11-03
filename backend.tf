provider "aws" {
  region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket         = "abbz-tfstate-bucket-123"
    key            = "3tier/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "dynamodbb-terraform-state-lock"
    encrypt        = true
  }
}
