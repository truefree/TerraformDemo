resource "aws_subnet" "public_1a" {
    vpc_id = "${aws_vpc.dev.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block="22.0.1.0/24"

    tags{
        Name="user22Public-1a"
    }
}

resource "aws_subnet" "private_1a" {
    vpc_id = "${aws_vpc.dev.id}"
    availability_zone = "ap-northeast-1a"
    cidr_block="22.0.101.0/24"

    tags{
        Name="user22Private-1a"
    }
}

resource "aws_subnet" "public_1c" {
    vpc_id = "${aws_vpc.dev.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block="22.0.2.0/24"

    tags{
        Name="user22Public-1c"
    }
}

resource "aws_subnet" "private_1c" {
    vpc_id = "${aws_vpc.dev.id}"
    availability_zone = "ap-northeast-1c"
    cidr_block="22.0.102.0/24"

    tags{
        Name="user22Private-1c"
    }
}