variable "vpc-name" {}
variable "vpc-cidr" {}
variable "subnets-cidr" {
  type = map(string)
}
variable "instance-type" {}
variable "ami" {}
variable "instance-name" {}
variable "RT-Cidr" {}
variable "private-subnet-cidr" {
  type = map(string)
}
variable "key-name" {}
variable "private-instance" {}












/*
Type of variables
string ""
list ["10", "20", "30", "40"]
          0   1    2    3
type = list(number) [10,20,30,40]
type = list(string) ["hi","how","are","you"]
boolean true/false
Map  'key' = 'value'
*/
