provider "aws" {
  region = var.aws_region
}

module "rds" {
  count = 2
  source                = "./postgres-module"
  db_instance_identifier = "database-${count.index}"
  db_subnet_group_name = "postgres-subnet-group-${count.index}"
  db_username            = var.db_username
  db_password            = var.db_password
  allocated_storage      = var.allocated_storage
}

