provider "aws" {
  region = "ap-south-1" # Change to your desired AWS region
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c82c1a90be4dccc1" # Change to your desired AMI ID
  instance_type = "t3.micro" # Change to your desired instance type
  key_name      = "terraform-cicd" # Change to your desired key pair name

  tags = {
    Name = "terraform-cicd-web-server"
  }
}
