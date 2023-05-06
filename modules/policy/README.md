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
| [aws_organizations_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/organizations_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content"></a> [content](#input\_content) | (Required) The policy content to add to the new policy. | `any` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | (Optional) A description to assign to the policy. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The friendly name to assign to the policy. | `string` | n/a | yes |
| <a name="input_skip_destroy"></a> [skip\_destroy](#input\_skip\_destroy) | (Optional) If set to true, destroy will not delete the policy and instead just remove the resource from state. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | (Optional) The type of policy to create. | `string` | `"SERVICE_CONTROL_POLICY"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_organizations_policy_arn"></a> [aws\_organizations\_policy\_arn](#output\_aws\_organizations\_policy\_arn) | Amazon Resource Name (ARN) of the policy. |
| <a name="output_aws_organizations_policy_id"></a> [aws\_organizations\_policy\_id](#output\_aws\_organizations\_policy\_id) | The unique identifier (ID) of the policy. |
| <a name="output_aws_organizations_policy_tags_all"></a> [aws\_organizations\_policy\_tags\_all](#output\_aws\_organizations\_policy\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->