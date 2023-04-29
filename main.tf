resource "aws_organizations_account" "this" {
  email                      = var.email
  name                       = var.name
  close_on_deletion          = var.close_on_deletion
  create_govcloud            = var.create_govcloud
  iam_user_access_to_billing = var.iam_user_access_to_billing
  parent_id                  = var.parent_id
  role_name                  = var.role_name
  tags                       = var.tags
}