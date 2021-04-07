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


variable "security_group_rule_values" {
  type = map(object({
    type = string,
    from_port = number,
    to_port = number,
    protocol = string,
    cidr_blocks = list(string),
    security_group_id = string
  }
  ))
  description = "Set of SG rules to be applied to a given SG"
  default = {
  "rule1 " = {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "sg-03cd575e"
  },
   "rule2"  = {
    type = "ingress"
    from_port = 80
    to_port = 80
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = "sg-03cd575e"
    }
  }
}


variable "instance_count" {
  type = number
  default = 1
}