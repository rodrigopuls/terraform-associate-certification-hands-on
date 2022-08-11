terraform {}

# base64, blowfish, md5, sha, rsa, uuid, ...

output "uuid" {
  value = uuid()
}

# Blowfish cipher
output "bcrypt" {
  value = bcrypt("hello world")
}

output "base64sha256" {
  value = base64sha256("hello world")
}