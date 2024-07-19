resource "aws_instance" "public_instance" {
  ami           = "ami-0ca2e925753ca2fb4"
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.publicend_subnet.id
  associate_public_ip_address = true

  key_name      = "us-east-2"

  tags = {
    Name = "public-end-instance"
  }
}



resource "aws_instance" "private_instance" {
  ami           = "ami-0ca2e925753ca2fb4"
  instance_type = "t2.medium"
  subnet_id     = aws_subnet.privateend_subent.id
  associate_public_ip_address = true

  key_name      = "us-east-2"

  tags = {
    Name = "private-end-instance"
  }
}

