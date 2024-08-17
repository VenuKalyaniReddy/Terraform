resource "aws_instance" "web" {
    ami = "ami-041e2ea9402c46c32"   # devops-practice ami rhel-9
    instance_type = "t2.micro"

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

}


