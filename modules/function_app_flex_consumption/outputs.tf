output "id" {
  value       = azurerm_function_app_flex_consumption.this.id
  description = "The ID of the Function App Flex Consumption"
}

output "system_assigned_managed_identity_principal_id" {
  value       = azurerm_function_app_flex_consumption.this.identity[0].principal_id
  description = "The Object ID of the System Assigned Managed Identity"
}
