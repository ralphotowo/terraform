resource "google_sql_database_instance" "datascience-apps-db" {
  name                  = "${var.db_name}"
  database_version      = "${var.db_version}"
  project               = "${var.project_id}"
  region                = "${var.region}"
  root_password         = "$(var.root_passwd)"
  deletion_protection   = false

  settings {
    tier                = "db-n1-standard-4"
    disk_type           = "PD_SSD"
    availability_type   = "REGIONAL"
    activation_policy   = "ALWAYS"

    ip_configuration {
      ipv4_enabled      = true
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

# resource "google_sql_database_instance" "master" {
#   name             = "master-instance"
#   database_version = "POSTGRES_11"
#   region           = "${var.region}"

#   settings {
#     tier = "db-n1-standard-4"
#     root_password = var.root_passwd
#     deletion_protection = false
#     availability_policy = "REGIONAL"
#     disk_size = "200"
#     disk_type = "PD_SSD"
#     }

# }