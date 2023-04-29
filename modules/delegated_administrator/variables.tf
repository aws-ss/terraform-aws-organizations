variable "account_id" {
  description = "(Required) The account ID number of the member account in the organization to register as a delegated administrator."
  type        = string
}

variable "service_principal" {
  description = "(Required) The service principal of the AWS service for which you want to make the member account a delegated administrator."
  type        = string
}