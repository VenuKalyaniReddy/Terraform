data "aws_ami" "RHEL-9"{
    owners = ["973714476881"]
    most_recent      = true

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
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

data "aws_ami" "aws-linux-2"{
    owners = ["137112412989"]
    most_recent      = true

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

data "aws_vpc" "default" {
  default = true
}

