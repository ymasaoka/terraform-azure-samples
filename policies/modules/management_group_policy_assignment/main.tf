# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_assignment
resource "azurerm_management_group_policy_assignment" "this" {
  # Required
  name                             = var.name
  policy_definition_id             = var.policy_definition_id
  management_group_id              = var.management_group_id
  # Optional
  # description                      = var.description
  # display_name                     = var.display_name
  # enforce                          = var.enforce
  # location                         = var.location
  # metadata                         = var.metadata
  # not_scopes                       = var.not_scopes
  # parameters                       = var.parameters
}
