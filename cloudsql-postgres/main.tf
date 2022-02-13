resource "google_sql_database_instance" "master" {
  name             = "master-instance"
  database_version = "POSTGRES_11"
  region           = "${var.region}"

  settings {
    tier = "db-n1-standard-4"
    root_password = var.root_passwd
    deletion_protection = false
    availability_policy = "REGIONAL"
    disk_size = "200"
    disk_type = "PD_SSD"
    }

}