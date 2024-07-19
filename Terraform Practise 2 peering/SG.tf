# resource "aws_security_group" "AllowTraffic" {
#   name        = "Allow"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.terraformvpc.id

#   tags = {
#     Name = "Allow Traffic"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_traffic_ipv4" {
#   security_group_id = aws_security_group.AllowTraffic.id
#   cidr_ipv4         = aws_vpc.testVPC.cidr_block
#   from_port         = 443
#   ip_protocol       = "tcp"
#   to_port           = 443
# }

# resource "aws_vpc_security_group_ingress_rule" "allowtraffic_ipv4" {
#   security_group_id = aws_security_group.AllowTraffic.id
#   cidr_ipv4         = aws_vpc.testVPC.cidr_block
#   from_port         = 22
#   ip_protocol       = "tcp"
#   to_port           = 22
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_trafficipv4" {
#   security_group_id = aws_security_group.AllowTraffic.id
#   cidr_ipv4         = aws_vpc.testVPC.cidr_block
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
# }


# # resource "aws_vpc_security_group_ingress_rule" "allow_traffic_ipv6" {
# #   security_group_id = aws_security_group.AllowTraffic.id
# #   cidr_ipv6         = aws_vpc.testVPC.ipv6_cidr_block
# #   from_port         = 443
# #   ip_protocol       = "ssh"
# #   to_port           = 443
# # }

# # resource "aws_security_group" "ssh_sg" {
# #   name        = "ssh_security_group"
# #   description = "Security group for SSH access"
# #   vpc_id      = "vpc-12345678"  # Update with your VPC ID

# #   // Ingress rule allowing SSH traffic from anywhere
# #   ingress {
# #     from_port   = 22
# #     to_port     = 22
# #     protocol    = "tcp"
# #     cidr_blocks = ["0.0.0.0/0"]
# #   }
# # }
