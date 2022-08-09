terraform {}

resource "null_resource" "this" {
  provisioner "local-exec" {
    command = "echo hello world!"
  }
}