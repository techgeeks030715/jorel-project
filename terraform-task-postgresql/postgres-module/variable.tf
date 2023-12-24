variable "db_instance_identifier" {
  description = "The identifier for the DB instance"
  type        = string
  default     = "database-"
}

variable "db_instance_class" {
  description = "The instance class of the RDS instance"
  type        = string
  default     = "db.m5.large"
}

variable "db_name" {
  description = "The name of the initial database"
  type        = string
  default     = "postgres"
}

variable "db_username" {
  description = "The master username for the database"
  type        = string
}

variable "db_password" {
  description = "The master password for the database"
  type        = string
}

variable "allocated_storage" {
  description = "The amount of storage (in gibibytes) to allocate to the DB instance"
  type        = number
}

variable "database_subnet_ids" {
  description = "List of subnet IDs for the database subnet group"
  type        = list(string)
  default     = [ "", "", "" ]
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
  default = [ "" ]
}

variable "log_group_name" {
  description = "Name for the CloudWatch log group"
  type        = string
  default     = "/aws/rds/"
}

variable "log_retention_days" {
  description = "Retention period for CloudWatch logs in days"
  type        = number
  default     = 3
}

variable "postgres_version" {
  description = "PostgreSQL engine version"
  type        = string
  default     = "16.1"
}

variable "db_subnet_group_name"{
  type = string
}

