module "octo_reporting" {
  source            = "./modules/reporting"
  alphaus_principal = var.alphaus_principal
  bucket_name       = var.bucket_name
  bucket_region     = var.bucket_region
  bucket_option     = "CREATE_NEW"
}

module "octo_integration" {
  source            = "./modules/integration"
  alphaus_principal = var.alphaus_principal
  external_id       = var.external_id
}
