output "ami" {
  value = aws_instance.example.ami
}

output "complete_insance_detail" {
  value = aws_instance.example
}