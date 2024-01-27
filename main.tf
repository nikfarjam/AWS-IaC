module "networking" {
  source           = "./networking"
  prefix           = var.prefix
  aws_region       = var.aws_region
  prefix           = var.prefix
  environment      = var.environment
  address_space    = var.address_space
  public_cidrs     = "10.0.1.0/24"
  private_cidrs    = "10.0.2.0/24"
}
