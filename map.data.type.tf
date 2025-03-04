variable "my-map" {
   type = map
   default = {
     name = "manisha"
     age = "35"
}
}
output "variable_value" {
  value = var.my-map
}
