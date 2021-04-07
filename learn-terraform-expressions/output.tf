output "ami" {
  #value = [for inst in aws_instance.example[count.index]: inst.ami ]
  value = "${aws_instance.example.*.ami}"
}

output "complete_insance_detail" {
  value = aws_instance.example[0]
}