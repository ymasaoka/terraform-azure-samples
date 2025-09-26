output "id" {
  value       = azurerm_policy_definition.this.id
  description = "The ID of the policy definition."
}

output "role_definition_ids" {
  value       = azurerm_policy_definition.this.role_definition_ids
  description = "A list of role definition ids extracted from policy_rule required for remediation."
}
