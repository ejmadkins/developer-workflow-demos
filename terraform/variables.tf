variable "project" {
  description = "GCP Project name."
  type        = string
}

variable "gcp_service_list" {
  description = "List of GCP service to be enabled for a project."
  type        = list
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "europe-west2"
}

variable "zone" {
  type        = string
  default = "europe-west2-a"
}
