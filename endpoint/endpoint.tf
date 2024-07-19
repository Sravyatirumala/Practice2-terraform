resource "aws_vpc_endpoint" "s3" {
  vpc_id            = aws_vpc.endpointvpc.id
  service_name      = "com.amazonaws.us-east-2.s3"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = [aws_route_table.PubRTendpoint.id,aws_route_table.PrivateRTendpoint.id]

  tags = {
    Name = "S3 VPC Endpoint"
  }
}


