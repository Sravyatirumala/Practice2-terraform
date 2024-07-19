vpc-name = "functionloopvpc"

vpc-cidr = "10.0.0.0/16"

subnets-cidr = {
  "us-east-2a" = "10.0.0.0/28",
  "us-east-2b" = "10.0.1.0/28",
  "us-east-2c" = "10.0.2.0/28"
}

instance-type    = "t2.medium"
ami              = "ami-09040d770ffe2224f"
instance-name    = "public_instance"
private-instance = "private_instance"
RT-Cidr          = ["0.0.0.0/0","0.0.0.0/0"]

private-subnet-cidr = {
  "us-east-2a" = "10.0.3.0/28",
  "us-east-2b" = "10.0.4.0/28",
  "us-east-2c" = "10.0.5.0/28"
}

key-name = "us-east-2"