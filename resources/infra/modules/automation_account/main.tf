# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/automation_account
resource "azurerm_automation_account" "this" {
  # Required
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.sku_name
  # Optional
  local_authentication_enabled  = var.local_authentication_enabled
  public_network_access_enabled = var.public_network_access_enabled
  # tags = var.tags

  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }

  # encryption {
  #   key_vault_key_id          = var.encryption_key_vault_key_id
  #   user_assigned_identity_id = var.encryption_user_assigned_identity_id
  # }
}
