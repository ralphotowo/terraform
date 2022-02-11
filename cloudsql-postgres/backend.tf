terraform {
  backend "remote" {
    organization = "ochero"

    workspaces {
      name = "terraform"
    }
  }
}
