resource "aws_vpc" "userdatavpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}
