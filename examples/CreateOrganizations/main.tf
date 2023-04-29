provider "aws" {
  region = "ap-northeast-2"
}

module "enabled_organizations_service" {
  source = "../..//"

  aws_service_access_principals = []
  enabled_policy_types          = []
  feature_set                   = "ALL"
}