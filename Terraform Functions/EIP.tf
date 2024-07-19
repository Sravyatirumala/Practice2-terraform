# resource "aws_eip" "Elastic-ip" {
#   count  = 5
#   domain = "vpc"

#   tags = {
#     Name = count.index
#   }
# }