output "id" {
  value = "${aws_vpc.vpc.id}"
}

output "cidr" {
  value = "${aws_vpc.vpc.cidr_block}"
}

output "public_subnet_1_id" {
  value = "${aws_subnet.sn_public_1.id}"
}
output "private_subnet_2_id" {
  value = "${aws_subnet.sn_private_2.id}"
}

output "public_subnet_2_id" {
  value = "${aws_subnet.sn_public_2.id}"
}
output "private_subnet_1_id" {
  value = "${aws_subnet.sn_private_1.id}"
}

output "route_table_public" {
  value = "${aws_route_table.rt_public.id}"
}

output "route_table_private" {
  value = "${aws_route_table.rt_private.id}"
}