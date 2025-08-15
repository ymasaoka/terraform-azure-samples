# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
resource "azurerm_resource_group" "this" {
  # Required
  name       = var.name
  location   = var.location
  # Optional
#   managed_by = var.managed_by
#   tags       = var.tags
}
