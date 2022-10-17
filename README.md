# terraform-tfe-team

Terraform module to manage the following Terraform Cloud/Enterprise resources:

* tfe_team
* tfe_team_organization_member
* tfe_team_token

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-team/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.1"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"

  members = [
    "dennis.hoppe@dhoppe.it"
  ]
}

module "tfe_team" {
  source  = "dhoppeIT/team/tfe"
  version = "~> 0.1"

  name         = "owners"
  organization = module.tfe_organization.name

  organization_membership_id = module.tfe_organization.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.30.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_team_organization_member.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_organization_member) | resource |
| [tfe_team_token.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/team_token) | resource |
| [tfe_team.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/team) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_regenerate"></a> [force\_regenerate](#input\_force\_regenerate) | If set to true, a new token will be generated even if a token already exists | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the team | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the organization | `string` | n/a | yes |
| <a name="input_organization_membership_id"></a> [organization\_membership\_id](#input\_organization\_membership\_id) | ID of the organization membership | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the token |
| <a name="output_token"></a> [token](#output\_token) | The generated token |

<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-team/blob/main/LICENSE) for full details.
