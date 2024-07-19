resource "aws_instance" "public_instance" {
  ami                         = var.ami[0]
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  key_name = "us-east-2"

  tags = {
    Name = var.instance-name[0]
  }
}


resource "aws_instance" "peering_instance" {
  ami                         = var.ami[1]
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.peering_subnet.id
  associate_public_ip_address = true

  key_name = "us-east-2"

  tags = {
    Name = var.instance-name[1]
  }
}

