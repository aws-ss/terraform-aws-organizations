variable "policy_id" {
  description = "(Required) The unique identifier (ID) of the policy that you want to attach to the target. Changing this forces a new policy attachment."
  type        = string

  validation {
    condition     = can(regex("^p-[0-9a-zA-Z_]{8,128}$", var.policy_id))
    error_message = "The policy_id must be a policy ID (p-xxxxxxxx)."
  }
}

variable "target_id" {
  description = "(Required) The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to. Changing this forces a new policy attachment."
  type        = string

  validation {
    condition     = can(regex("^(r-[0-9a-z]{4,32}|\\d{12}|ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$", var.target_id))
    error_message = "The target_id must be a root ID (r-xxxx), a 12-digit account ID or an organizational unit ID (ou-xxxx-xxxxxxxx)."
  }
}

variable "skip_destroy" {
  description = "(Optional) If set to `true`, destroy will not detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy."
  type        = bool
  default     = false
}
