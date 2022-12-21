#create a route table for Public Subnet

resource "aws_route_table" "Proj-Public-RT"{
    vpc_id = aws_vpc.Proj
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Proj-IGW
    }

}


