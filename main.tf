provider "aws" {
  region                 = "eu-south-1"
}

resource "aws_instance" "example" {
#ubuntu 18.04 in milan - eu-south-1
  ami           = "ami-027305c8710c4e8b5"
  instance_type = "t3.micro"

  tags = {
      Name = "terraform-example"
  }
}