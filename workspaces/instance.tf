resource "aws_instance" "workspace_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.workspace_subnet.id
  associate_public_ip_address = true

  key_name = "us-east-2"

  tags = {
    Name = var.instance-name
  }
}

