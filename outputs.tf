output "aws_organizations_account_arn" {
  description = "The ARN for this account."
  value       = aws_organizations_account.this.arn
}

output "aws_organizations_account_govcloud_id" {
  description = "ID for a GovCloud account created with the account."
  value       = aws_organizations_account.this.govcloud_id
}

output "aws_organizations_account_id" {
  description = "The AWS account id."
  value       = aws_organizations_account.this.id
}

output "aws_organizations_account_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_organizations_account.this.tags_all
}