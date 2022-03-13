module "vpc" {
  source = "./modules/vpc"

  cidr_vpc = var.cidr_vpc
}

module "ec2" {
  source = "./modules/ec2"

  vpc = module.vpc.vpc
  public1_subnet = module.vpc.aws_public1_subnet
  /* public2_subnet = vpc.aws_public2_subnet
  private1_subnet = vpc.aws_private1_subnet
  private2_subnet = vpc.aws_private2_subnet */
  ssh-key = var.ssh-key
}
