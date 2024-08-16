# output "awsec2_ami_id" {
#   value = data.aws_ami.aws_data_ami.id
# }
output "aws_ami" {
  value = data.aws_ami.aws_data_ami.id
}