terraform {

}

# absolute value
output "absolute" {
  value = abs(-12.4) # 12.4
}

# round down
output "floor" {
  value = floor(4.9) # 4
}

# logarithm
output "log" {
  value = log(50, 10) # 1.6989
}

# round up
output "ceiling" {
  value = ceil(5.1) # 6
}

# min value in set
output "min" {
  value = min(1, 2, 3, 4, 5) # 1
}

# max value in set
output "max" {
  value = max(1, 2, 3, 4, 5) # 5
}

# parseint - value and base
output "parse_int" {
  value = parseint("100", 10) # 100
}
output "parse_int2" {
  value = parseint("FF", 16) # 255
}
output "parse_int3" {
  value = parseint("-10", 16) # 48879
}
output "parse_int4" {
  value = parseint("aA", 62) # 656
}

# exponent
output "pow" {
  value = pow(3, 2) # 9
}

# number sign (-1 Negative, 0, 1 Positive)
output "sign_neg" {
  value = signum(-13) # -1
}
output "sign_zero" {
  value = signum(0) # 0
}
output "sign_pos" {
  value = signum(3131) # 1
}