
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

resource "aws_instance" "example" {
  ami           = var.amis[var.region]
  instance_type = "t2.micro"
  subnet_id = "xxxx"
  tags = local.tags
}


