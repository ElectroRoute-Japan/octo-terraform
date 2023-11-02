output "s3_access_cf_template_id" {
  value       = aws_cloudformation_stack.s3_access.id
  description = "ID of the CloudFormation template used to write CUR reports"
}

output "s3_access_cf_template_outputs" {
  value       = aws_cloudformation_stack.s3_access.outputs
  description = "Outputs of the CloudFormation template used to write CUR reports"
}
