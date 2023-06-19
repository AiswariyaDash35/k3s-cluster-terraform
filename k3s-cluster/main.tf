provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "us-east-1"
}

module "master" {
  source         = "./master"
  ami            = var.ami
  instance_type  = var.instance_type
  key_name       = var.key_name
  subnet_id      = var.subnet_id
  security_group = var.security_group
}

module "worker" {
  source            = "./worker"
  ami               = var.ami
  instance_type     = var.instance_type
  key_name          = var.key_name
  subnet_id         = var.subnet_id
  security_group    = var.security_group
  master_private_ip = module.master.master_private_ip
}
