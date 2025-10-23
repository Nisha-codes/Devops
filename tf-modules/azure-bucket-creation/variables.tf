variable "portfolio_rg" {
  description = "The name of the resource group."
  type        = string
  default     = "rgroup-portfolio"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "UK South"
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}