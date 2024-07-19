resource "aws_eip" "Elastic-ip" {
  domain = "vpc"

  tags = {
    Name = "EIP"
  }
}