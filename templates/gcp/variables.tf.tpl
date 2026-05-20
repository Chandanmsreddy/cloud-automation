variable "gcp_project" {}

variable "gcp_region" {}

variable "gcp_zone" {}

variable "instance_count" {}

variable "instance_type" {}

variable "machine_image" {}

variable "tag_name" {}

variable "network" {}

variable "subnetwork" {}

variable "public_key" {}

variable "ingress_ports" {
  type = list(number)
}