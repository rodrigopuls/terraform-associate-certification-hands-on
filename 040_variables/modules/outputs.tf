output "public_ip" {
  value = aws_instance.this.public_ip
}

output "instance_type" {
  value = aws_instance.this.instance_type
  sensitive = true
}