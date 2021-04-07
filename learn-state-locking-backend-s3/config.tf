terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version = ">= 2.28.1"
  region = "us-west-2"
}

variable "instance_vars" {
  type = "map"
  default = {
    "ami" = "ami-0a36eb8fadc976275"
    "instance_type" = "t2.micro"
  }
}
