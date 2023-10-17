output "alphaus_acct_access_arn" {
  value       = aws_iam_role.alphaus_acct_access_role.arn
  description = "ARN of the role providing Alphaus OCTO with AWS access"
}

output "cloud_saver_tag_manager_arn" {
  value       = aws_iam_policy.cloud_saver_tag_manager_policy.arn
  description = "ARN of the tag-manager policy document used to configure the Cloud Saver role"
}

output "cloud_saver_tag_manager2_arn" {
  value       = aws_iam_policy.cloud_saver_tag_manager_policy2.arn
  description = "ARN of the second tag-manager policy document used to configure the Cloud Saver role"
}

output "cloud_saver_base_arn" {
  value       = aws_iam_policy.cloud_saver_base_policy.arn
  description = "ARN of the base policy document used to configure the Cloud Saver role"
}

output "cloud_saver_base2_arn" {
  value       = aws_iam_policy.cloud_saver_base_policy2.arn
  description = "ARN of the second base policy document used to configure the Cloud Saver role"
}

output "cloud_saver_base3_arn" {
  value       = aws_iam_policy.cloud_saver_base_policy3.arn
  description = "ARN of the third base policy document used to configure the Cloud Saver role"
}

output "cloud_saver_access_arn" {
  value       = aws_iam_role.cloud_saver_role.arn
  description = "ARN of the role created to provide Cloud Saver with AWS access"
}
