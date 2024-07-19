resource "aws_internet_gateway" "PublicIGW" {
  vpc_id = aws_vpc.functionloopvpc.id

  tags = {
    Name = "PublicIGW"
  }
}
