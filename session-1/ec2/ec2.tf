resource "aws_instance" "web" {
  ami           = "ami-041e2ea9402c46c32"  # devops-practice redhat ami
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop-all.id] # this means list

  tags = {
    Name = "Terraform"
  }
}

resource "aws_security_group" "roboshop-all" {  ## roboshop-all is terraform reference name only
  name        = "roboshop-all-aws"  # This is the AWS name
  description = "allow TLS inbound traffic"

  # Inbound rules
  ingress {
    description = "Allow all ports"
    from_port   = 0  # 0 means all ports allow
    to_port     = 0 
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Note the corrected key here
  }

  # Outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]  # Note the corrected key here
  }

  tags = {
    Name = "roboshop-all-aws"
  }
}
