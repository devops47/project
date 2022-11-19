# configure aws provider
provider "aws" {
  region    = var.region
  profile   = "devops47"
}

# cerate vpc
module "vpc" {
  source                                    = "../modules/vpc"
  region                                    = var.region
  project_name                              = var.project_name
  vpc_cidr                                  = var.cidr
  public_subnet-azi1_cidr                   = var.public_subnet_azi1_cidr
  public_subnet-azi2_cidr                   = var.public_subnet_azi2_cidr
  private_app_subnet_az1_cidr               = var.private_app_subnet_az1
  private_app_subnet_az2_cidr               = var.private_app_subnet_az2
  private_data_subnet_az1_cidr              = var.private_data_subnet_az1
  private_data_subnet_az2_cidr              = var.private_data_subnet_az2
}