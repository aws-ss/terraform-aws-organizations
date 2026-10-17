provider "aws" {
  region = "ap-northeast-2"
}

module "organization" {
  source = "../..//"

  aws_service_access_principals = [
    # "access-analyzer.amazonaws.com",
    # "account.amazonaws.com",
    # "agent-registry.amazonaws.com",
    # "artifact.amazonaws.com",
    # "auditmanager.amazonaws.com",
    # "backup.amazonaws.com",
    # "billing-cost-management.amazonaws.com",
    "cloudtrail.amazonaws.com",
    # "compute-optimizer.amazonaws.com",
    # "config.amazonaws.com",
    # "controltower.amazonaws.com",
    # "cost-optimization-hub.bcm.amazonaws.com",
    # "detective.amazonaws.com",
    # "devops-guru.amazonaws.com",
    # "ds.amazonaws.com",
    # "ec2.amazonaws.com",
    # "ec2.capacitymanager.amazonaws.com",
    # "fms.amazonaws.com",
    "guardduty.amazonaws.com",
    # "health.amazonaws.com",
    # "iam.amazonaws.com",
    # "inspector2.amazonaws.com",
    # "ipam.amazonaws.com",
    # "license-management.marketplace.amazonaws.com",
    # "license-manager-linux-subscriptions.amazonaws.com",
    # "license-manager.amazonaws.com",
    # "macie.amazonaws.com",
    # "member.org.stacksets.cloudformation.amazonaws.com",
    # "mgn.amazonaws.com",
    # "networkmanager.amazonaws.com",
    # "observabilityadmin.amazonaws.com",
    # "private-marketplace.marketplace.amazonaws.com",
    # "procurement-insights.marketplace.amazonaws.com",
    # "ram.amazonaws.com",
    # "reachabilityanalyzer.networkinsights.amazonaws.com",
    # "reporting.trustedadvisor.amazonaws.com",
    # "resiliencehub.amazonaws.com",
    # "resource-explorer-2.amazonaws.com",
    # "security-ir.amazonaws.com",
    # "securityhub.amazonaws.com",
    # "securitylake.amazonaws.com",
    # "selfservicereporting.managedservices.amazonaws.com",
    # "servicecatalog.amazonaws.com",
    # "servicequotas.amazonaws.com",
    # "ssm.amazonaws.com",
    # "sso.amazonaws.com",
    # "stacksets.cloudformation.amazonaws.com",
    # "storage-lens.s3.amazonaws.com",
    # "tagpolicies.tag.amazonaws.com",
    # "wellarchitected.amazonaws.com",
  ]
  enabled_policy_types = ["SERVICE_CONTROL_POLICY", "RESOURCE_CONTROL_POLICY"]
  feature_set          = "ALL"
}

module "ou_beta" {
  source = "../../modules/organizational_unit//"

  name      = "beta"
  parent_id = module.organization.organization_roots[0].id
}

module "ou_prod" {
  source = "../../modules/organizational_unit//"

  name      = "prod"
  parent_id = module.organization.organization_roots[0].id
}

module "account_beta" {
  source = "../../modules/account//"

  name      = "account-beta"
  email     = "account+beta@example.com"
  parent_id = module.ou_beta.organizational_unit_id

  close_on_deletion          = false
  iam_user_access_to_billing = "ALLOW"
  role_name                  = "OrganizationAccountAccessRole"
}

module "account_prod" {
  source = "../../modules/account//"

  name      = "account-prod"
  email     = "account+prod@example.com"
  parent_id = module.ou_prod.organizational_unit_id

  close_on_deletion          = false
  iam_user_access_to_billing = "ALLOW"
  role_name                  = "OrganizationAccountAccessRole"
}

module "delegated_administrator" {
  source = "../../modules/delegated_administrator//"

  account_id        = "123456789012"
  service_principal = "account.amazonaws.com"
}

data "aws_iam_policy_document" "scp_security" {
  statement {
    sid    = "DenySecurityServiceChangesExceptSecurityAdministrator"
    effect = "Deny"
    actions = [
      "cloudtrail:DeleteTrail",
      "cloudtrail:PutEventSelectors",
      "cloudtrail:StopLogging",
      "cloudtrail:UpdateTrail",
      "config:DeleteConfigurationRecorder",
      "config:DeleteDeliveryChannel",
      "config:StopConfigurationRecorder",
      "guardduty:*",
      "securityhub:*",
      "wafv2:Delete*",
      "wafv2:Disassociate*",
      "wafv2:Update*"
    ]
    resources = ["*"]

    condition {
      test     = "ArnNotLike"
      variable = "aws:PrincipalArn"
      values   = ["arn:aws:iam::*:role/SecurityAdministrator"]
    }
  }
}

module "protect_security_services" {
  source = "../../modules/policy//"

  name        = "ProtectSecurityServices"
  description = "Deny changes to security services except from the SecurityAdministrator role."
  content     = data.aws_iam_policy_document.scp_security.json
  type        = "SERVICE_CONTROL_POLICY"
}

module "protect_security_services_attachment" {
  source = "../../modules/policy_attachment//"

  policy_id = module.protect_security_services.policy_id
  target_id = module.organization.organization_roots[0].id
}

data "aws_iam_policy_document" "rcp_s3" {
  statement {
    sid       = "DenyS3AccessExceptCrossAccountRole"
    effect    = "Deny"
    actions   = ["s3:*"]
    resources = ["*"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    condition {
      test     = "ArnNotLikeIfExists"
      variable = "aws:PrincipalArn"
      values   = ["arn:aws:iam::*:role/RcpRoleForS3Bucket"]
    }

    condition {
      test     = "BoolIfExists"
      variable = "aws:PrincipalIsAWSService"
      values   = ["false"]
    }
  }

  statement {
    sid       = "DenyS3AccessOutsideOrganization"
    effect    = "Deny"
    actions   = ["s3:*"]
    resources = ["*"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    condition {
      test     = "StringNotEqualsIfExists"
      variable = "aws:PrincipalOrgID"
      values   = [module.organization.organization_id]
    }

    condition {
      test     = "BoolIfExists"
      variable = "aws:PrincipalIsAWSService"
      values   = ["false"]
    }
  }
}

module "rcp_s3_bucket" {
  source = "../../modules/policy//"

  name        = "RcpForS3Bucket"
  description = "Allow S3 access only from the RcpRoleForS3Bucket role in the organization."
  content     = data.aws_iam_policy_document.rcp_s3.json
  type        = "RESOURCE_CONTROL_POLICY"
}

module "rcp_s3_bucket_attachment" {
  source = "../../modules/policy_attachment//"

  policy_id = module.rcp_s3_bucket.policy_id
  target_id = module.organization.organization_roots[0].id
}
