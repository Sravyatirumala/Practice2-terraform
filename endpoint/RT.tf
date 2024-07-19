resource "aws_route_table" "PubRTendpoint" {
  vpc_id = aws_vpc.endpointvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.endpointIGW.id
  }

}

resource "aws_route_table" "PrivateRTendpoint" {
  vpc_id = aws_vpc.endpointvpc.id
}

resource "aws_route_table_association" "PublicRTAssociate" {
  subnet_id      = aws_subnet.publicend_subnet.id
  route_table_id = aws_route_table.PubRTendpoint.id
}

resource "aws_route_table_association" "PrivateRTAssociate" {
  subnet_id      = aws_subnet.privateend_subent.id
  route_table_id = aws_route_table.PrivateRTendpoint.id
}



