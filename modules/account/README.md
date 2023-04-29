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
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | (Optional) If true, a deletion event will close the account. | `bool` | `false` | no |
| <a name="input_create_govcloud"></a> [create\_govcloud](#input\_create\_govcloud) | (Optional) Whether to also create a GovCloud account. | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | (Required) Email address of the owner to assign to the new member account. | `string` | n/a | yes |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | (Optional) If set to ALLOW, the new account enables IAM users and roles to access account billing information if they have the required permissions. | `string` | `"ALLOW"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Friendly name for the member account. | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | (Optional) Parent Organizational Unit ID or Root ID for the account. | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. | `string` | `"OrganizationAccountAccessRole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_organizations_account_arn"></a> [aws\_organizations\_account\_arn](#output\_aws\_organizations\_account\_arn) | The ARN for this account. |
| <a name="output_aws_organizations_account_govcloud_id"></a> [aws\_organizations\_account\_govcloud\_id](#output\_aws\_organizations\_account\_govcloud\_id) | ID for a GovCloud account created with the account. |
| <a name="output_aws_organizations_account_id"></a> [aws\_organizations\_account\_id](#output\_aws\_organizations\_account\_id) | The AWS account id. |
| <a name="output_aws_organizations_account_tags_all"></a> [aws\_organizations\_account\_tags\_all](#output\_aws\_organizations\_account\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->