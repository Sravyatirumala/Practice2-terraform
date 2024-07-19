resource "aws_internet_gateway" "endpointIGW" {
  vpc_id = aws_vpc.endpointvpc.id

  tags = {
    Name = "endpointIGW"
  }
}


