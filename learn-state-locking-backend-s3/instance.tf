resource "aws_instance" "my_instance" {
  ami = var.instance_vars["ami"]
  instance_type = var.instance_vars["instance_type"]
}