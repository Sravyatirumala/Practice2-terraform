resource "aws_route_table" "PubRT" {
  vpc_id = aws_vpc.functionloopvpc.id
  tags = {
    Name = "${var.vpc-name}-PubRT"
  }

  route {
    cidr_block = var.RT-Cidr[0]
    gateway_id = aws_internet_gateway.PublicIGW.id
  }
}

resource "aws_route_table" "PrivateRT" {
  vpc_id = aws_vpc.functionloopvpc.id
  tags = {
    Name = "${var.vpc-name}-PrivateRT"
  }

  route {
    cidr_block     = var.RT-Cidr[1]
    nat_gateway_id = aws_nat_gateway.NATGW[0].id
  }

}

resource "aws_route_table_association" "PublicRTAssociate" {
  count          = 3
  subnet_id      = element(values(aws_subnet.public_subnets), count.index).id
  route_table_id = aws_route_table.PubRT.id
}

resource "aws_route_table_association" "PrivateRTAssociate" {
  count          = 3
  subnet_id      = element(values(aws_subnet.private_subnets), count.index).id
  route_table_id = aws_route_table.PrivateRT.id
}



