terraform {
  required_version = "~> 0.14"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket = "${tfstatebucket_name}"
    key    = "test/terraform.tfstate"
    region = "${region}"
  }
}

provider "aws" {
  region = "${region}"
}
