output "name" {
  description = "Namespace used for Kured"
  value       = helm_release.kured[0].name
}

output "version" {
  description = "Version used for Kured"
  value       = helm_release.kured[0].version
}

output "repository" {
  description = "repository used for Kured"
  value       = helm_release.kured[0].repository
}
