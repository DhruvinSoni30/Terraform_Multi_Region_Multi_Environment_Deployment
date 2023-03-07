terraform {
  backend "s3" {
    bucket  = "dhsoni-terraform"
    key     = "us-east-2/stg/terraform.tfstate"
    region  = "us-east-2"
    profile = "default"
  }
}