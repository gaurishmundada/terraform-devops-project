terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.35.1"
    }
  }

  backend "s3" {
    bucket = "terraform-state-gaurish-mundada-2026"
    key = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "Gaurish-Mundada-table"
  }
}