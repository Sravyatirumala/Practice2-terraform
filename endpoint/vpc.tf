resource "aws_vpc" "endpointvpc" {
  cidr_block       = "10.0.0.0/16"
  
  tags = {
    Name = "endpoint-vpc"
  }
}


