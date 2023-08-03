terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "ap-south-1"
  # profile = "default"
  access_key = "AKIAQRXKLV2ODLXUHAOI"
  secret_key = "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"

}