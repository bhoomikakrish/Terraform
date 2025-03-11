provider "aws" {
  region = ap-south-1a
}
module "vpc" {
  source           = "./modules/vpc"
  vpc_cidr        = "var.vpc_cidr"
  subnet_cidr     = "var.subnet_cidr"
  availability_zone = "var.availability_zone"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id            = "var.ami_id"
  instance_type     = "var.instance_type"
  key_name          = "var.key_name"
  security_group_id = "module.security_group.security_group_id"
  subnet_id         = "module.vpc.subnet_id"
  user_data_file    = "var.user_data_file"
}
