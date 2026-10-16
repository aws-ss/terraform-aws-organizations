variable "aws_service_access_principals" {
  description = "(Optional) List of AWS service principal names for which you want to enable integration with your organization. This is typically in the form of a URL, such as service-abbreviation.amazonaws.com. Organization must have `feature_set` set to `ALL`. Some services do not support enablement via this endpoint."
  type        = list(string)
  default     = []

  validation {
    condition     = alltrue([for principal in var.aws_service_access_principals : can(regex("^[a-z0-9.-]+\\.amazon(aws)?\\.com$", principal))])
    error_message = "Each service principal must be in the form of service-abbreviation.amazonaws.com."
  }
}

variable "enabled_policy_types" {
  description = "(Optional) List of Organizations policy types to enable in the Organization Root. Organization must have `feature_set` set to `ALL`. Valid values: `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY`, `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY`, `TAG_POLICY` and `UPGRADE_ROLLOUT_POLICY`. To enable `INSPECTOR_POLICY`, `aws_service_access_principals` must include `inspector2.amazonaws.com`. To enable `SECURITYHUB_POLICY`, `aws_service_access_principals` must include `securityhub.amazonaws.com`."
  type        = list(string)
  default = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY",
    "BACKUP_POLICY",
    "AISERVICES_OPT_OUT_POLICY"
  ]

  validation {
    condition = alltrue([for policy_type in var.enabled_policy_types : contains([
      "AISERVICES_OPT_OUT_POLICY",
      "BACKUP_POLICY",
      "BEDROCK_POLICY",
      "CHATBOT_POLICY",
      "DECLARATIVE_POLICY_EC2",
      "INSPECTOR_POLICY",
      "RESOURCE_CONTROL_POLICY",
      "S3_POLICY",
      "SECURITYHUB_POLICY",
      "SERVICE_CONTROL_POLICY",
      "TAG_POLICY",
      "UPGRADE_ROLLOUT_POLICY",
    ], policy_type)])
    error_message = "Valid values are AISERVICES_OPT_OUT_POLICY, BACKUP_POLICY, BEDROCK_POLICY, CHATBOT_POLICY, DECLARATIVE_POLICY_EC2, INSPECTOR_POLICY, RESOURCE_CONTROL_POLICY, S3_POLICY, SECURITYHUB_POLICY, SERVICE_CONTROL_POLICY, TAG_POLICY or UPGRADE_ROLLOUT_POLICY."
  }
}

variable "feature_set" {
  description = "(Optional) Specify `ALL` (default) or `CONSOLIDATED_BILLING`."
  type        = string
  default     = "ALL"

  validation {
    condition     = can(regex("^(ALL|CONSOLIDATED_BILLING)$", var.feature_set))
    error_message = "Valid values are ALL or CONSOLIDATED_BILLING."
  }
}

variable "return_organization_only" {
  description = "(Optional) Return (as attributes) only the results of the `DescribeOrganization` API to avoid API limits. When configured to `true` only the `arn`, `feature_set`, `master_account_arn`, `master_account_email` and `master_account_id` attributes will be returned. All others will be empty."
  type        = bool
  default     = false
}
