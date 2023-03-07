terraform {
  backend "s3" {
    bucket  = "dhsoni-terraform"
    key     = "us-east-2/prod/terraform.tfstate"
    region  = "us-east-2"
    profile = "default"
  }
}