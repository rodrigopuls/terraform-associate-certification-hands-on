terraform {}

# remove newline chars at end
output "chomp" {
  value = chomp("hello\r\n")
}

# format
output "format_str" {
  value = format("Hello, %s!", "Rodrigo") # Hello, Rodrigo!
}
output "format_number" {
  value = format("There are %d lights", 4) # There are 4 lights
}

# format list
output "format_list_str" {
  value = formatlist("Hello, %s!", ["Rodrigo", "Carolina", "Fulano"])
}

output "format_list_str2" {
  value = formatlist("%s, %s!", "Salutations", ["Rodrigo", "Carolina", "Fulano"])
}

# indent (after first line)
output "indent" {
  value = indent(2, "[\n foo,\n bar,\n]\n")
}

# join (more than one)
output "join" {
  value = join(", ", ["a", "b", "c"])
}

# split
output "split" {
  value = split(", ", "a, b, c")
}

# lower
output "lower" {
  value = lower("ABC")
}

# upper
output "upper" {
  value = upper("abc")
}

# regex - matching substrings
output "regex" {
  value = regex("(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)", "2019-02-01")
}

# regexall - returns potentially list of matches
output "regexall" {
  value = regexall("[a-z]+", "1234abcd5678efgh9")
}

# replace
output "replace" {
  value = replace("hello world", "/w.*d/", "everybody")
}

# reverse
output "strrev" {
  value = strrev("rodrigo")
}

# substring
output "substr" {
  value = substr("hello world", 1, 4)
}

# title
output "title" {
  value = title("hello world")
}

# trim
output "trim" {
  value = trim("?!hello?!", "?!") # hello
}

# trim prefix
output "trimprefix" {
  value = trimprefix("?!hello?!", "?!") # hello?!
}

# trim sufffix
output "trimsuffix" {
  value = trimsuffix("?!hello?!", "?!") # ?!hello
}

# trim space
output "trimspace" {
  value = trimspace("    hello\n\n") # hello
}