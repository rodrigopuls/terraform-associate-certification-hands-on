terraform {}

# alltrue
output "alltrue" {
  value = alltrue(["true", true]) # true
}
output "alltrue2" {
  value = alltrue([true, false]) # false
}

# anytrue
output "anytrue" {
  value = anytrue(["true"]) # true
}
output "anytrue2" {
  value = anytrue([true]) # true
}
output "anytrue3" {
  value = anytrue([true, false]) # false
}
output "anytrue4" {
  value = anytrue([]) # false
}

# chunklist - splits a single list into fixed-size chunks
output "chunklist" {
  value = chunklist(["a", "b", "c", "d", "e", "f", "g"], 2)
}

# coalesce - takes any number of arguments and returns the first one that isn't null or an empty string.
output "coalesce" {
  value = coalesce("a", "b") # a
}
output "coalesce2" {
  value = coalesce(1, 2) # 1
}
output "coalesce3" {
  value = coalesce("", "b") # b
}

# coalescelist - returns first not null or empty
output "coalescelist" {
  value = coalesce(["a", "b"], ["c", "d"]) # ["a", "b"]
}

# compact - remove empty string
output "compact" {
  value = compact(["a", "b", "", "d", "", "f", "g"]) # ["a", "b", "d", "f", "g"]
}

# concat - merge lists
output "concat" {
  value = concat(["a", "b"], ["c", "d"]) # ["a", "b", "c", "d"]
}

# contains
output "contains" {
  value = contains(["a", "b", "c", "d", "e", "f", "g"], "f")
}

# distinct - remove duplicated
output "distinct" {
  value = distinct(["a", "b", "c", "d", "a", "b"]) # ["a", "b", "c", "d"]
}

# element - get by position
output "element" {
  value = element(["a", "b", "c", "d"], 1) # b
}

# index - get index by value
output "index" {
  value = index(["a", "b", "c", "d"], "b") # 1
}

# flatten - merge nested lists into one flat
output "flatten" {
  value = flatten([[["a", "b", "c", "d"], ["e"]], ["f"]])
}

# keys - returns list of keys from map
output "keys" {
  value = keys(tomap({ a = 1, b = 2, c = 3 }))
}

# values - returns list of values from map
output "values" {
  value = values({ a = 1, b = 2, c = 3, d = 4 })
}

# length
output "length" {
  value = length(["a", "b", "c", "d"])
}
output "length2" {
  value = length({ "a" = "b" })
}
output "length3" {
  value = length("rodrigo")
}
output "length4" {
  value = length([])
}

# lookup - retrieve value from a map by key OR default
output "lookup" {
  value = lookup({ a = "ay", b = "bee" }, "a", "what?") # ay
}
output "lookup2" {
  value = lookup({ a = "ay", b = "bee" }, "c", "what?") # default: what?
}

# matchkeys - find positions in list by value(s) than extract value(s) from other list
output "matchkeys" {
  value = matchkeys(["a", "b", "c"], ["d", "e", "f"], ["e"]) # b
}

# merge - merge map
# duplicated key are overwritten
output "merge" {
  value = merge({ a = "b", c = "d" }, { e = "f", c = "h" }) # {"a"="b", "c"="h", "e"="f"}
}

# one
# if empty returns null
# if one element returns element
# if more than one element returns error
output "one" {
  value = one([])
}
output "one2" {
  value = one(["hello"])
}
# output "one3" {
#   value = one(["hello", "goodbye"]) # error
# }

# range - generates list of rando numbers
# start, limit and step
output "range" {
  value = range(1, 5, 1)
}
output "range2" {
  value = range(3)
}

# reverse
output "reverse" {
  value = reverse([1, 2, 3])
}

# setintersection
output "setintersection" {
  value = setintersection(["a", "b"], ["b", "c"], ["b", "d"])
}

# setproduct
output "setproduct" {
  value = setproduct(["a", "b"], ["b", "c"])
}

# setsubtract
output "setsubtract" {
  value = setsubtract(["a", "b"], ["a", "c"]) # ["b"]
}

# setunion
output "setunion" {
  value = setunion(["a", "b"], ["b", "c"], ["d"])
}

# slice
output "slice" {
  value = slice(["a", "b", "c", "d"], 1, 3)
}

# sort
output "sort" {
  value = sort(["a", "c", "d", "b"])
}

# sum
output "sum" {
  value = sum([10, 13, 6, 4.5]) # 33.5
}

# transpose - swap keys for values
output "transpose" {
  value = transpose({ "a" = ["1", "2"], "b" = ["2", "3"] })
}

# zipmap - construct map from two lists
output "zipmap" {
  value = zipmap(["a", "b"], [1, 2])
}