output "aws_organizations_policy_id" {
  description = "The unique identifier (ID) of the policy."
  value       = aws_organizations_policy.this.id
}

output "aws_organizations_policy_arn" {
  description = "Amazon Resource Name (ARN) of the policy."
  value       = aws_organizations_policy.this.arn
}

output "aws_organizations_policy_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_policy.this.tags_all
}