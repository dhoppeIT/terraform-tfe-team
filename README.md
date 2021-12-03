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
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team) | resource |
| [tfe_team_organization_member.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_organization_member) | resource |
| [tfe_team_token.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_regenerate"></a> [force\_regenerate](#input\_force\_regenerate) | If set to true, a new token will be generated even if a token already exists | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the team | `string` | `null` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the organization | `string` | `null` | no |
| <a name="input_organization_membership_id"></a> [organization\_membership\_id](#input\_organization\_membership\_id) | ID of the organization membership | `list(string)` | `[]` | no |
| <a name="input_team_id"></a> [team\_id](#input\_team\_id) | ID of the team | `string` | `null` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The visibility of the team | `string` | `"secret"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_token"></a> [token](#output\_token) | The generated token |

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-team/blob/main/LICENSE) for full details.
