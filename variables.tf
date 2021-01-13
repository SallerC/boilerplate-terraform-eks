variable "client_name" {}
variable "project_name" {}

variable "environment" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "path_to_public_key" {
  default = "mykey.pub"
}

variable "path_to_private_key" {
  default = "mykey.pem"
}
