terraform {

}

# can, defaults, nonsensitive, sensitive, ...

# can - evalutes if expressions returns error
output "can" {
  value = can(true)
}

output "bool" {
  value = tobool("true")
}

output "map" {
  value = tomap({ a = 1, b = 2})
}

output "set" {
  value = toset(["a", 1, true])
}


output "list" {
  value = tolist(["a", 1, true])
}

output "number" {
  value = tonumber("1")
}

output "string" {
  value = tostring("1")
}

# try - returns first that not produces error
variable "example" {
  default = 1
}
output "try" {
  value = try([var.example], tolist(var.example))
}