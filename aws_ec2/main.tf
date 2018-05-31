data "terraform_remote_state" "vpc" {
  backend = "local"

  config {
    path = "../aws_vpc/terraform.tfstate"
  }
}

resource "aws_key_pair" "key-public" {
  key_name = "${var.key}"
  public_key = "${file("key/sslkey.pem.pub")}"
}

resource "aws_security_group" "ec2" {
  name = "${var.sg_name}"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "10.0.0.0/21"]
  }

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
}

resource "aws_instance" "network_pub" {
  count = "${var.instancepub}"
  subnet_id = "${element(data.terraform_remote_state.vpc.public_subnets, count.index)}"
  instance_type = "${var.type}"
  ami = "${var.ami}"
  key_name = "${var.key}"
  security_groups = [
    "${aws_security_group.ec2.id}"]
  associate_public_ip_address = true

  root_block_device {
    volume_size = "${var.size_so}"
    volume_type = "${var.type_disk_so}"
  }

  tags {
    Name = "${var.tag}"
  }
  provisioner "remote-exec" {
    connection {
      user = "${var.ssh_user_name}"
      private_key = "${file("key/sslkey.pem")}"
    }

    inline = [
      "sudo apt-get update -y",
    ]
  }
}

resource "aws_instance" "network_priv" {
  count = "${var.instancepriv}"
  subnet_id = "${element(data.terraform_remote_state.vpc.private_subnets, count.index)}"
  instance_type = "${var.type}"
  ami = "${var.ami}"
  key_name = "${var.key}"
  security_groups = [
    "${aws_security_group.ec2.id}"]
  associate_public_ip_address = true

  root_block_device {
    volume_size = "${var.size_so}"
    volume_type = "${var.type_disk_so}"
  }

  tags {
    Name = "${var.tag}"
  }
  provisioner "remote-exec" {
    connection {
      user = "${var.ssh_user_name}"
      private_key = "${file("key/sslkey.pem")}"
    }
  }
}