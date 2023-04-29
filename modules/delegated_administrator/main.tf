resource "aws_organizations_delegated_administrator" "this" {
  account_id        = var.account_id
  service_principal = var.service_principal
}