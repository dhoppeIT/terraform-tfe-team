output "id" {
  value       = tfe_team_token.default.id
  description = "The ID of the token"
}

output "token" {
  value       = tfe_team_token.default.token
  description = "The generated token"
  sensitive   = true
}
