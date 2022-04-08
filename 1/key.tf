data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "example" {
  name                        = var.key_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name = "standard"
}