resource "aws_instance" "Proj-Web" {
    region = var.aws-region
    instance_type = var.instancetype
    ami = var.ami-id
    vpc_security_group_ids =["${aws_security_group_ids.Proj-SG.id}"]

    tage = {
        name = "webserver-Proj"
    }
  key_name = "Vmimport"
  
}