resource "aws_eip" "Elastic-ip" {
  domain = "vpc"

  tags = {
    Name = "EIP_for_NAT"
  }
}