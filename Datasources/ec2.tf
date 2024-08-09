resource "aws_instance" "web" {
  ami           = data.aws_ami.RHEL-9.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source"
  }
}