provider "azurerm" {
  features {}
  subscription_id = "e9dd464c-e161-4186-a6cc-b6f99889559f"
}

resource "azurerm_storage_account" "portfolio_bucket" {
  name                     = var.storage_account_name
  resource_group_name      = var.portfolio_rg
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "name-storage-account" {
  description = "name of the storage account"
  value       = azurerm_storage_account.portfolio_bucket.name
}