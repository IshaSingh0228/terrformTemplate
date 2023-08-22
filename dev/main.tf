provider "aws" {
  region     = "ap-south-1"
  access_key = "*************"
  secret_key = "********************"
  
}

module "my_vpc" {
    source ="../modules/vpc"
    vpc_cidr="192.168.0.0/16"
}

module "my_subnet"{
    source="../modules/subnets"
    vpc_id=module.my_vpc.vpc_id
    subnet_cidr="192.168.1.0/24"
    availability_zone="ap-south-1a"
}

module "my_sg"{
    source="../modules/security_group"
    vpc_id=module.my_vpc.vpc_id
}

module "my_ec2"{
    source="../modules/ec2"
    ami="ami-0d758c1134823146a"
    instance_type="t2.micro"
    subnet_id=module.my_subnet.subnet_id
    security_group_id=[module.my_sg.security_group_id]
}
