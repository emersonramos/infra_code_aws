output "public_ip_address" {
  value = "${aws_instance.network_pub.*.id}"
}

output "private_ip_address" {
  value = "${aws_instance.network_priv.*.id}"
}