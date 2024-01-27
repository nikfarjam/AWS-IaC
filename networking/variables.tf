variable "aws_region" {
  default     = "ap-southeast-2"
  description = "(Optional) AWS region that resources are associated to. Defaults to ap-southeast-2"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix in the name of resources"
}

variable "address_space" {
  type        = string
  description = "(Required) The address space used by the virtual network."
}

variable "public_cidrs" {
  type        = string
  description = "(Required) The address space used by the public subnet."
}

variable "private_cidrs" {
  type        = string
  description = "(Required) The address space the private subnet uses."
  default     = "10.0.2.0/24"
}

variable "environment" {
  type        = string
  description = "(Optional) Environment that this resource is used for.  Defaults to dev"
  default     = "dev"
}
