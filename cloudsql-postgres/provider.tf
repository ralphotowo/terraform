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
  credentials = var.GOOGLE_CREDENTIALS
  project = var.project_id
  region = var.region
}
