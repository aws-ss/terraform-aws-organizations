variable "name" {
  description = "The name for the organizational unit"
  type        = string
}

variable "parent_id" {
  description = "ID of the parent organizational unit, which may be the root"
  type        = string
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = null
}