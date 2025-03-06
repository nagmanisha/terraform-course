variable "environment"{
    default = "test"
}
  

resource "aws_instance" "myec2" {
    ami = "ami-05b10e08d247fb927"
    instance_type = var.environment == "developement" ? "t2.micro" : "m5.large"
}