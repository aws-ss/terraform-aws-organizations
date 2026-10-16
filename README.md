# terraform-aws-organizations
A Terraform module that creates an AWS Organizations.

## Available Features

- Create AWS Organizations
- Create member account
- Create organizational unit
- Delegated Administrator
- Manage an AWS Organizations policy

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
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | (Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint. | `list(string)` | `[]` | no |
| <a name="input_enabled_policy_types"></a> [enabled\_policy\_types](#input\_enabled\_policy\_types) | (Optional) List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. Valid values: `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`. To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`. | `list(string)` | <pre>[<br/>  "SERVICE_CONTROL_POLICY",<br/>  "TAG_POLICY",<br/>  "BACKUP_POLICY",<br/>  "AISERVICES_OPT_OUT_POLICY"<br/>]</pre> | no |
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | (Optional) Specify `ALL` (default) or `CONSOLIDATED_BILLING`. | `string` | `"ALL"` | no |
| <a name="input_return_organization_only"></a> [return\_organization\_only](#input\_return\_organization\_only) | (Optional) Return (as attributes) only the results of the `DescribeOrganization` API to avoid API limits. When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_organization_accounts"></a> [organization\_accounts](#output\_organization\_accounts) | List of organization accounts including the master account. Empty when `return_organization_only` is `true`. |
| <a name="output_organization_arn"></a> [organization\_arn](#output\_organization\_arn) | ARN of the organization. |
| <a name="output_organization_id"></a> [organization\_id](#output\_organization\_id) | Identifier of the organization. |
| <a name="output_organization_master_account_arn"></a> [organization\_master\_account\_arn](#output\_organization\_master\_account\_arn) | ARN of the master account. |
| <a name="output_organization_master_account_email"></a> [organization\_master\_account\_email](#output\_organization\_master\_account\_email) | Email address of the master account. |
| <a name="output_organization_master_account_id"></a> [organization\_master\_account\_id](#output\_organization\_master\_account\_id) | Identifier of the master account. |
| <a name="output_organization_master_account_name"></a> [organization\_master\_account\_name](#output\_organization\_master\_account\_name) | Name of the master account. |
| <a name="output_organization_non_master_accounts"></a> [organization\_non\_master\_accounts](#output\_organization\_non\_master\_accounts) | List of organization accounts excluding the master account. Empty when `return_organization_only` is `true`. |
| <a name="output_organization_roots"></a> [organization\_roots](#output\_organization\_roots) | List of organization roots. Empty when `return_organization_only` is `true`. |
<!-- END_TF_DOCS -->