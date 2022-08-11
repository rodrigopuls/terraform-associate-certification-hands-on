terraform {

}

output "cidrhost" {
  value = cidrhost("10.12.112.0/20", 16)
}

output "cidrhost2" {
  value = cidrhost("10.12.112.0/20", 268)
}

output "cidrhost3" {
  value = cidrhost("fd00:fd12:3456:7890:00a2::/72", 34)
}


output "cidrnetmask" {
  value = cidrnetmask("172.16.0.0/12")
}


output "cidrsubnet" {
  value = cidrsubnet("172.16.0.0/12", 4, 2)
}

output "cidrsubnet2" {
  value = cidrsubnet("10.1.2.0/24", 4, 15)
}

output "cidrsubnet3" {
  value = cidrsubnet("fd00:fd12:3456:7890::/56", 16, 162)
}


output "cidrsubnets" {
  value = cidrsubnets("10.1.0.0/16", 4, 4, 8, 4)
}

output "cidrsubnets2" {
  value = cidrsubnets("fd00:fd12:3456:7890::/56", 16, 16, 16, 32)
}