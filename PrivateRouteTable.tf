resource "aws_route_tabele_association" "Private-ProjAss" {
    subnet_id = aws.subnet.PrivateSubnet-Proj.id
    route_table_id = aws.subnet.PrivateSubnet-Proj
}

