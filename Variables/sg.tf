resource "aws_security_group" "roboshop-all" {
    name =var.sg_name
    description = var.sg_description


ingress {
        description      = "Allow All ports"
        from_port        = var.inbound_from_port # 0 means all ports
        to_port          = 0 
        protocol         = "tcp"
        cidr_blocks      = var.cidr_block
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

 tags = {
        Name = "roboshop-all-aws"
    }
}