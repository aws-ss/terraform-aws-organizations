variable "policy_id" {
  description = "(Required) The unique identifier (ID) of the policy that you want to attach to the target."
  type        = string
}

variable "target_id" {
  description = "(Required) The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to."
  type        = string
}

variable "skip_destroy" {
  description = "(Optional) If set to true, destroy will not detach the policy and instead just remove the resource from state."
  type        = bool
  default     = false
}