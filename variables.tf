variable "vpc_id"{
type = string
 default = "vpc-01687a5b9dce09d19"
 description = "VPC for the Cluster"
}
variable "subnet_id"{
type = string
 default = "subnet-01248c3ce0ad5d922"
 description = "Subnet for the Cluster"
}
variable "ec2_ami"{
type = string
default = "ami-013e1515e9ea9d99e"
}

