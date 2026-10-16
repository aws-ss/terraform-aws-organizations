output "organization_accounts" {
  description = "List of organization accounts including the master account. Empty when `return_organization_only` is `true`."
  value       = aws_organizations_organization.this.accounts
}

output "organization_arn" {
  description = "ARN of the organization."
  value       = aws_organizations_organization.this.arn
}

output "organization_id" {
  description = "Identifier of the organization."
  value       = aws_organizations_organization.this.id
}

output "organization_master_account_arn" {
  description = "ARN of the master account."
  value       = aws_organizations_organization.this.master_account_arn
}

output "organization_master_account_email" {
  description = "Email address of the master account."
  value       = aws_organizations_organization.this.master_account_email
}

output "organization_master_account_id" {
  description = "Identifier of the master account."
  value       = aws_organizations_organization.this.master_account_id
}

output "organization_master_account_name" {
  description = "Name of the master account."
  value       = aws_organizations_organization.this.master_account_name
}

output "organization_non_master_accounts" {
  description = "List of organization accounts excluding the master account. Empty when `return_organization_only` is `true`."
  value       = aws_organizations_organization.this.non_master_accounts
}

output "organization_roots" {
  description = "List of organization roots. Empty when `return_organization_only` is `true`."
  value       = aws_organizations_organization.this.roots
}
