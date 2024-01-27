variable "aws_region" {
  default     = "ap-southeast-2"
  description = "(Optional) AWS region that resources are accosiated to"
}

variable "prefix" {
  type        = string
  description = "(Reguired) Prefix in the name of resources"
}

variable "address_space" {
  type        = string
  description = "(Reguired) Address range for the VPC"
  default     = "10.0.0.0/16"
}

variable "environment" {
  type        = string
  description = "(Optional) Environment that this resource is used for"
  default     = "dev"
}