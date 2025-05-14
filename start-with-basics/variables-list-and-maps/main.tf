## Provider's Example

# Configure the AWS Provider
provider "aws" {
    version = "3.53.0"
    access_key = "${var.AWS_ACCESS_KEY}"
    secret_key = "${var.AWS_SECRET_KEY}"
    region     = "${var.AWS_REGION}"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
    version = "2.72.0"
    features {}
}



resource "aws_instance" "MyT2MicroInstanceAWS" {
  count         = 4
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "MyT2MicroInstanceAWS-${count.index}"
  }
}
