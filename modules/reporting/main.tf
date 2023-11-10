# CloudFormation template to create the S3 bucket to which the reports should be written
resource "aws_cloudformation_stack" "s3_access" {
  name         = var.cf_name
  template_url = "https://cover-cloudformation-templates.s3.ap-northeast-1.amazonaws.com/covercurexportdef-v2.yml"
  capabilities = ["CAPABILITY_NAMED_IAM"]
  on_failure   = "ROLLBACK"
  parameters = {
    CurS3BucketName   = var.bucket_name
    CurS3BucketOption = var.bucket_option
    CurS3BucketRegion = var.bucket_region
    CurS3Prefix       = var.report_prefix
    CurReportName     = var.report_name
    Principal         = var.alphaus_principal
  }
}

# The actual CUR report to be generated and stored in S3
# resource "aws_cur_report_definition" "hourly_report" {
#   report_name                = var.alphaus_hourly_report_name
#   time_unit                  = "HOURLY"
#   format                     = "textORcsv"
#   compression                = "GZIP"
#   additional_schema_elements = var.split_cost_allocation_data ? ["RESOURCES", "SPLIT_COST_ALLOCATION_DATA"] : ["RESOURCES"]
#   s3_bucket                  = aws_s3_bucket.octo_reports.id
#   s3_prefix                  = var.alphaus_hourly_report_prefix
#   s3_region                  = aws_s3_bucket.octo_reports.region
#   additional_artifacts       = [] # Required, but must be empty as it causes trouble for OCTO
#   report_versioning          = "CREATE_NEW_REPORT"
# }
