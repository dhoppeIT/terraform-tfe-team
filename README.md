# terraform-tfe-team

Terraform module to manage the Terraform Cloud/Enterprise resources (tfe_team,
tfe_team_organization_member, tfe_team_token).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-tfe-team/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe-organization" {
  source = "dhoppeIT/organization/tfe"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"

  members = [
    "dennis.hoppe@dhoppe.it"
  ]
}

module "tfe-team" {
  source = "dhoppeIT/team/tfe"

  name                       = "owners"
  organization               = module.tfe-organization.name
  organization_membership_id = module.tfe-organization.id
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-team/blob/main/LICENSE) for full details.
