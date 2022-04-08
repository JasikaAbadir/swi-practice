data "azurerm_client_config" "current" {}

provider "azurerm" {
  features {}
}

module "cosmosdb" {
  source               = "../2/"
  cosmosdb_name        = local.cosmosdb_name
  resource_group_name  = local.rsg_name
  azure_region         = local.azure_region
  offer_type           = local.cosmosdb_offer_type
  kind                 = local.cosmosdb_kind
  capability           = local.cosmosdb_capability
  tags                 = local.tags
  key_name = local.key_name
  vm_name = local.vm_name
  #subnet_id = []
}

module "storage_acc" {
  source = "../2/"
  storage_account_name = var.storage_account_name
  account_tier             = var.account_tier
}