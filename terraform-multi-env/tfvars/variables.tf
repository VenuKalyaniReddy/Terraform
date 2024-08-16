variable "instance_names"  {
    type = map
    default = {
        mongodb ="t3.small"
        redis = "t2.micro"
        mysql = "t3.micro"
    }
}
    
## Zone id
variable "zone_id" {
  default = "Z0890385BI1KXFVHMUIN"
}

### domain name

variable "domain_name" {
    default = "aidevops.website"
}




