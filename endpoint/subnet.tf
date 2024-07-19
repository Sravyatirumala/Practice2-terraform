resource "aws_subnet" "publicend_subnet" {
  vpc_id                  = aws_vpc.endpointvpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"   # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "publicendpoint-subnet"
    }
}

  resource "aws_subnet" "privateend_subent" {
  vpc_id = aws_vpc.endpointvpc.id # pull id from created vpc.
  availability_zone = "us-east-2b"
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = false

  
  tags = {
    Name = "privateendpoint-subnet"
        }
}
