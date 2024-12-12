provider "aws" {
  region = "us-east-1"
}


resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from terraform"
#  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_firewall"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = "sg-0e904615d00b84f85"
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 100
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

