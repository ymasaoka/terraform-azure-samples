# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container
resource "azurerm_storage_container" "this" {
  # Required
  name                              = var.name
  # Optional
  storage_account_id                = var.storage_account_id
  container_access_type             = var.container_access_type
  # default_encryption_scope          = var.default_encryption_scope
  # encryption_scope_override_enabled = var.encryption_scope_override_enabled
  # metadata                          = var.metadata
}