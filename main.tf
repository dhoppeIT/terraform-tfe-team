data "tfe_team" "default" {
  name         = var.name
  organization = var.organization
}

resource "tfe_team_organization_member" "default" {
  count = length(var.organization_membership_id)

  team_id                    = data.tfe_team.default.id
  organization_membership_id = count.index
}

resource "tfe_team_token" "default" {
  team_id          = data.tfe_team.default.id
  force_regenerate = var.force_regenerate
}
