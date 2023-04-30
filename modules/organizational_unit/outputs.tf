output "aws_organizations_organizational_unit_accounts" {
  description = "List of child accounts for this Organizational Unit."
  value       = aws_organizations_organizational_unit.this.accounts
}

output "aws_organizations_organizational_unit_arn" {
  description = "ARN of the organizational unit"
  value       = aws_organizations_organizational_unit.this.arn
}

output "aws_organizations_organizational_unit_id" {
  description = "Identifier of the organization unit"
  value       = aws_organizations_organizational_unit.this.id
}

output "aws_organizations_organizational_unit_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_organizational_unit.this.tags_all
}