variable "content" {
  description = "(Required) The policy content to add to the new policy. The content must be a valid JSON string that adheres to the rules of the policy `type`."
  type        = string
}

variable "name" {
  description = "(Required) The friendly name to assign to the policy."
  type        = string

  validation {
    condition     = length(var.name) >= 1 && length(var.name) <= 128
    error_message = "The name must be between 1 and 128 characters."
  }
}

variable "description" {
  description = "(Optional) A description to assign to the policy."
  type        = string
  default     = null

  validation {
    condition     = length(var.description == null ? "" : var.description) <= 512
    error_message = "The description must be 512 characters or less."
  }
}

variable "skip_destroy" {
  description = "(Optional) If set to `true`, destroy will not delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy."
  type        = bool
  default     = false
}

variable "type" {
  description = "(Optional) The type of policy to create (e.g. `SERVICE_CONTROL_POLICY`, `RESOURCE_CONTROL_POLICY`, `TAG_POLICY`). Valid values are validated by the AWS provider. The policy type must be enabled in the organization root. Changing this forces a new policy."
  type        = string
  default     = "SERVICE_CONTROL_POLICY"
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
