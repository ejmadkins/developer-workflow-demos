
output "registry_name" {
  value = "${google_artifact_registry_repository.hello-registry.name}"
}

output "registry_id" {
  value = "${google_artifact_registry_repository.hello-registry.id}"
}