variable "vpc_security_group" {
  #type = list
}


    resource "aws_instance" "web" {
      ami = "ami-123"
      instance_type = "t2.micro"
      vpc_security_group_ids = ["sg-0e904615d00b84f85"]
}
