provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}



resource "aws_instance" "MyT2MicroInstanceAWS" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "MyT2MicroInstanceAWS"
  }
}
