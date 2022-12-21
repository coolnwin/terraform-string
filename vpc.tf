#created Custom VPC

resource "aws_vpc" "Proj" {
    cidr_block = var.Custom.Vpc-Pro-1
    instance_tenancy = "default"
   tags = {
     "Name" = "Project1"
   }
}

#create with Public Subnet

resource "subnet" "PublicSubnet-Proj" {
    cidr_block = var.PublicSubnet
    vpc_id = aws.vpc.Proj.id
    tags = {
        Name= "Public Subnet"
    }
}

#create with Private Subnet

resource "subnet" "PrivateSubnet-Proj" {
    cidr_block = var.PrivateSubnet
    vpc_id = aws.vpc.Proj.id
    tags ={
        Name = "Private Subnet"
    }
}

