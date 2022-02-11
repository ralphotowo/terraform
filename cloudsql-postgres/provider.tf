terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.10.0"
    }
  }
}

provider "google" {
#  credentials = "${file("account.json")}"

  project = var.project_id
  region = var.region
}
