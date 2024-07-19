resource "aws_vpc" "myvpc" {
  cidr_block = "172.0.0.0/16"

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "use-2-vpc"
  }

}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "172.0.1.0/26"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}


resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = "172.0.2.0/26"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet2"
  }
}


# resource "aws_subnet" "private_subnet" {
#   vpc_id                  = aws_vpc.myvpc.id
#   cidr_block              = "172.0.2.0/24"
#   availability_zone       = "us-east-2a"
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "private-subnet"
#   }
# }
