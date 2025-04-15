provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample_bucket" {
  bucket = "my-sample-app-bucket"
  acl    = "private"
}

resource "aws_ec2_instance" "sample_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "SampleAppInstance"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.sample_bucket.bucket
}

output "instance_id" {
  value = aws_ec2_instance.sample_instance.id
}