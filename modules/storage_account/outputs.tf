output "id" {
  value = azurerm_storage_account.this.id
}

output "primary_location" {
  value = azurerm_storage_account.this.primary_location
}

output "secondary_location" {
  value = azurerm_storage_account.this.secondary_location
}

output "primary_blob_endpoint" {
  value = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_blob_host" {
  value = azurerm_storage_account.this.primary_blob_host
}

output "primary_blob_internet_endpoint" {
  value = azurerm_storage_account.this.primary_blob_internet_endpoint
}

output "primary_blob_internet_host" {
  value = azurerm_storage_account.this.primary_blob_internet_host
}

output "primary_blob_microsoft_endpoint" {
  value = azurerm_storage_account.this.primary_blob_microsoft_endpoint
}

output "primary_blob_microsoft_host" {
  value = azurerm_storage_account.this.primary_blob_microsoft_host
}

output "primary_queue_endpoint" {
  value = azurerm_storage_account.this.primary_queue_endpoint
}

output "primary_table_endpoint" {
  value = azurerm_storage_account.this.primary_table_endpoint
}

output "primary_access_key" {
  value = azurerm_storage_account.this.primary_access_key
}

output "secondary_access_key" {
  value = azurerm_storage_account.this.secondary_access_key
}

output "primary_connection_string" {
  value = azurerm_storage_account.this.primary_connection_string
}

output "secondary_connection_string" {
  value = azurerm_storage_account.this.secondary_connection_string
}

output "primary_blob_connection_string" {
  value = azurerm_storage_account.this.primary_blob_connection_string
}

output "secondary_blob_connection_string" {
  value = azurerm_storage_account.this.secondary_blob_connection_string
}
