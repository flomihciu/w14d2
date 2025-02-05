provider "aws" {
  region = "us-east-1" # Update this as per your AWS region
}

resource "aws_s3_bucket" "flo-s3" {
  bucket = "flo-s3"
}

resource "aws_instance" "my_test_instance" {
  ami           = "ami-0eb070c40e6a142a3" # Update with a valid AMI ID in your region
  instance_type = "t2.micro"
  tags = {
    Name = "flo-test-ec2"
  }
}
