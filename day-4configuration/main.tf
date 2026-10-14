# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket_prefix = "harini-day4-bucket-"
}

# Create EC2 instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-004d1eaf8eaa0107d"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Day4-EC2"
  }
}

# Display EC2 public IP
output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}

# Display S3 bucket name
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}