output "account_arn" {
  description = "ARN for this account."
  value       = aws_organizations_account.this.arn
}

output "account_govcloud_id" {
  description = "ID for a GovCloud account created with the account."
  value       = aws_organizations_account.this.govcloud_id
}

output "account_id" {
  description = "AWS account ID."
  value       = aws_organizations_account.this.id
}

output "account_joined_method" {
  description = "Method by which the account joined the organization."
  value       = aws_organizations_account.this.joined_method
}

output "account_joined_timestamp" {
  description = "Date the account became a part of the organization."
  value       = aws_organizations_account.this.joined_timestamp
}

output "account_state" {
  description = "State of the account in the organization."
  value       = aws_organizations_account.this.state
}

output "account_tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_account.this.tags_all
}
