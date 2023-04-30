data "aws_organizations_organization" "org" {}

data "aws_organizations_organizational_units" "ou" {
  parent_id = data.aws_organizations_organization.org.roots[0].id
}

module "unit_prod" {
  source = "../../modules/organizational_unit//"

  name      = "Prod"
  parent_id = data.aws_organizations_organizational_units.ou.parent_id
}

module "unit_beta" {
  source = "../../modules/organizational_unit//"

  name      = "Beta"
  parent_id = data.aws_organizations_organizational_units.ou.parent_id
}