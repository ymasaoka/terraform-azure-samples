output "id" {
  description = "The ID of the Application Insights resource."
  value       = azurerm_application_insights.this.id
}

output "app_id" {
  description = "The Application ID of the Application Insights resource."
  value       = azurerm_application_insights.this.app_id
}

output "instrumentation_key" {
  description = "The instrumentation key of the Application Insights resource."
  value       = azurerm_application_insights.this.instrumentation_key
}

output "connection_string" {
  description = "The connection string of the Application Insights resource."
  value       = azurerm_application_insights.this.connection_string
}
