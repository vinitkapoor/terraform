terraform {
  backend "s3" {
    bucket = "terraform-state-vinit"
    key    = "state/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "s3-state-lock"
  }
}