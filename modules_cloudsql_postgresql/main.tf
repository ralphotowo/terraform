module "private-service-access" {
  source      = "GoogleCloudPlatform/sql-db/google//modules/private_service_access"
  project_id  = var.project_id
  vpc_network = var.vpc_network
}

module "datascience-sql-db" {
  source  = "GoogleCloudPlatform/sql-db/google//modules/postgresql"
  version = "9.0.0"

  name       = var.name
  tier       = var.tier
  zone       = var.zone
  region     = var.region
  project_id = var.project_id

  user_name           = var.user_name
  user_password       = var.user_password
  enable_default_user = var.enable_default_user

  disk_type        = var.disk_type
  disk_autoresize  = var.disk_autoresize
  database_version = var.database_version

  activation_policy = var.activation_policy
  availability_type = var.availability_type

  ip_configuration     = var.ip_configuration
  deletion_protection  = var.deletion_protection
  backup_configuration = var.backup_configuration

  maintenance_window_day  = var.maintenance_window_day
  maintenance_window_hour = var.maintenance_window_hour

#  depends_on = [module.datascience-sql-db]
}
