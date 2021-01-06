
output "registry_name" {
  value = "${google_artifact_registry_repository.remote-registry.name}"
}

output "registry_id" {
  value = "${google_artifact_registry_repository.remote-registry.id}"
}