provider "aws" {
  region = "ap-northeast-2"
}

module "organization" {
  source = "../..//"

  aws_service_access_principals = [
    "access-analyzer.amazonaws.com",
    "account.amazonaws.com",
    "agent-registry.amazonaws.com",
    "artifact.amazonaws.com",
    "auditmanager.amazonaws.com",
    "backup.amazonaws.com",
    "billing-cost-management.amazonaws.com",
    "cloudtrail.amazonaws.com",
    "compute-optimizer.amazonaws.com",
    "config.amazonaws.com",
    "controltower.amazonaws.com",
    "cost-optimization-hub.bcm.amazonaws.com",
    "detective.amazonaws.com",
    "devops-guru.amazonaws.com",
    "ds.amazonaws.com",
    "ec2.amazonaws.com",
    "ec2.capacitymanager.amazonaws.com",
    "fms.amazonaws.com",
    "guardduty.amazonaws.com",
    "health.amazonaws.com",
    "iam.amazonaws.com",
    "inspector2.amazonaws.com",
    "ipam.amazonaws.com",
    "license-management.marketplace.amazonaws.com",
    "license-manager-linux-subscriptions.amazonaws.com",
    "license-manager.amazonaws.com",
    "macie.amazonaws.com",
    "member.org.stacksets.cloudformation.amazonaws.com",
    "mgn.amazonaws.com",
    "networkmanager.amazonaws.com",
    "observabilityadmin.amazonaws.com",
    "private-marketplace.marketplace.amazonaws.com",
    "procurement-insights.marketplace.amazonaws.com",
    "ram.amazonaws.com",
    "reachabilityanalyzer.networkinsights.amazonaws.com",
    "reporting.trustedadvisor.amazonaws.com",
    "resiliencehub.amazonaws.com",
    "resource-explorer-2.amazonaws.com",
    "security-ir.amazonaws.com",
    "securityhub.amazonaws.com",
    "securitylake.amazonaws.com",
    "selfservicereporting.managedservices.amazonaws.com",
    "servicecatalog.amazonaws.com",
    "servicequotas.amazonaws.com",
    "ssm.amazonaws.com",
    "sso.amazonaws.com",
    "stacksets.cloudformation.amazonaws.com",
    "storage-lens.s3.amazonaws.com",
    "tagpolicies.tag.amazonaws.com",
    "wellarchitected.amazonaws.com",
  ]
  enabled_policy_types = ["SERVICE_CONTROL_POLICY"]
  feature_set          = "ALL"
}
