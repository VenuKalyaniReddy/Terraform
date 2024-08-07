## AMI
variable  "ami_id"  {
    type = string
    default= "ami-041e2ea9402c46c32"
}


#instances type

variable "instance_type" {
    type = string
    default = "t2.micro"
}

##tags

variable "tags" {
    type = map
    default = {
        Name= "Hello Terraform"
        Project ="Roboshop"
        Environment="DEV"
        Component="WEB"
        Terraform="true"
    }

}

## security groups
variable "sg_name" {
    type= string
    default= "roboshop-all"
}

## sg description

variable "sg_description" {
    type =string
    default = "allowing all ports"
}

## Inbound 

variable "inbound_from_port" {
    type= number
    default= 0

}

##CIDR block
variable "cidr_block" {
    type= list
    default =["0.0.0.0/0"]
}






