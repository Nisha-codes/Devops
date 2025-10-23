variable "portfolio-rg" {
  description = "The name of the resource group."
  type        = string
    default = "rgroup-portfolio"
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default = "UK South"
}

variable "portfoliostorageacc" {
  description = "The name of the storage account."
  type        = string
  default = "nanaportstorageaccount1"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}