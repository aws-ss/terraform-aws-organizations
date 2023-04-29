# terraform-aws-organizations
A Terraform module that creates an AWS Organizations.

## Available Features

- Create AWS Organizations
- Create member account
- Delegated Administrator

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_service_access_principals"></a> [aws\_service\_access\_principals](#input\_aws\_service\_access\_principals) | (Optional) List of AWS service principal names for which you want to enable integration with your organization. | `list(string)` | <pre>[<br>  "account.amazonaws.com",<br>  "aws-artifact-account-sync.amazonaws.com",<br>  "auditmanager.amazonaws.com",<br>  "backup.amazonaws.com",<br>  "member.org.stacksets.cloudformation.amazonaws.com",<br>  "cloudtrail.amazonaws.com",<br>  "compute-optimizer.amazonaws.com",<br>  "config.amazonaws.com",<br>  "controltower.amazonaws.com",<br>  "detective.amazonaws.com",<br>  "devops-guru.amazonaws.com",<br>  "ds.amazonaws.com",<br>  "fms.amazonaws.com",<br>  "access-analyzer.amazonaws.com",<br>  "guardduty.amazonaws.com",<br>  "health.amazonaws.com",<br>  "inspector2.amazonaws.com",<br>  "license-manager.amazonaws.com",<br>  "macie.amazonaws.com",<br>  "license-management.marketplace.amazonaws.com",<br>  "networkmanager.amazonaws.com",<br>  "ram.amazonaws.com",<br>  "securityhub.amazonaws.com",<br>  "storage-lens.s3.amazonaws.com",<br>  "servicecatalog.amazonaws.com",<br>  "servicequotas.amazonaws.com",<br>  "sso.amazonaws.com",<br>  "ssm.amazonaws.com",<br>  "tagpolicies.tag.amazonaws.com",<br>  "reporting.trustedadvisor.amazonaws.com",<br>  "wellarchitected.amazonaws.com",<br>  "ipam.amazonaws.com",<br>  "reachabilityanalyzer.networkinsights.amazonaws.com"<br>]</pre> | no |
| <a name="input_enabled_policy_types"></a> [enabled\_policy\_types](#input\_enabled\_policy\_types) | (Optional) List of Organizations policy types to enable in the Organization Root. | `list(string)` | <pre>[<br>  "SERVICE_CONTROL_POLICY",<br>  "TAG_POLICY",<br>  "BACKUP_POLICY",<br>  "AISERVICES_OPT_OUT_POLICY"<br>]</pre> | no |
| <a name="input_feature_set"></a> [feature\_set](#input\_feature\_set) | (Optional) Specify "ALL" (default) or "CONSOLIDATED\_BILLING". | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->