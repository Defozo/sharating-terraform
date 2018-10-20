provider "aws" {
  region = "eu-west-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloudfront_certificates_region"
}

terraform {
  backend "s3" {
    bucket         = "sharating-terraform"
    key            = "development.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "sharating_development_terraform_statelock"
  }
}