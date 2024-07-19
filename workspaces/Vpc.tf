resource "aws_vpc" "workspace-vpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = var.vpc-name
  }
}





# This it to import from already existing vpc
# resource "aws_vpc" "terraformvpc" {
#  }

# After importing we can add cidr ranges and apply
# resource "aws_vpc" "terraformvpc" {
# cidr_block       = "192.0.0.0/16"
#   tags = {
#     Name = "MyVPC"
#   }
#  }
