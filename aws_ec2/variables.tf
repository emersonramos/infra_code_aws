variable "instancepub" {
	default = "1"
}

variable "instancepriv" {
	default = "1"
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
  default = "teste_estabilis"
}

variable "key" {
  default = "estabilis"
}

variable "type_disk_so" {
        default = "gp2"
}

variable "size_so" {
        default = "20"
}

variable "tag" {
  default = "teste_estabilis"
}
variable "ssh_user_name" {
  default = "admin"
}