provider "azurerm" {
  features {}
    subscription_id = "e9dd464c-e161-4186-a6cc-b6f99889559f"
}

resource "azurerm_resource_group" "rgport" {
  name     = "rg-portfolio"
  location = "UK South"
  
}

resource "azurerm_storage_account" "stport" {
  name                     = "aishastportfolio"
  resource_group_name      = azurerm_resource_group.rgport.name
  location                 = azurerm_resource_group.rgport.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_account_static_website" "static" {
  storage_account_id = azurerm_storage_account.stport.id
  index_document    = "index.html"
}

output "website_url" {
  value = azurerm_storage_account.stport.primary_web_endpoint
}