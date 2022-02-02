output "team_id" {
  value       = try(module.tfe_team.id, null)
  description = "The ID of the token"
}

output "team_token" {
  value       = module.tfe_team.token
  description = "The generated token"
  sensitive   = true
}
