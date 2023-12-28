module "vpc" {
  source      = "./modules/vpc"
  aws_region  = var.aws_region
  vpc_cidr    = var.vpc_cidr
}

module "ec2" {
  source         = "./modules/ec2"
  subnet_id      = module.vpc.private_subnet_ids[0]
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
}

module "alb" {
  source      = "./modules/alb"
  aws_region  = var.aws_region
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.public_subnet_ids
}