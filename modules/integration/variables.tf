variable "alphaus_principal" {
  type        = string
  description = "The Alphaus account that will have access to your account. Do not change."
}

variable "external_id" {
  type        = string
  description = "The external ID that Alphaus cloud will use to assume the role ARN. Do not change."
}

variable "cf_name" {
  type        = string
  default     = "AlphausAccountAccess"
  description = "What to call the Alphaus CloudFormation template"
}
