output "public_ip_address" {
  value = "${aws_instance.estabilis_pub.*.id}"
}

output "private_ip_address" {
  value = "${aws_instance.estabilis_priv.*.id}"
}