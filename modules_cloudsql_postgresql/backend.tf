terraform {
  backend "remote" {
    organization = "ochero"

    workspaces {
      name = "modules_cloudsql_postgresql"
    }
  }
}
