resource "aws_vpc" "useast2vpc" {
  cidr_block = "172.0.0.0/16"

  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "useast-2-vpc"
  }

}

resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.useast2vpc.id
  cidr_block              = "172.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = true

  tags = {
    Name = "useast-2-subnet"
  }
}

