terraform {
  backend "gcs" {
    bucket = "hibooks-nonfiction-cdn-iaac"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = local.location
}