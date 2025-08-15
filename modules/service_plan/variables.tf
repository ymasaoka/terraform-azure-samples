variable "name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "location" {
  description = "The location of the App Service Plan."
  type        = string
}

variable "os_type" {
  description = "The operating system type of the App Service Plan."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the App Service Plan."
  type        = string
}

variable "sku_name" {
  description = "The SKU name of the App Service Plan."
  type        = string
}
