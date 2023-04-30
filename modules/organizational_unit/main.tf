resource "aws_organizations_organizational_unit" "this" {
  name      = var.name
  parent_id = var.parent_id
  tags      = var.tags
}