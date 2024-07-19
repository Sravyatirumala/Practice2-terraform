resource "aws_vpc" "functionloopvpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}
