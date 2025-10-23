
output "name-storage-account" {
    description = "name of the storage account"
    value = azurerm_storage_account.name.name
  
}

output "resource-group-name" {
    description = "name of the resource group"
    value = azurerm_resource_group.name.name
  
}