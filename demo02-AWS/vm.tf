resource "aws_security_group" "dev_vm_1a" {
    vpc_id="${aws_vpc.dev.id}"

    ingress{
        protocol="tcp"
        to_port="22"
        from_port="22"
        cidr_blocks=[
            "${aws_instance.bastion_1a.public_ip}/32",
            "${aws_instance.bastion_1a.private_ip}/32"
        ]
    }

    tags{
        Name="user22-dev_vm_1a"
    }
  
}

resource "aws_instance" "dev_vm_1a" {
    ami="${var.amazon_linux}"
    availability_zone="ap-northeast-1a"
    instance_type="t2.nano"
    key_name="${var.dev_keyname}"

    vpc_security_group_ids = [
        "${aws_security_group.dev_vm_1a.id}",
        "${aws_default_security_group.dev_default.id}"
    ]

    subnet_id="${aws_subnet.private_1a.id}"

    tags{
        Name="user22-dev_vm_1a"
    }
}
