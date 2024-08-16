# data "awsec2_ami" "aws-linux-2"{
#     owners = ["137112412989"]
#     most_recent      = true

#     filter {
#         name   = "name"
#         values = ["al2023-ami-2023.5.20240805.0-kernel-*"]
#     }

#     # filter {
#     #     name   = "root-device-type"
#     #     values = ["ebs"]
#     # }

#     # filter {
#     #     name   = "virtualization-type"
#     #     values = ["hvm"]
#     # }
# }


data "aws_ami" "aws_data_ami" {
 
  most_recent      = true
  owners           = ["137112412989"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.5.20240805.0-kernel-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

