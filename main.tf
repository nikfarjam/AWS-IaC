module "networking" {
  source        = "./networking"
  prefix        = var.prefix
  aws_region    = var.aws_region
  environment   = var.environment
  address_space = var.address_space
  public_cidrs  = "10.0.1.0/24"
  private_cidrs = "10.0.2.0/24"
}

locals {
  public_security_groups = [
    module.networking.vpc_security_group_http,
    module.networking.vpc_security_group_https,
    module.networking.vpc_security_group_ssh
  ]
}

module "ec2" {
  source                 = "./ec2"
  prefix                 = var.prefix
  aws_region             = var.aws_region
  environment            = var.environment
  instance_type          = "t2.micro"
  subnet_id              = module.networking.public_subnet_group_name
  vpc_security_group_ids = local.public_security_groups
  vol_size               = 8
}