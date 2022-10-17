# terraform-tfe-team

This example will manage the Terraform Cloud/Enterprise team and adds additional
members.

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-team/blob/main/examples/owners/rover.svg?raw=true" width="100%" height="100%">

## Usage

To run this example, you need to execute the following commands:

```shell
$ terraform init
$ terraform plan
$ terraform apply
```

:warning: This example may create resources that cost money. Execute the command
`terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tfe_organization"></a> [tfe\_organization](#module\_tfe\_organization) | dhoppeIT/organization/tfe | ~> 0.1 |
| <a name="module_tfe_team"></a> [tfe\_team](#module\_tfe\_team) | dhoppeIT/team/tfe | ~> 0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_token"></a> [token](#input\_token) | The token used to authenticate with Terraform Cloud/Enterprise | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_team_id"></a> [team\_id](#output\_team\_id) | The ID of the token |
| <a name="output_team_token"></a> [team\_token](#output\_team\_token) | The generated token |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-team/blob/main/LICENSE) for full details.
