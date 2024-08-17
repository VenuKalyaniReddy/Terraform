resource "aws_instance"  "web"  {
    ami = "ami-041e2ea9402c46c32"   # devops-practice ami rhel-9
    instance_type = lookup(var.instance_type , terraform.workspace) 
    # lookup is function
    #instance_type = map
    # terraform.workspace ==key
    # if we are in DEV worksapce t2.micro will create
    # if we are in PROD workspace t3.small will create

    tags = {
        Name = "Hello Terraform"
    }

}