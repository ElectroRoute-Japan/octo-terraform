variable "alphaus_principal" {
  type        = string
  description = "The Alphaus account that will have access to your account. Do not change."
}

variable "external_id" {
  type        = string
  description = "The external ID that Alphaus cloud will use to assume the role ARN. Do not change."
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket used to store CUR data and reports that OCTO can ingest"
}

variable "bucket_region" {
  type        = string
  description = "The region of the S3 bucket used to store CUR data"
}
