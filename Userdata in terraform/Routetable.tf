resource "aws_route_table" "PubRT" {
  vpc_id = aws_vpc.userdatavpc.id

  route {
    cidr_block = var.RT-Cidr
    gateway_id = aws_internet_gateway.PublicIGW.id
  }

    tags = {
    Name = "${var.vpc-name}-PubRT"
  }

}


resource "aws_route_table_association" "PublicRTAssociate" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.PubRT.id
}
