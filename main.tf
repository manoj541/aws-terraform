provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = var.image
  instance_type = var.instancetype
  count         = 2

  tags = {
    name = "web server"
  }
}





