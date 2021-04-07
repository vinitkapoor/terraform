
locals {
  subnet_tags = data.aws_subnet_ids.public.tags
  tags = merge(var.freeform_tags, local.subnet_tags)
}

data "aws_subnet_ids" "public" {
  vpc_id = var.vpc_id

  tags = {
    Access = "Public"
  }
}


resource "aws_security_group_rule" "rule_set"{
  for_each = var.security_group_rule_values
  type = each.value.type
  from_port = each.value.from_port
  to_port = each.value.to_port
  protocol = each.value.protocol
  cidr_blocks = each.value.cidr_blocks
  security_group_id = each.value.security_group_id
}


resource "aws_instance" "example" {
  count   = var.instance_count
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
  tags = local.tags
}


