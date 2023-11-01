variable "alphaus_principal" {
  type        = string
  description = "The Alphaus account that will have access to your account. Do not change."
}

variable "alphaus_bucket_name" {
  type        = string
  description = "The name of the S3 bucket used to store CUR data and reports that OCTO can ingest"
}

variable "alphaus_hourly_report_name" {
  type        = string
  default     = "octo_reports_hourly"
  description = "The name to assign to the hourly CUR report"
}

variable "alphaus_hourly_report_prefix" {
  type        = string
  default     = "hourly"
  description = "The default S3 prefix to assign to hourly CUR reports"
}

variable "split_cost_allocation_data" {
  type        = bool
  default     = true
  description = "Whether to split cost allocation data"
}
