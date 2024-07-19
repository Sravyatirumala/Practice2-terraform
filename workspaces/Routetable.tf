resource "aws_route_table" "ws-Public-RT" {
  vpc_id = aws_vpc.workspace-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ws-IGW.id
  }

  route {
    cidr_block     = var.ws-pub-sub-cidr
    nat_gateway_id = aws_nat_gateway.ws-NAT.id
  }

  tags = {
    Name = "${var.vpc-name}-pub-rt"
  }
}


resource "aws_route_table" "ws-Private-RT" {
  vpc_id = aws_vpc.workspace-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ws-IGW.id
  }

  route {
    cidr_block     = var.ws-pub-sub-cidr
    nat_gateway_id = aws_nat_gateway.ws-NAT.id
  }

  tags = {
    Name = "${var.vpc-name}-pri-rt"
  }
}


resource "aws_route_table_association" "PublicRTAssociate" {
  subnet_id      = aws_subnet.workspace_subnet.id
  route_table_id = aws_route_table.ws-Public-RT.id
}

resource "aws_route_table_association" "PrivateRTAssociate" {
  subnet_id      = aws_subnet.ws-private_subnet.id
  route_table_id = aws_route_table.ws-Private-RT.id
}




