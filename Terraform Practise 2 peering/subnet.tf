resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.terraformvpc.id
  cidr_block              = var.subnets-cidr[0]
  availability_zone       = var.availability-zone[0] # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "peering_subnet" {
  vpc_id                  = aws_vpc.peeringvpc.id
  cidr_block              = var.subnets-cidr[1]
  availability_zone       = var.availability-zone[1]   # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "peering-subnet"
    }
}

# resource "aws_subnet" "private_subent" {
#   vpc_id                  = aws_vpc.terraformvpc.id # pull id from created vpc.
#   availability_zone       = var.availability-zone[1]
#   cidr_block              = var.subnets-cidr[1]
#   map_public_ip_on_launch = false

#   tags = {
#     Name = "private-subnet"
#   }
# }

