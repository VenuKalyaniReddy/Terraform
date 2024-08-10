resource "aws_instance" "web"  {
    for_each =var.instance_names 
    ami = var.ami_id
    instance_type = each.value
    tags = {
        Name = each.key
    }
}

## route 53 records

resource  "aws_route53_records" "www" {
    for_each = aws_instance.web
    zone_id = var.zone_id 
    name = "${each.key}.${var.domain_name}" #interpolation
    type = "A"
    ttl = 1
    records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
 }