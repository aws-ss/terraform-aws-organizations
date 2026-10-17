output "resource_policy_arn" {
  description = "ARN of the resource policy."
  value       = aws_organizations_resource_policy.this.arn
}

output "resource_policy_id" {
  description = "Unique identifier (ID) of the resource policy."
  value       = aws_organizations_resource_policy.this.id
}

output "resource_policy_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_resource_policy.this.tags_all
}
