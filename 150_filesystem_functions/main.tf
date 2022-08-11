terraform {}


output "abspath" {
  value = abspath(path.root)
}

output "dirname" {
  value = dirname("foo/bar/file.txt") # foo/bar
}

# pathexpand - replace ~ (if exists) for home dir
output "pathexpand" {
  value = pathexpand("~/")
}

# basename - get path last portion
output "basename" {
  value = basename("foo/bar/file.txt") # file.txt
}

# file - read file content
output "file" {
  value = file("./file.txt")
}

output "filebase64" {
  value = filebase64("./file.txt")
}

output "fileexists" {
  value = fileexists("${path.module}/file.txt")
}

# fileset - enumerates files in path
output "fileset" {
  value = fileset(path.module, "*.*")
}

output "templatefile" {
  value = templatefile("${path.module}/file.txt", {})
}