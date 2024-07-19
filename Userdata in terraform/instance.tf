resource "aws_instance" "userdata_instance" {
  ami                         = var.ami
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.public_subnet.id
  user_data                   = base64encode(file("userdata.sh"))
  associate_public_ip_address = true

  key_name = var.key-name
  tags = {
    Name = var.instance-name
  }
}

resource "null_resource" "InstallNginx" {
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("/us-east-2.pem")
    host        = aws_instance.userdata_instance.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt-get install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]

  }
}


# Already existing instance with null resource connect we can intall through provisioner

#  pem file is copied from local to this file location
