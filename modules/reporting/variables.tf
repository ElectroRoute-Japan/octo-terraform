variable "alphaus_principal" {
  type        = string
  description = "The Alphaus account that will have access to your account. Do not change."
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket used to store CUR data and reports that OCTO can ingest"
}

variable "bucket_region" {
  type        = string
  description = "The region of the S3 bucket used to store CUR data"
}

variable "bucket_option" {
  type        = string
  description = "Whether to use an existing bucket (`USE_EXISTING`) or create a new one (`CREATE_NEW`)"
}

variable "report_prefix" {
  type        = string
  default     = "hourly"
  description = "The prefix that AWS adds to the report name. Your prefix can't include spaces."
}

variable "report_name" {
  type        = string
  default     = "octo_reports_hourly"
  description = "The name to assign to the hourly CUR report"
}

variable "cf_name" {
  type        = string
  default     = "AlphausS3Access"
  description = "What to call the Alphaus CloudFormation template"
}
