resource "aws_instance" "myec2" {
  ami = "ami-123"
  instance_type = "t2.micro"
  count = 3
  
}