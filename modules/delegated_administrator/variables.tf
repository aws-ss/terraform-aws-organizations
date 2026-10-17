variable "account_id" {
  description = "(Required) The account ID number of the member account in the organization to register as a delegated administrator."
  type        = string

  validation {
    condition     = can(regex("^\\d{12}$", var.account_id))
    error_message = "The account_id must be a 12-digit AWS account ID."
  }
}

variable "service_principal" {
  description = "(Required) The service principal of the AWS service for which you want to make the member account a delegated administrator. Trusted access for the service must be enabled in the organization. Services with their own delegated administrator API (e.g. GuardDuty, Security Hub, Macie, Inspector) should be configured with the service-specific resource instead."
  type        = string
}
