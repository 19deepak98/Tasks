resource "aws_instance" "my_ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
}

output "instance_id" {
  value = aws_instance.my_ec2_instance.id
}
