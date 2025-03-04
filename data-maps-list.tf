provider "aws"{}

resource "aws_instance" "myec2" {
  ami = "ami-123" 
  instance_type = var.types["us-south-1"]
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]

}
variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    us-south-1 = "t2.small"
}
}