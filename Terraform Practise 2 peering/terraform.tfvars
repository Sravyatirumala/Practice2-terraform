vpc-name          = ["terraformvpc", "peeringvpc"]
vpc-cidr          = ["10.0.0.0/16", "192.168.0.0/16"]
subnets-cidr      = ["10.0.1.0/28", "192.168.1.0/28"]
instance-type     = "t2.medium"
ami               = ["ami-09040d770ffe2224f","ami-09040d770ffe2224f"]
availability-zone = ["us-east-2a", "us-east-2b"]
instance-name     = ["public_instance","peering_instance"]
RT-Cidr           = ["0.0.0.0/0", "0.0.0.0/0"]
# region =["us-east-1","us-east-2"]


