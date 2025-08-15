output "id" {
  description = "The ID of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.id
}

output "primary_shared_key" {
  description = "The primary shared key of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.primary_shared_key
}

output "secondary_shared_key" {
  description = "The secondary shared key of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.secondary_shared_key
}

output "workspace_id" {
  description = "The ID of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.this.workspace_id
}
