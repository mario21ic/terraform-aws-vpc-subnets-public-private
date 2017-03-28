/* Public */
resource "aws_route_table" "rt_public" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.my_igw.id}"
  }
}

resource "aws_route_table_association" "rt_association_public_1" {
  subnet_id = "${aws_subnet.sn_public_1.id}"
  route_table_id = "${aws_route_table.rt_public.id}"
}

resource "aws_route_table_association" "rt_association_public_2" {
  subnet_id = "${aws_subnet.sn_public_2.id}"
  route_table_id = "${aws_route_table.rt_public.id}"
}


/* Private */
resource "aws_eip" "eip_nat_gw" {
  vpc = true
}

resource "aws_nat_gateway" "my_nat_gw" {
  allocation_id = "${aws_eip.eip_nat_gw.id}"
  subnet_id     = "${aws_subnet.sn_public_1.id}"
}

resource "aws_route_table" "rt_private" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.my_nat_gw.id}"
  }
}

resource "aws_route_table_association" "rt_association_private_1" {
  subnet_id = "${aws_subnet.sn_private_1.id}"
  route_table_id = "${aws_route_table.rt_private.id}"
}

resource "aws_route_table_association" "rt_association_private_2" {
  subnet_id = "${aws_subnet.sn_private_2.id}"
  route_table_id = "${aws_route_table.rt_private.id}"
}
