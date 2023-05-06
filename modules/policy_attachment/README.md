<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.66.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_organizations_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_policy_id"></a> [policy\_id](#input\_policy\_id) | (Required) The unique identifier (ID) of the policy that you want to attach to the target. | `string` | n/a | yes |
| <a name="input_skip_destroy"></a> [skip\_destroy](#input\_skip\_destroy) | (Optional) If set to true, destroy will not detach the policy and instead just remove the resource from state. | `bool` | `false` | no |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | (Required) The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->