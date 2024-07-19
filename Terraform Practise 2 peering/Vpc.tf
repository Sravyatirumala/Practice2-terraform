resource "aws_vpc" "terraformvpc" {
  cidr_block = var.vpc-cidr[0]

  tags = {
    Name = var.vpc-name[0]
  }
}


resource "aws_vpc" "peeringvpc" {
  cidr_block       = var.vpc-cidr[1]

  tags = {
    Name = var.vpc-name[1]
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
