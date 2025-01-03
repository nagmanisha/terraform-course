provider "aws" {
  region     = "us-east-1"
}

resource "aws_iam_user" "demouser"{
  name = "kplabs-demo-user"
}

 
#resource "aws_instance" "myec2" {
#  ami = "ami-0453ec754f44f9a4a"
#  instance_type = "t2.micro"
#}


#terraform {
#  required_providers {
#    digitalocean = {
#      source = "digitalocean/digitalocean"
#      version = "2.44.1"
#    }
#  }
#}
