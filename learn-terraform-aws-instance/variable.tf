variable "region" {
  default = "us-west-2"
  description = "This var represents AWS region"
}

variable "amis" {
  type = map(string)
}

variable "product" {
  type = string
  default = "FieldForce"
}

variable "Environment" {
  type = string
  default = "Dev"
}

variable "freeform_tags" {
  type = map(string)
  default = {
    "Product" = "CallHandling",
    "Environment" = "Dev"
  }
}
variable "vpc_id" {
  default = "vpc-3fddba47"
}
