# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_group_policy_set_definition
resource "azurerm_management_group_policy_set_definition" "this" {
  # Required
  policy_type                 = var.policy_type
  name                        = var.name
  display_name                = var.display_name
  management_group_id         = var.management_group_id
  dynamic "policy_definition_reference" {
    for_each = var.policy_definition_reference
    content {
      policy_definition_id = policy_definition_reference.value["policy_definition_id"]
      reference_id         = try(policy_definition_reference.value["reference_id"], null)
    }
  }
  # Optional
  description                 = var.description
  metadata                    = var.metadata
  parameters                  = var.parameters
  # policy_definition_group {
  #   name                      = var.policy_definition_group["name"]
  # }
}
