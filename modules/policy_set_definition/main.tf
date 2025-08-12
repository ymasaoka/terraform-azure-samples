# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_set_definition
resource "azurerm_policy_set_definition" "this" {
  # Required
  policy_type                 = var.policy_type
  name                        = var.name
  display_name                = var.display_name
  policy_definition_reference {
    policy_definition_id      = var.policy_definition_reference["policy_definition_id"]
  }
  # Optional
  # description                 = var.description
  # metadata                    = var.metadata
  # parameters                  = var.parameters
  # policy_definition_group {
  #   name                      = var.policy_definition_group["name"]
  # }
}
