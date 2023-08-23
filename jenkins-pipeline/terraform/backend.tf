terraform {
  backend "s3" {
    bucket = "state-project"
    region = "us-east-1"
    key = "eks/terraform.tfstate"
  }
}