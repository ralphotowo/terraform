terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.10.0"
    }
  }
}

provider "google" {
  project = "webapp-prod-341021"
  region = "us-central1"
  zone = "us-central1-c"

}
