resource "aws_instance" "kalyanirajesh" {
  ami           = data.aws_ami.aws_data_ami.id
  instance_type = "t2.small"
  tags = {
    Name = "data-source"
  }
}