resource "aws_organizations_policy" "this" {
  content      = var.content
  name         = var.name
  description  = var.description
  skip_destroy = var.skip_destroy
  type         = var.type
  tags         = var.tags
}