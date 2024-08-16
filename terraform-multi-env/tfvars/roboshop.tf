resource "aws_instance" "web" {
    for_each = var.instance_names
    ami = data.aws_ami.RHEL9.id
    instance_type = each.value
tags = {
    Name = each.key
}
}

resource "aws_route53_records"  "www" {
     
     for_each = aws_instance.web
     zone_id = var.zone_id 
     name = "${each.key}.${var.domain_name}" 
     type = "A"
     ttl = 1
     records = [startswitch(each.key, "web")? each.value.public_ip: each.value.private_ip]  ###startswitch is function here each.key starts with web then we gets publicip
}

