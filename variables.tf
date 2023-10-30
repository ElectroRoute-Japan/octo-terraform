variable "account_id" {
  type        = string
  description = "The AWS account ID to which OCTO should be given access."
}

variable "alphaus_principal" {
  type        = string
  description = "The Alphaus account that will have access to your account. Do not change."
}

variable "alphaus_external_id" {
  type        = string
  description = "The external ID that Alphaus cloud will use to assume the role ARN. Do not change."
}

variable "alphaus_cf_name" {
  type        = string
  default     = "AlphausAccountAccess"
  description = "What to call the Alphaus CloudFormation template"
}

variable "alphaus_enable_ec2_management" {
  type        = bool
  default     = false
  description = "Whether or not EC2 management should be enabled (will allow OCTO to start/stop/terminate EC2 instances)"
}

variable "alphaus_allow_self_policy_update" {
  type        = bool
  default     = false
  description = "Whether or not OCTO can update its own access policy. Allows it to handle its own updates."
}
