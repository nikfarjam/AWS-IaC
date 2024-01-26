resource "aws_vpc" "diamond_dogs" {
  cidr_block           = var.address_space
  enable_dns_hostnames = true

  tags = {
    name        = "${var.prefix}-vpc-${var.aws_region}"
    environment = var.environment
  }
}

module "networking" {
  source           = "./networking"
  aws_region       = var.aws_region
  prefix           = var.prefix
  environment      = var.environment
  address_space    = var.address_space
  public_cidrs     = "10.0.1.0/24"
  private_cidrs    = "10.0.2.0/24"
}
