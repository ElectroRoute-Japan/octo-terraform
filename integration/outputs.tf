output "alphaus_access_cf_template_id" {
  value       = aws_cloudformation_stack.access.id
  description = "ID of the CloudFormation template used to create the Alphaus access"
}

output "alphaus_access_cf_template_outputs" {
  value       = aws_cloudformation_stack.access.outputs
  description = "Outputs of the CloudFormation template used to create the Alphaus access"
}
