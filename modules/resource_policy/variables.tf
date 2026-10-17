variable "content" {
  description = "(Required) Content for the resource policy. The text must be correctly formatted JSON that complies with the syntax for the resource policy's type. An organization can have only one resource policy."
  type        = string
}

variable "tags" {
  description = "(Optional) Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
