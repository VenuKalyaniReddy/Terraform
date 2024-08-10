variable "instance_names" {
    type = map
    default = {
    mongodb = "t3.small"
    redis = "t2.micro"
    mysql = "t3.small"
    rabbitmq = "t2.micro"
    catalogue = "t2.micro"
    cart = "t2.micro"
    user = "t2.micro"
    shipping = "t3.small"
    payment = "t2.micro"
    dispatch = "t2.micro"
    web = "t2.micro"
  }
}
## AMI name
variable "ami_id" {
    default = "ami-041e2ea9402c46c32"
}

## Zone id
variable "zone_id" {
  default = "Z0890385BI1KXFVHMUIN"
}

### domain name

variable "domain_name" {
    default = "aidevops.website"
}






