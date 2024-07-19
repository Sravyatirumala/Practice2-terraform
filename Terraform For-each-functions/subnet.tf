resource "aws_subnet" "public_subnets" {
  vpc_id            = aws_vpc.functionloopvpc.id
  for_each          = var.subnets-cidr
  availability_zone = each.key
  cidr_block        = each.value
  #count = length(var.subnets_cidr) 
  #cidr_block = var.subnets_cidr[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}-pubsub-${each.key}"
  }
}


resource "aws_subnet" "private_subnets" {
  vpc_id            = aws_vpc.functionloopvpc.id
  for_each          = var.private-subnet-cidr
  cidr_block        = each.value
  availability_zone = each.key
  # count = length(var.pri-subnets-cidr) 
  #cidr_block = var.pri-subnets-cidr[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc-name}-privatesub-${each.key}"
  }
}


# Note: we need to use either count / for each not both in same  resource.