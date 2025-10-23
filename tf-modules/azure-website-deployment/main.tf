provider "azurerm" {
  features {}
    subscription_id = "e9dd464c-e161-4186-a6cc-b6f99889559f"
}

resource "azurerm_resource_group" "name" {
  name     = var.portfolio-rg
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "name" {
  name                     = var.portfoliostorageacc
  resource_group_name      = azurerm_resource_group.name.name
  location                 = azurerm_resource_group.name.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}

resource "azurerm_storage_account_static_website" "static" {
  storage_account_id = azurerm_storage_account.name.id
  index_document    = "index.html"
}