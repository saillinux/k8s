# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2016.03.0 (HVM)
  ami           = "ami-2fa0ba57"
  instance_type = "t2.micro"

  tags {
    Name = "micro instance"
  }
}
