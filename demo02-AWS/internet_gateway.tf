resource "aws_internet_gateway" "dev-default" {
  vpc_id = "${aws_vpc.dev.id}"

  tags {
      Name="user22-IG"
  }
}
