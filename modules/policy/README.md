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
| [aws_organizations_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content"></a> [content](#input\_content) | (Required) The policy content to add to the new policy. The content must be a valid JSON string that adheres to the rules of the policy `type`. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description to assign to the policy. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The friendly name to assign to the policy. | `string` | n/a | yes |
| <a name="input_skip_destroy"></a> [skip\_destroy](#input\_skip\_destroy) | (Optional) If set to `true`, destroy will not delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | (Optional) The type of policy to create (e.g. `SERVICE_CONTROL_POLICY`, `RESOURCE_CONTROL_POLICY`, `TAG_POLICY`). Valid values are validated by the AWS provider. The policy type must be enabled in the organization root. Changing this forces a new policy. | `string` | `"SERVICE_CONTROL_POLICY"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_arn"></a> [policy\_arn](#output\_policy\_arn) | ARN of the policy. |
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | Unique identifier (ID) of the policy. |
| <a name="output_policy_tags_all"></a> [policy\_tags\_all](#output\_policy\_tags\_all) | Map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->