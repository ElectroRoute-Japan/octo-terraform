# Since Alphaus doesn't actually have Terraform support, we have to use their CF template instead
resource "aws_cloudformation_stack" "access" {
  name         = var.cf_name
  template_url = "https://cover-cloudformation-templates.s3.ap-northeast-1.amazonaws.com/coverapiaccess-v1.yml"
  capabilities = ["CAPABILITY_NAMED_IAM"]
  on_failure   = "ROLLBACK"
  parameters = {
    Principal  = var.alphaus_principal
    ExternalId = var.external_id
  }
}
