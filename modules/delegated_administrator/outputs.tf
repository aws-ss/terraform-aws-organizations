output "aws_organizations_delegated_administrator_id" {
  description = "The unique identifier (ID) of the delegated administrator."
  value       = aws_organizations_delegated_administrator.this.id
}

output "aws_organizations_delegated_administrator_arn" {
  description = "The Amazon Resource Name (ARN) of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.this.arn
}

output "aws_organizations_delegated_administrator_delegation_enabled_date" {
  description = "The date when the account was made a delegated administrator."
  value       = aws_organizations_delegated_administrator.this.delegation_enabled_date
}

output "aws_organizations_delegated_administrator_email" {
  description = "The email address that is associated with the delegated administrator's AWS account."
  value       = aws_organizations_delegated_administrator.this.email
}

output "aws_organizations_delegated_administrator_joined_method" {
  description = "The method by which the delegated administrator's account joined the organization."
  value       = aws_organizations_delegated_administrator.this.joined_method
}

output "aws_organizations_delegated_administrator_joined_timestamp" {
  description = "The date when the delegated administrator's account became a part of the organization."
  value       = aws_organizations_delegated_administrator.this.joined_timestamp
}

output "aws_organizations_delegated_administrator_name" {
  description = "The friendly name of the delegated administrator's account."
  value       = aws_organizations_delegated_administrator.this.name
}

output "aws_organizations_delegated_administrator_status" {
  description = "The status of the delegated administrator's account in the organization."
  value       = aws_organizations_delegated_administrator.this.status
}