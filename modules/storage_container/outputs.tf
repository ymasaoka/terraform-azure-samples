output "id" {
  value = azurerm_storage_container.this.id
}

output "storage_container_endpoint" {
  description = "The endpoint of the storage container"
  value       = "https://${var.storage_account_name}.blob.core.windows.net/${azurerm_storage_container.this.name}"
}
