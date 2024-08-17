resource "aws_instance" "web" {
    ami = "ami-041e2ea9402c46c32"   # devops-practice ami rhel-9
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.roboshop-all.id]

    tags = {
        Name = "provisioner"
    }

  provisioner "local-exec" {
    command = "echo this will execute at the time of creation, you can trigger other system like email and sending alerts" # self = aws_instance.web
  }

  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory" # self = aws_instance.web
  } 

  provisioner "local-exec" {
    when = destroy
    command = "echo this will execute at the time of destroy, you can trigger other system like email and sending alerts" # self = aws_instance.web
  }

## remote-exce starts
 connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'this is from remote exec' > /tmp/remote.txt",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}
  
## security group

resource "aws-security-group" "roboshop-all" {
  name = "provisioner"

  ingress {

    description = "Allow all ports"
    from_port =22
    to_port = 22
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  ingress {

    description = "Allow all ports"
    from_port =80
    to_port = 80
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  
  tags = {
        Name = "provisioner"
    }
}
  



