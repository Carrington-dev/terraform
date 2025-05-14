provider "aws" {
    version = "3.53.0"
    region     = "us-east-1"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}


data "aws_vpc" "default" {
  default = true
}



resource "aws_instance" "MyT2MicroInstanceAWS" {
  count         = 4
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = "MyT2MicroInstanceAWS-${count.index}"
  }
}

resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Allow SSH and HTTP"
  vpc_id      = data.aws_vpc.default.id  # Use a valid VPC

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh_http"
  }
}
