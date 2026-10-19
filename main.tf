resource "aws_organizations_organization" "this" {
  aws_service_access_principals = var.aws_service_access_principals
  enabled_policy_types          = var.enabled_policy_types
  feature_set                   = var.feature_set
  return_organization_only      = var.return_organization_only

  lifecycle {
    precondition {
      condition     = var.feature_set == "ALL" || (length(var.aws_service_access_principals) == 0 && length(var.enabled_policy_types) == 0)
      error_message = "aws_service_access_principals and enabled_policy_types require feature_set to be ALL."
    }
    precondition {
      condition     = !contains(var.enabled_policy_types, "GUARDDUTY_POLICY") || contains(var.aws_service_access_principals, "guardduty.amazonaws.com")
      error_message = "To enable GUARDDUTY_POLICY, aws_service_access_principals must include guardduty.amazonaws.com."
    }
    precondition {
      condition     = !contains(var.enabled_policy_types, "INSPECTOR_POLICY") || contains(var.aws_service_access_principals, "inspector2.amazonaws.com")
      error_message = "To enable INSPECTOR_POLICY, aws_service_access_principals must include inspector2.amazonaws.com."
    }
    precondition {
      condition     = !contains(var.enabled_policy_types, "SECURITYHUB_POLICY") || contains(var.aws_service_access_principals, "securityhub.amazonaws.com")
      error_message = "To enable SECURITYHUB_POLICY, aws_service_access_principals must include securityhub.amazonaws.com."
    }
  }
}