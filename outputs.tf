output "token" {
  value       = tfe_team_token.default.token
  description = "The generated token"
  sensitive   = true
}
