resource "aws_instance" "kalyani" {
  ami           = data.aws_ami.aws-linux-2.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source"
  }
}

# data "aws_ami" "aws-linux-2"{
#     owners = ["amazon"]
#     # most_recent      = true

#     filter {
#         name   = "name"
#         values = ["amzn2-ami-kernel-5.10-hvm-*"]
#     }

#     filter {
#         name   = "root-device-type"
#         values = ["ebs"]
#     }

#     filter {
#         name   = "virtualization-type"
#         values = ["hvm"]
#     }
# }

# # data "aws_vpc" "default" {
# #   default = true
# # }