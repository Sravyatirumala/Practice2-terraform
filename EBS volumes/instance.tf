resource "aws_instance" "instance1" {
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.allow_all_traffic.id}"]
  key_name      = "us-east-2"
  
  tags = {
    Name = "instance1"
  }
}


resource "aws_instance" "ebsinstance2" {
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids = ["${aws_security_group.allow_all_traffic.id}"]

  key_name      = "us-east-2"

  tags = {
    Name = "instance2"
  }
}

