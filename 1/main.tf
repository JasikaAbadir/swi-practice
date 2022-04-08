provider "azurerm" {
   features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.87.0"
    }
  }
  required_version = "1.0.5"
}

resource "azurerm_cosmosdb_account" "db" {
  name                = var.cosmosdb_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  offer_type          = var.offer_type
  kind                = var.kind

  capabilities {
    name = var.capability
  }

  enable_automatic_failover = false

  consistency_policy {
    consistency_level       = "Session"
    max_interval_in_seconds = 5
    max_staleness_prefix    = 100
  }

  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }

  dynamic "backup" {
    for_each = var.backup != null ? ["_"] : []
    content {
      type                = lookup(var.backup, "type", null)
      interval_in_minutes = lookup(var.backup, "interval_in_minutes", null)
      retention_in_hours  = lookup(var.backup, "retention_in_hours", null)
    }
  }
}