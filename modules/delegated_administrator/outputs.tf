output "delegated_administrator_arn" {
  description = "ARN of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.this.arn
}

output "delegated_administrator_delegation_enabled_date" {
  description = "Date when the account was made a delegated administrator."
  value       = aws_organizations_delegated_administrator.this.delegation_enabled_date
}

output "delegated_administrator_email" {
  description = "Email address that is associated with the delegated administrator's AWS account."
  value       = aws_organizations_delegated_administrator.this.email
}

output "delegated_administrator_id" {
  description = "Unique identifier (ID) of the delegated administrator."
  value       = aws_organizations_delegated_administrator.this.id
}

output "delegated_administrator_joined_method" {
  description = "Method by which the delegated administrator's account joined the organization."
  value       = aws_organizations_delegated_administrator.this.joined_method
}

output "delegated_administrator_joined_timestamp" {
  description = "Date when the delegated administrator's account became a part of the organization."
  value       = aws_organizations_delegated_administrator.this.joined_timestamp
}

output "delegated_administrator_name" {
  description = "Friendly name of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.this.name
}

output "delegated_administrator_status" {
  description = "Status of the delegated administrator's account in the organization."
  value       = aws_organizations_delegated_administrator.this.status
}
