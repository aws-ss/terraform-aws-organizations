variable "name" {
  description = "(Required) Friendly name for the member account."
  type        = string
}

variable "email" {
  description = "(Required) Email address of the owner to assign to the new member account."
  type        = string
}

variable "close_on_deletion" {
  description = "(Optional) If true, a deletion event will close the account."
  type        = bool
  default     = false
}

variable "create_govcloud" {
  description = "(Optional) Whether to also create a GovCloud account."
  type        = bool
  default     = false
}

variable "iam_user_access_to_billing" {
  description = "(Optional) If set to ALLOW, the new account enables IAM users and roles to access account billing information if they have the required permissions."
  type        = string
  default     = "ALLOW"
  validation {
    condition     = can(regex("^(ALLOW|DENY)$", var.iam_user_access_to_billing))
    error_message = "Valid values are ALLOW or DENY."
  }
}

variable "parent_id" {
  description = "(Optional) Parent Organizational Unit ID or Root ID for the account."
  type        = string
  default     = null
}

variable "role_name" {
  description = "(Optional) The name of an IAM role that Organizations automatically preconfigures in the new member account."
  type        = string
  default     = "OrganizationAccountAccessRole"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}