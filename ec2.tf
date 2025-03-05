resource "aws_instance" "myec2" {
  ami = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  count = 3

  tags = {
    name = "payments-server-${count.index}"
  }
  
}

resource "aws_iam_user" "that" {
    name = "payments-user-${count.index}"
    count = 3
}
  