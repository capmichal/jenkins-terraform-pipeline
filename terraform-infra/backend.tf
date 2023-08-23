terraform {
  backend "s3" {
    bucket = "newbucketee5a8d90-4ab1-4a0d-aa99-a758eb9db443" //this bucket has to already exist
    region = "us-east-1"
    key    = "jenkins-server/terraform.tfstate"
  }
}