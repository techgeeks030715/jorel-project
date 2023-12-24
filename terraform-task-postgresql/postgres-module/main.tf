resource "aws_db_instance" "rds_postgres" {
  identifier           = var.db_instance_identifier
  instance_class       = var.db_instance_class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  allocated_storage    = var.allocated_storage
  engine               = "postgres"
  engine_version       = var.postgres_version
  multi_az             = false
  publicly_accessible  = true
  skip_final_snapshot  = true

  vpc_security_group_ids = var.vpc_security_group_ids

  db_subnet_group_name     = aws_db_subnet_group.rds_subnet_group.name

  tags = {
    Name = var.db_instance_identifier
  }
  enabled_cloudwatch_logs_exports = ["postgresql"]

  depends_on = [aws_cloudwatch_log_group.rds_log_group]
  
}

resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = var.db_subnet_group_name
  description = "DB subnet group for RDS PostgreSQL"
  subnet_ids  = var.database_subnet_ids
}

resource "aws_cloudwatch_log_group" "rds_log_group" {
  name              = "/aws/rds/instance/${var.db_instance_identifier}/postgresql"
  retention_in_days = var.log_retention_days
}
