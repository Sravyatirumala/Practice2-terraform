resource "aws_nat_gateway" "NATGW" {
  count         = 1
  allocation_id = aws_eip.Elastic-ip.id
  subnet_id     = element(values(aws_subnet.public_subnets), count.index).id

  tags = {
    Name = "NATGW"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.PublicIGW]
}