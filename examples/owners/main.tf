module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = local.organization_name
  email = local.organization_email

  members = local.organization_members
}

module "tfe_team" {
  source  = "dhoppeIT/team/tfe"
  version = "~> 0.1"

  name         = local.team_name
  organization = module.tfe_organization.name

  organization_membership_id = module.tfe_organization.id
}
