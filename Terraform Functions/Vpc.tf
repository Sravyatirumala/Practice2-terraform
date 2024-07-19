resource "aws_vpc" "functionvpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}
