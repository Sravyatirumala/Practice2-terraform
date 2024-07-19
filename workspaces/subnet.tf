resource "aws_subnet" "workspace_subnet" {
  vpc_id                  = aws_vpc.workspace-vpc.id
  cidr_block              = var.ws-pub-sub-cidr
  availability_zone       = var.az-zone # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "workspace_subnet"
  }
}


resource "aws_subnet" "ws-private_subnet" {
  vpc_id                  = aws_vpc.workspace-vpc.id
  cidr_block              = var.ws-private-sub-cidr
  availability_zone       = var.az-zone # Replace with your desired availability zone
  map_public_ip_on_launch = true

  tags = {
    Name = "workspace_subnet"
  }
}

