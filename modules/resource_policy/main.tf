resource "aws_organizations_resource_policy" "this" {
  content = var.content
  tags    = var.tags
}
