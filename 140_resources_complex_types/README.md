- terraform console

# Collection

> var.planets

tolist([
  "mars",
  "earth",
  "jupiter",
])

> var.plans

tomap({
  "PlanA" = "10 USD"
  "PlanB" = "50 USD"
  "PlanC" = "100 USD"
})

> var.items_set

toset([
  "3",
  "a",
  "b",
])

# Structural

> var.person_object

{
  "age" = 34
  "name" = "rodrigo"
}

> var.person_tuple

[
  "rodrigo",
  34,
  false,
]