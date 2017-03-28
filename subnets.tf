resource "aws_subnet" "sn_public_1" {
  vpc_id                  = "${aws_vpc.vpc.id}"

  cidr_block              = "${var.sn_public_1_cidr}"
  availability_zone       = "${var.sn_public_1_az}"
  #map_public_ip_on_launch = true
}

resource "aws_subnet" "sn_private_1" {
  vpc_id                  = "${aws_vpc.vpc.id}"

  cidr_block              = "${var.sn_private_1_cidr}"
  availability_zone       = "${var.sn_private_1_az}"
}

resource "aws_subnet" "sn_public_2" {
  vpc_id                  = "${aws_vpc.vpc.id}"

  cidr_block              = "${var.sn_public_2_cidr}"
  availability_zone       = "${var.sn_public_2_az}"
  #map_public_ip_on_launch = true
}

resource "aws_subnet" "sn_private_2" {
  vpc_id                  = "${aws_vpc.vpc.id}"

  cidr_block              = "${var.sn_private_2_cidr}"
  availability_zone       = "${var.sn_private_2_az}"
}
