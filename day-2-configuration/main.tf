resource "aws_vpc" "name" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "vpc_one"
    }
  
}
resource "aws_subnet" "subnet" {

    vpc_id = aws_vpc.name.id
    cidr_block = var.subnet_cidr
    tags = {
        Name = "subnet_one"
    }
}        