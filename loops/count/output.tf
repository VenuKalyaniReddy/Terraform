output "instance_info" {
    value =aws_instance.web
}

# ##it gives ipaddress
# output "instance_id" {
#     value= aws_instance.web.id
# }

# ##it gives Public IP
# output "public_ip" {
#     value =aws_instance.web.public_ip
# }

# ##it gives Private IP
# output "private_ip" {
#     value =aws_instance.web.private_ip
# }