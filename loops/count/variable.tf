variable "instance_names" {
    type = list
    default = ["mongodb" , "redis", "mysql" , "rabitmq", "catalogue", "user","cart","shipping","payment","dispatach","web"]
}

variable "ami_id" {
    default = "ami-041e2ea9402c46c32" ## Devops-practice RHEL AMI
}

variable "zone_id" {
    default= "Z0890385BI1KXFVHMUIN"
}

variable "domain_name" {
    default = "aidevops.webste"
}
