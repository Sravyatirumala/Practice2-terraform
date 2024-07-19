resource "aws_internet_gateway" "PublicIGW" {
  vpc_id = aws_vpc.functionvpc.id

  tags = {
    Name = "PublicIGW"
  }
}