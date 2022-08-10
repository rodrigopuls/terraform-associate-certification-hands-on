terraform {

}

variable "planets" {
  type    = list(any)
  default = ["mars", "earth", "jupiter"]
}

variable "plans" {
  type = map(any)
  default = {
    "PlanA" = "10 USD",
    "PlanB" = "50 USD",
    "PlanC" = "100 USD",
  }
}

variable "items_set" {
  type    = set(any)
  default = ["a", "b", 3]
}

# Structural object
variable "person_object" {
  type = object({
    name = string
    age  = number
  })
  default = {
    age  = 34
    name = "rodrigo"
  }
}

variable "person_tuple" {
  type    = tuple([string, number, bool])
  default = ["rodrigo", 34, false]
}