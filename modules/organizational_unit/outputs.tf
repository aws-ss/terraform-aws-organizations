output "organizational_unit_accounts" {
  description = "List of child accounts for this Organizational Unit. Does not return account information for child Organizational Units."
  value       = aws_organizations_organizational_unit.this.accounts
}

output "organizational_unit_arn" {
  description = "ARN of the organizational unit."
  value       = aws_organizations_organizational_unit.this.arn
}

output "organizational_unit_id" {
  description = "Identifier of the organization unit."
  value       = aws_organizations_organizational_unit.this.id
}

output "organizational_unit_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_organizational_unit.this.tags_all
}
