resource "google_sql_database_instance" "master" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = var.region

  settings {
    project = var.project
    tier = "db-n1-standard-4"
    root_password = var.root_passwd
    deletion_protection = false
    availability_policy = "REGIONAL"
    disk_size = "200"
    disk_type = "PD_SSD"

    settings.backup_configuration {
        backup_retention_settings
    }

    settings.ip_configuration {
        ipv4_enabled = true
    }

    

  }
}