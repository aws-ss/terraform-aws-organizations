output "policy_arn" {
  description = "ARN of the policy."
  value       = aws_organizations_policy.this.arn
}

output "policy_id" {
  description = "Unique identifier (ID) of the policy."
  value       = aws_organizations_policy.this.id
}

output "policy_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_policy.this.tags_all
}
