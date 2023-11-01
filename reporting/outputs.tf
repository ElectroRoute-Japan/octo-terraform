output "cur_reporting_bucket_arn" {
  value       = aws_s3_bucket.octo_reports.arn
  description = "ARN of the S3 bucket that will be used to store CUR reports for OCTO"
}

output "cur_report_arn" {
  value       = aws_cur_report_definition.hourly_report.arn
  description = "ARN of the CUR report that will be used for OCTO"
}

output "octo_report_access_role" {
  value       = aws_iam_role.alphaus_reports_access_role.arn
  description = "ARN of the role allowing OCTO to access CUR reports"
}
