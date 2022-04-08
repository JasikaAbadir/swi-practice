module "entitydb_storage" {
  source                  = "../1/"
  //vm details
  vm_name = var.vm_name
  //key details
  key_name = var.key_name
  //cosmos db details
  cosmosdb_name           = var.cosmosdb_name
  resource_group_name     = var.resource_group_name
  resource_group_location = var.azure_region
  offer_type              = var.offer_type
  kind                    = var.kind
  capability              = var.capability
  tags                    = var.tags
}

module "storage_acc" {
  source = "../1/"
  storage_account_name = var.storage_account_name
  account_tier             = var.account_tier
}