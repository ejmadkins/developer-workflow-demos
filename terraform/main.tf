terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google"
    }
  }
}

provider "google-beta" {
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

resource "google_artifact_registry_repository" "remote-registry" {
  provider = google-beta
  location = var.region
  project = var.project
  repository_id = "remote-registry"
  format = "DOCKER"
}

resource "google_container_cluster" "remote-dev-cluster" {
  name               = "remote-dev-cluster"
  location           = "europe-west2-a"
  initial_node_count = 3
  project = var.project

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      env = "dev"
    }
  }
}