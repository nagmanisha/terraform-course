variable "username" {
  type = number
}

resource "aws_iam_user" "lb" {
  name = var.username
}

