variable "aws_region" {
  default     = "ap-southeast-2"
  description = "(Optional) AWS region that resources are accosiated to"
}

variable "prefix" {
  type        = string
  description = "(Reguired) Prefix in the name of resources"
}