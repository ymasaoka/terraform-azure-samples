# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition
resource "azurerm_policy_definition" "this" {
  # Required
  policy_type         = var.policy_type
  name                = var.name
  display_name        = var.display_name
  mode                = var.mode
  # Optional
  description         = var.description
  management_group_id = var.management_group_id
  policy_rule         = var.policy_rule
  # metadata            = var.metadata
  parameters          = var.parameters
}
