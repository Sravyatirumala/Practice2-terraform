resource "aws_internet_gateway" "ws-IGW" {
  vpc_id = aws_vpc.workspace-vpc.id

  tags = {
    Name = "PublicIGW"
  }
}
