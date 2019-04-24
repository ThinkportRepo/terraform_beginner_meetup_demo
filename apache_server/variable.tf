variable "ami" {
  type = "string"
}

variable "instance_type" {
  type = "string"
}

variable "name" {
  type = "string"
}

variable "allowed_ingress_list" {
  type = "list"
}

variable "allowed_egress_list" {
  type = "list"
}

variable "ec2_user" {
  type = "string"
}

variable "message" {
  type = "string"
}
