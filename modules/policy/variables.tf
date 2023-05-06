variable "content" {
  description = "(Required) The policy content to add to the new policy."
  type        = any
}

variable "name" {
  description = "(Required) The friendly name to assign to the policy."
  type        = string
}

variable "description" {
  description = "(Optional) A description to assign to the policy."
  type        = string
  default     = null
}

variable "skip_destroy" {
  description = "(Optional) If set to true, destroy will not delete the policy and instead just remove the resource from state."
  type        = bool
  default     = false
}

variable "type" {
  description = "(Optional) The type of policy to create."
  type        = string
  default     = "SERVICE_CONTROL_POLICY"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}