variable "instancepub" {
	default = "3"
}

variable "instancepriv" {
	default = "3"
}
variable "ami" {
	default = "ami-a61243ca"
}

variable "region" {
  default = "sa-east-1"
}
variable "type" {
  default = "t2.micro"
}
variable "ami_id" {
  default = "ami-a61243ca"
}
variable "sg_name" {
  default = "infra_code"
}

variable "key" {
  default = "sslkey"
}

variable "type_disk_so" {
        default = "gp2"
}

variable "size_so" {
        default = "20"
}

variable "tag" {
  default = "infra_code"
}
variable "ssh_user_name" {
  default = "admin"
}
