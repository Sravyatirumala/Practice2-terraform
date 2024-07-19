resource "aws_internet_gateway" "PublicIGW" {
  vpc_id = aws_vpc.terraformvpc.id

  tags = {
    Name = "PublicIGW"
  }
}


resource "aws_internet_gateway" "peeringPublicIGW" {
  vpc_id = aws_vpc.peeringvpc.id

  tags = {
    Name = "peeringPublicIGW"
  }
}


