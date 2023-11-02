output "access_cf_template_id" {
  value       = module.octo_integration.access_cf_template_id
  description = "ID of the CloudFormation template used to allow OCTO access"
}

output "access_cf_template_outputs" {
  value       = module.octo_integration.access_cf_template_outputs
  description = "Outputs of the CloudFormation template used to allow OCTO access"
}

output "s3_access_cf_template_id" {
  value       = module.octo_reporting.s3_access_cf_template_id
  description = "ID of the CloudFormation template used to write CUR reports"
}

output "s3_access_cf_template_outputs" {
  value       = module.octo_reporting.s3_access_cf_template_outputs
  description = "Outputs of the CloudFormation template used to write CUR reports"
}
