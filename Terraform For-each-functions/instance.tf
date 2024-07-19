resource "aws_instance" "public_instance" {
  count                       = 3
  ami                         = var.ami
  instance_type               = var.instance-type
  subnet_id                   = element(values(aws_subnet.public_subnets), count.index).id
  associate_public_ip_address = true

  key_name = var.key-name
  tags = {
    Name = "${var.instance-name}-${count.index + 1}"
  }
}

resource "aws_instance" "private_instance" {
  count                       = 3
  ami                         = var.ami
  instance_type               = var.instance-type
  subnet_id                   = element(values(aws_subnet.private_subnets), count.index).id
  associate_public_ip_address = true

  key_name = var.key-name

  tags = {
    Name = "${var.private-instance}-${count.index + 1}"
  }
}



