resource "aws_instance" "public_instance" {
  count         = 5
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = aws_subnet.public_subnets.*.id[count.index]
  # user_data = base64encode(file("userdata.sh"))
  associate_public_ip_address = true

  key_name = var.key-name
  tags = {
    Name = "${var.instance-name}-instance${count.index + 1}"
  }
}

# resource "aws_instance" "private_instance" {
#   count                       = 5
#   ami                         = var.ami
#   instance_type               = var.instance-type
#   subnet_id                   = aws_subnet.private_subnets.*.id[count.index]
#   associate_public_ip_address = true

#   key_name = var.key-name

#   tags = {
#     Name = "${var.private-instance}-instance${count.index + 1}"
#   }
# }




# resource "null_resource" "InstallNginx" {     Already existing instance with null resource connect we can intall through provisioner
#   connection {
#     type        = "ssh"
#     user        = "ubuntu"
#     private_key = file("/us-east-2.pem")
#     host        = aws_instance.public_instance.public_ip
#   }
#   provisioner "remote-exec" {
#     inline = [
#       "sudo apt update",
#       "sudo apt-get install nginx -y",
#       "sudo systemctl enable nginx",
#       "sudo systemctl start nginx"
#     ]

#   }
# }
#  pem file is copied from local to this file location





#  Name = "${var.instance-name}-instance${count.index + 1}"   +1 means index position plus 1..
