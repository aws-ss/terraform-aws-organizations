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
| [aws_organizations_delegated_administrator.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_delegated_administrator) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | (Required) The account ID number of the member account in the organization to register as a delegated administrator. | `string` | n/a | yes |
| <a name="input_service_principal"></a> [service\_principal](#input\_service\_principal) | (Required) The service principal of the AWS service for which you want to make the member account a delegated administrator. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_organizations_delegated_administrator_arn"></a> [aws\_organizations\_delegated\_administrator\_arn](#output\_aws\_organizations\_delegated\_administrator\_arn) | The Amazon Resource Name (ARN) of the delegated administrator's account. |
| <a name="output_aws_organizations_delegated_administrator_delegation_enabled_date"></a> [aws\_organizations\_delegated\_administrator\_delegation\_enabled\_date](#output\_aws\_organizations\_delegated\_administrator\_delegation\_enabled\_date) | The date when the account was made a delegated administrator. |
| <a name="output_aws_organizations_delegated_administrator_email"></a> [aws\_organizations\_delegated\_administrator\_email](#output\_aws\_organizations\_delegated\_administrator\_email) | The email address that is associated with the delegated administrator's AWS account. |
| <a name="output_aws_organizations_delegated_administrator_id"></a> [aws\_organizations\_delegated\_administrator\_id](#output\_aws\_organizations\_delegated\_administrator\_id) | The unique identifier (ID) of the delegated administrator. |
| <a name="output_aws_organizations_delegated_administrator_joined_method"></a> [aws\_organizations\_delegated\_administrator\_joined\_method](#output\_aws\_organizations\_delegated\_administrator\_joined\_method) | The method by which the delegated administrator's account joined the organization. |
| <a name="output_aws_organizations_delegated_administrator_joined_timestamp"></a> [aws\_organizations\_delegated\_administrator\_joined\_timestamp](#output\_aws\_organizations\_delegated\_administrator\_joined\_timestamp) | The date when the delegated administrator's account became a part of the organization. |
| <a name="output_aws_organizations_delegated_administrator_name"></a> [aws\_organizations\_delegated\_administrator\_name](#output\_aws\_organizations\_delegated\_administrator\_name) | The friendly name of the delegated administrator's account. |
| <a name="output_aws_organizations_delegated_administrator_status"></a> [aws\_organizations\_delegated\_administrator\_status](#output\_aws\_organizations\_delegated\_administrator\_status) | The status of the delegated administrator's account in the organization. |
<!-- END_TF_DOCS -->