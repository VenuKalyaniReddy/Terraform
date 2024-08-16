data "aws_ami" "RHEL9" {
    owners = ["973714476881"]
    most_recent = true

filter {
        name   = "name"
        values = ["RHEL9-DevOps-Practice"]
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
