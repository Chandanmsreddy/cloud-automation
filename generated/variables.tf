variable "aws_region" {}

variable "instance_count" {}

variable "ami_id" {}

variable "instance_type" {}

variable "key_pair" {}

variable "security_group_name" {}

variable "tag_name" {}

variable "ingress_ports" {
  type = list(number)
}