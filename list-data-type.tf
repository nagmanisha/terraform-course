variable "username-list" {
  type = list
  #default = ["manisha", "manisa"]
}
output "variable_value" {
  value = var.username-list
}

