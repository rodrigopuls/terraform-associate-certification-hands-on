variable "instance_type" {
  type = string
  description = "Instance type"
  default = "t2.micro"
  validation {
    condition = length(var.instance_type) > 2 && substr(var.instance_type, 0, 2) == "t2"
    error_message = "The instance must be a t2 type."
  }
  sensitive = false
}