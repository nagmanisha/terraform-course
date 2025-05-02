variable "environment"{
    default = "prod"
}
  
variable "region" {
    default = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-05b10e08d247fb927"
    instance_type = var.environment == "prod" && var.region == "us-east-1"? "t2.micro" : "m5.large"
}

