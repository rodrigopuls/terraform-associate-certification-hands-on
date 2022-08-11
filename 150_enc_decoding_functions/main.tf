terraform {

}

# base64, json, text, yaml, gzip, url

output "base64enc" {
  value = base64encode("Hello World")
}

output "base64dec" {
  value = base64decode("SGVsbG8gV29ybGQ=")
}

output "urlencode" {
  value = urlencode("Hello World")
}