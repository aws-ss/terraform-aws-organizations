<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_close_on_deletion"></a> [close\_on\_deletion](#input\_close\_on\_deletion) | (Optional) If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts. | `bool` | `false` | no |
| <a name="input_create_govcloud"></a> [create\_govcloud](#input\_create\_govcloud) | (Optional) Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. The only way to manage the GovCloud account with Terraform is to subsequently import the account using `aws_organizations_account` resource. | `bool` | `false` | no |
| <a name="input_email"></a> [email](#input\_email) | (Required) Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. Changing this forces a new account. | `string` | n/a | yes |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | (Optional) If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user of the new account can access account billing information. Changes after creation are ignored. | `string` | `"ALLOW"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Friendly name for the member account. | `string` | n/a | yes |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | (Optional) Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID. | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the management account, allowing users in the management account to assume the role. The role has administrator permissions in the new member account. Changes after creation are ignored. | `string` | `"OrganizationAccountAccessRole"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_arn"></a> [account\_arn](#output\_account\_arn) | ARN for this account. |
| <a name="output_account_govcloud_id"></a> [account\_govcloud\_id](#output\_account\_govcloud\_id) | ID for a GovCloud account created with the account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | AWS account ID. |
| <a name="output_account_joined_method"></a> [account\_joined\_method](#output\_account\_joined\_method) | Method by which the account joined the organization. |
| <a name="output_account_joined_timestamp"></a> [account\_joined\_timestamp](#output\_account\_joined\_timestamp) | Date the account became a part of the organization. |
| <a name="output_account_state"></a> [account\_state](#output\_account\_state) | State of the account in the organization. |
| <a name="output_account_tags_all"></a> [account\_tags\_all](#output\_account\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->