# Terraform Module to provision an EC2 Instance.

Not intended for production use.

```hcl
output "public_ip" {
  value = aws_instance.this.public_ip
}
```