terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
  }
}
}
provider "aws" {
  region = var.region
}

module "webapp" {
  source  = "app.terraform.io/ACS-Kebs/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
