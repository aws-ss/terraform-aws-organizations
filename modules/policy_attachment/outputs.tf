output "policy_attachment_id" {
  description = "Identifier of the policy attachment, in the format `target_id:policy_id`."
  value       = aws_organizations_policy_attachment.this.id
}
