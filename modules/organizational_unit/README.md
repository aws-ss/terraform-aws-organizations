<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organizational_unit.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organizational_unit) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name for the organizational unit | `string` | `"PROD"` | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | ID of the parent organizational unit, which may be the root | `string` | `"r-430f"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_organizations_organizational_unit_accounts"></a> [aws\_organizations\_organizational\_unit\_accounts](#output\_aws\_organizations\_organizational\_unit\_accounts) | List of child accounts for this Organizational Unit. |
| <a name="output_aws_organizations_organizational_unit_arn"></a> [aws\_organizations\_organizational\_unit\_arn](#output\_aws\_organizations\_organizational\_unit\_arn) | ARN of the organizational unit |
| <a name="output_aws_organizations_organizational_unit_id"></a> [aws\_organizations\_organizational\_unit\_id](#output\_aws\_organizations\_organizational\_unit\_id) | Identifier of the organization unit |
| <a name="output_aws_organizations_organizational_unit_tags_all"></a> [aws\_organizations\_organizational\_unit\_tags\_all](#output\_aws\_organizations\_organizational\_unit\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->