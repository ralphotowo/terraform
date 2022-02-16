terraform {
  backend "remote" {
    organization = "ochero"

    workspaces {
      name = "webapp-production-cloudsql-datascience-apps"
    }
  }
}
