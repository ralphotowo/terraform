terraform {
  backend "remote" {
    organization = "ochero"

    workspaces {
      name = "compute_instance"
    }
  }
}
