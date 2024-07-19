resource "aws_eip" "ws-eip-forNAT" {
  domain = "vpc"

  tags = {
    Name = "EIP_for_NAT"
  }
}