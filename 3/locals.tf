locals {
  vm_name = "Jasikaabadirtestvm"
  key_name = "mykeyfortesting"
  storage_account_name = "jasikaabadirstoragetest"
  account_tier             = "standard"
  cosmosdb_name        = "jasikacosmosdb"
  cosmosdb_capability  = "EnableGremlin"
  cosmosdb_kind        = "GlobalDocumentDB"
  cosmosdb_offer_type  = "Standard"
  rsg_name             = "markrsg"
  azure_region         = "eastus"
  tags = {
    Environment = "Dev"
    Platform    = "pss"
    Component   = "something"
  }
}