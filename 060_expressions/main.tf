terraform {

}

variable "hello_string" {
  type = string
}

variable "words_list_tuple" {
  type = list(any)
}

variable "person_object" {
  type = map(any)
}

variable "person_splat" {
  type = list(any)
}