resource "aws_default_security_group" "dev_default" {
    vpc_id="${aws_vpc.dev.id}"

    ingress{
       protocol=-1
       self=true
       from_port=0
       to_port=0 

    }

    egress{
       protocol="-1"
       cidr_blocks=["0.0.0.0/0"]
       from_port=0
       to_port=0

    }

    tags{
        Name="user22-dev-defalut"
    }
  
}

