resource "google_service_account" "cloudsql_sa" {
  account_id   = "cloudsql-datascience"
  display_name = "CloudSQL Data-Science Service Account"
  project = var.project_id
}

# resource "google_project_iam_custom_role" "cloudsql_datascience" {
#   role_id     = "cloudsql_datascience"
#   title       = "Data Science DB"
#   description = "A role used to provision and maintain a CloudSQL instance for the data science team."
#   permissions = ["cloudsql.databases.create", "cloudsql.databases.delete", "cloudsql.backupRuns.create", "cloudsql.backupRuns.list", "cloudsql.backupRuns.get", "cloudsql.backupRuns.delete"]
#   project = var.project_id
# }

# resource "google_service_account_iam_binding" "sa_role_binding" {
#   service_account_id = google_service_account.cloudsql_sa.name
#   role    = "roles/cloudsql_datascience"
#   members  = [ 
#     "user:${google_service_account.cloudsql_sa.email}",
#   ]
# }
