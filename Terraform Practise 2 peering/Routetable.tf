resource "aws_route_table" "PubRT" {
  vpc_id = aws_vpc.terraformvpc.id

  route {
    cidr_block = var.RT-Cidr[0]
    gateway_id = aws_internet_gateway.PublicIGW.id
  }
  tags = {
    Name = "PubRT"
  }
}


resource "aws_route_table" "peeringPubRT" {
  vpc_id = aws_vpc.peeringvpc.id

  route {
    cidr_block = var.RT-Cidr[1]
    gateway_id = aws_internet_gateway.peeringPublicIGW.id
  }
    tags = {
      Name = "PeeringRT"
    }
}


# resource "aws_route_table" "PrivateRT" {
#   vpc_id = aws_vpc.terraformvpc.id

#   route {
#     cidr_block     = var.RT-Cidr[1]
#     nat_gateway_id = aws_nat_gateway.NATGW.id
#   }

# }

resource "aws_route_table_association" "PublicRTAssociate" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.PubRT.id
}


resource "aws_route_table_association" "PeeringPublicRTAssociate" {
  subnet_id      = aws_subnet.peering_subnet.id
  route_table_id = aws_route_table.peeringPubRT.id
}


# resource "aws_route_table_association" "PrivateRTAssociate" {
#   subnet_id      = aws_subnet.private_subent.id
#   route_table_id = aws_route_table.PrivateRT.id
# }




