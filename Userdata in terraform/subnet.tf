resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.userdatavpc.id
  cidr_block              = var.vpc-cidr      
  availability_zone       = var.availability-zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}"
  }
}

