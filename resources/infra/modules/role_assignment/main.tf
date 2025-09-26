# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment
resource "azurerm_role_assignment" "this" {
  # Required
  scope                                  = var.scope
  # Optional
  # name                                   = var.name
  # role_definition_id                     = var.role_definition_id
  role_definition_name                   = var.role_definition_name
  principal_id                           = var.principal_id
  principal_type                         = var.principal_type
  # condition                              = var.condition
  # condition_version                      = var.condition_version
  # delegated_managed_identity_resource_id = var.delegated_managed_identity_resource_id
  # description                            = var.description
  # skip_service_principal_aad_check       = var.skip_service_principal_aad_check
}
