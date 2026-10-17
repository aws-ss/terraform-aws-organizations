variable "name" {
  description = "(Required) The name for the organizational unit."
  type        = string

  validation {
    condition     = length(var.name) >= 1 && length(var.name) <= 128
    error_message = "The name must be between 1 and 128 characters."
  }
}

variable "parent_id" {
  description = "(Required) ID of the parent organizational unit, which may be the root."
  type        = string

  validation {
    condition     = can(regex("^(r-[0-9a-z]{4,32}|ou-[0-9a-z]{4,32}-[a-z0-9]{8,32})$", var.parent_id))
    error_message = "The parent_id must be a root ID (r-xxxx) or an organizational unit ID (ou-xxxx-xxxxxxxx)."
  }
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
