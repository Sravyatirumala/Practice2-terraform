resource "aws_internet_gateway" "useast2_gateway" {
  vpc_id = aws_vpc.useast2vpc.id

  tags = {
    Name = "useast2-igw"
  }
}