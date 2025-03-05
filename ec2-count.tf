resource "aws_instance" "myec2" {
  ami = "ami-05b10e08d247fb927"
  instance_type = "t2.micro"
  count = 3

  tags = {
    name = "payments-server-${count.index}"
  }
  
}

variable "users" {
  type = list
  default = ["alice", "bob", "john"]
}

resource "aws_iam_user" "that" {
    name = var.users[count.index]
    count = 3
}
  