resource "google_sql_database_instance" "datascience-apps-db" {
  name                  = "${var.db_name}"
  database_version      = "${var.db_version}"
  project               = "${var.project_id}"
  region                = "${var.region}"
  root_password         = "$(var.db_root_passwd)"
  deletion_protection   = false

  settings {
    tier                = "${var.db_tier}"
    disk_type           = "PD_SSD"
    disk_autoresize     = true
    availability_type   = "REGIONAL"
    activation_policy   = "ALWAYS"

    ip_configuration {
      ipv4_enabled      = true

      authorized_networks {
          name          = "ralph"
          value         = "102.220.190.21/32"
      }
    }

    maintenance_window {
      day               = 7
      hour              = 0
    }

    backup_configuration {
      enabled           = true
      start_time        = "00:00"
    }
  }
}

resource "google_sql_user" "users" {
  name      = "${var.db_name}"
  instance  = google_sql_database_instance.datascience-apps-db.name
  password  = "$(var.db_root_passwd)"
  project   = "${var.project_id}"
}