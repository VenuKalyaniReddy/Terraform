#instance
output "instance_info" {
    value =aws_instance.web
}

# instance id 
output "instance_id" {
    value =aws_instance.web.id
}

#publicIP
output "public_ip" {
    value =aws_instance.web.public_ip
}

#privateIP
output "private_ip" {
    value =aws_instance.web.private_ip
}


