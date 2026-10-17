variable "name" {
  description = "(Required) Friendly name for the member account."
  type        = string
}

variable "email" {
  description = "(Required) Email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. Changing this forces a new account."
  type        = string
}

variable "close_on_deletion" {
  description = "(Optional) If true, a deletion event will close the account. Otherwise, it will only remove from the organization. This is not supported for GovCloud accounts."
  type        = bool
  default     = false
}

variable "create_govcloud" {
  description = "(Optional) Whether to also create a GovCloud account. The GovCloud account is tied to the main (commercial) account this resource creates. The only way to manage the GovCloud account with Terraform is to subsequently import the account using `aws_organizations_account` resource."
  type        = bool
  default     = false
}

variable "iam_user_access_to_billing" {
  description = "(Optional) If set to `ALLOW`, the new account enables IAM users and roles to access account billing information if they have the required permissions. If set to `DENY`, then only the root user of the new account can access account billing information. Changes after creation are ignored."
  type        = string
  default     = "ALLOW"

  validation {
    condition     = can(regex("^(ALLOW|DENY)$", var.iam_user_access_to_billing))
    error_message = "Valid values are ALLOW or DENY."
  }
}

variable "parent_id" {
  description = "(Optional) Parent Organizational Unit ID or Root ID for the account. Defaults to the Organization default Root ID."
  type        = string
  default     = null
}

variable "role_name" {
  description = "(Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the management account, allowing users in the management account to assume the role. The role has administrator permissions in the new member account. Changes after creation are ignored."
  type        = string
  default     = "OrganizationAccountAccessRole"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
