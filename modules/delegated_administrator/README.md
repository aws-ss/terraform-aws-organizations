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
| [aws_organizations_delegated_administrator.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_delegated_administrator) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | (Required) The account ID number of the member account in the organization to register as a delegated administrator. | `string` | n/a | yes |
| <a name="input_service_principal"></a> [service\_principal](#input\_service\_principal) | (Required) The service principal of the AWS service for which you want to make the member account a delegated administrator. Trusted access for the service must be enabled in the organization. Services with their own delegated administrator API (e.g. GuardDuty, Security Hub, Macie, Inspector) should be configured with the service-specific resource instead. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_delegated_administrator_arn"></a> [delegated\_administrator\_arn](#output\_delegated\_administrator\_arn) | ARN of the delegated administrator's account. |
| <a name="output_delegated_administrator_delegation_enabled_date"></a> [delegated\_administrator\_delegation\_enabled\_date](#output\_delegated\_administrator\_delegation\_enabled\_date) | Date when the account was made a delegated administrator. |
| <a name="output_delegated_administrator_email"></a> [delegated\_administrator\_email](#output\_delegated\_administrator\_email) | Email address that is associated with the delegated administrator's AWS account. |
| <a name="output_delegated_administrator_id"></a> [delegated\_administrator\_id](#output\_delegated\_administrator\_id) | Unique identifier (ID) of the delegated administrator. |
| <a name="output_delegated_administrator_joined_method"></a> [delegated\_administrator\_joined\_method](#output\_delegated\_administrator\_joined\_method) | Method by which the delegated administrator's account joined the organization. |
| <a name="output_delegated_administrator_joined_timestamp"></a> [delegated\_administrator\_joined\_timestamp](#output\_delegated\_administrator\_joined\_timestamp) | Date when the delegated administrator's account became a part of the organization. |
| <a name="output_delegated_administrator_name"></a> [delegated\_administrator\_name](#output\_delegated\_administrator\_name) | Friendly name of the delegated administrator's account. |
| <a name="output_delegated_administrator_status"></a> [delegated\_administrator\_status](#output\_delegated\_administrator\_status) | Status of the delegated administrator's account in the organization. |
<!-- END_TF_DOCS -->