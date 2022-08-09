output "public_ip_out" {
  value = module.instance.public_ip
}

output "instance_type_out" {
  value = module.instance.instance_type
  sensitive = true
}