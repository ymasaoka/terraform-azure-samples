resource "azurerm_automation_variable_string" "this" {
  # Required
  name                    = var.name
  resource_group_name     = var.resource_group_name
  automation_account_name = var.automation_account_name
  # Optional
  description             = var.description
  encrypted                = var.encrypted
  value                   = var.value
}
