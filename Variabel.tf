#1.Define provider and region
#2.Define VPC
#3.Define Public Subnet
#4.Define Private Subnet
#5.Define Az
#6.Define Internetgateway
#7.Define Public and private Subnet
#8.Define Public and private route table
#9.Define Security Groups
#10.Upto Subnet creation we used for sting variable

variable "aws-region" {
    #This is used to create resource region in aws
    default = "us-east-1"
}

variable "instancetype" {
    instance_type = "t2.nano"

}

variable "ami-id" {
    ami = "ami-0a313d6098716f372"
}


/*variable "Custom Vpc-Pro-1" {
    cidr_block = 10.0.0.0/16

}*/

#Create for Custome VPC

variable "Custom.Vpc-pro-1" {
    cidr_block = "10.0.0.0/16"
  
}

#Create for PublicSubnet

variable "PublicSubnet" {
    cidr_block = "10.0.1.0/20"
}

#Create for privateSubnet

variable "PrivateSubnet" {
    cidr_block = "10.0.2.0/20"
}

#Create for SG port
#port 80,443,22
#Below variable called number variable
variable "http_port" {
    type = number
    default = 80
}

variable "https_port" {
    type=number
    default =443
}

variable "SSH_port" {
    type = number
    default = 22
}