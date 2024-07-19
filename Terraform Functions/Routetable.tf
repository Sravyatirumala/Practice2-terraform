resource "aws_route_table" "PubRT" {
  vpc_id = aws_vpc.functionvpc.id

  tags = {
    Name = "${var.vpc-name}-PubRT"
  }

  route {
    cidr_block = var.RT-Cidr[0]
    gateway_id = aws_internet_gateway.PublicIGW.id
  }
}

# resource "aws_route_table" "PrivateRT" {
#   vpc_id = aws_vpc.functionvpc.id

#   tags = {
#     Name = "${var.vpc-name}-PrivateRT"
#   }
#   route {
#     cidr_block = var.RT-Cidr[1]
#     gateway_id = aws_internet_gateway.PublicIGW.id
#   }
# }

resource "aws_route_table_association" "PublicRTAssociate" {
  count = length(var.subnets-cidr)

  subnet_id      = aws_subnet.public_subnets.*.id[count.index]
  route_table_id = aws_route_table.PubRT.id
}

# resource "aws_route_table_association" "PrivateRTAssociate" {
#   count = length(var.private-subnet-cidr)

#   subnet_id      = aws_subnet.private_subnets.*.id[count.index]
#   route_table_id = aws_route_table.PrivateRT.id
# }


