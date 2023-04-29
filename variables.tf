variable "aws_service_access_principals" {
  description = "(Optional) List of AWS service principal names for which you want to enable integration with your organization."
  type        = list(string)
  default = [
    "account.amazonaws.com",
    "aws-artifact-account-sync.amazonaws.com",
    "auditmanager.amazonaws.com",
    "backup.amazonaws.com",
    "member.org.stacksets.cloudformation.amazonaws.com",
    "cloudtrail.amazonaws.com",
    "compute-optimizer.amazonaws.com",
    "config.amazonaws.com",
    "controltower.amazonaws.com",
    "detective.amazonaws.com",
    "devops-guru.amazonaws.com",
    "ds.amazonaws.com",
    "fms.amazonaws.com",
    "access-analyzer.amazonaws.com",
    "guardduty.amazonaws.com",
    "health.amazonaws.com",
    "inspector2.amazonaws.com",
    "license-manager.amazonaws.com",
    "macie.amazonaws.com",
    "license-management.marketplace.amazonaws.com",
    "networkmanager.amazonaws.com",
    "ram.amazonaws.com",
    "securityhub.amazonaws.com",
    "storage-lens.s3.amazonaws.com",
    "servicecatalog.amazonaws.com",
    "servicequotas.amazonaws.com",
    "sso.amazonaws.com",
    "ssm.amazonaws.com",
    "tagpolicies.tag.amazonaws.com",
    "reporting.trustedadvisor.amazonaws.com",
    "wellarchitected.amazonaws.com",
    "ipam.amazonaws.com",
    "reachabilityanalyzer.networkinsights.amazonaws.com",
  ]
}

variable "enabled_policy_types" {
  description = "(Optional) List of Organizations policy types to enable in the Organization Root."
  type        = list(string)
  default = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY",
    "BACKUP_POLICY",
    "AISERVICES_OPT_OUT_POLICY"
  ]
}

variable "feature_set" {
  description = "(Optional) Specify \"ALL\" (default) or \"CONSOLIDATED_BILLING\"."
  type        = string
}