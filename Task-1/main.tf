module "my_vpc" {
  source   = "./modules/vpc"
  region   = "ap-south-1"
  vpc_cidr = "10.21.0.0/16"
  vpc_name = var.vpc_name
  public_subnet_cidr = "10.21.64.0/18"
  public_subnet_az = "ap-south-1a"
  private_subnet_cidr = "10.21.0.0/19"
  private_subnet_az = "ap-south-1b"
}

module "private_ec2" {
  source        = "./modules/ec2"
  region        = "us-west-2"
  ami           = "ami-0123456789abcdef0"  # Replace with your AMI ID
  instance_type = "t2.micro"
  subnet_id     = module.my_vpc.private_subnet_id
}

module "my_alb" {
  source = "./modules/alb"
  region                     = "ap-south-1"
  alb_name                   = "my-alb"
  enable_deletion_protection = true
  public_subnets             = [module.my_vpc.public_subnet_id]
}

