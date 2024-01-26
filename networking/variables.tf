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
  description = "(Optional) The address space used by the virtual network. Defaults to 10.0.0.0/16."
  default     = "10.0.0.0/16"
}

variable "public_cidrs" {
  type        = string
  description = "(Optional) The address space used by the public subnet. Defaults to 10.0.1.0/24."
  default     = "10.0.1.0/24"
}

variable "private_cidrs" {
  type        = string
  description = "(Optional) The address space the private subnet uses. Defaults to 10.0.2.0/24."
  default     = "10.0.2.0/24"
}

variable "environment" {
  type        = string
  description = "(Optional) Environment that this resource is used for"
  default     = "dev"
}
