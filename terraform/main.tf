terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google"
    }
  }
}

provider "google-beta" {

  #credentials = file(var.credentials_file)
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_project_service" "gcp_services" {
  count   = length(var.gcp_service_list)
  project = var.project
  service = var.gcp_service_list[count.index]

  disable_dependent_services = true
}

resource "google_artifact_registry_repository" "hello-registry" {
  provider = google-beta
  location = var.region
  repository_id = "hello-registry"
  description = "example docker repository"
  format = "DOCKER"
}

