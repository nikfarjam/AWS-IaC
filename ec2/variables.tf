variable "aws_region" {
  default     = "ap-southeast-2"
  description = "(Optional) AWS region that resources are associated to. Defaults to ap-southeast-2"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix in the name of resources"
}

variable "environment" {
  type        = string
  description = "(Optional) Environment that this resource is used for.  Defaults to dev"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 instance type. Default to t2.micro"
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "(Required) Secuiry groups of the EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "(Required) Subnet id this EC2 accosiated to"
}

variable "vol_size" {
  type        = number
  description = "(Optional) Storage size for the EC2"
  default     = 8
}