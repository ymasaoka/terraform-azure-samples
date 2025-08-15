# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace
resource "azurerm_log_analytics_workspace" "this" {
  # Required
  name                                    = var.name
  resource_group_name                     = var.resource_group_name
  location                                = var.location
  # Optional
  # allow_resource_only_permissions         = var.allow_resource_only_permissions
  local_authentication_enabled            = var.local_authentication_enabled
  sku                                     = var.sku
  retention_in_days                       = var.retention_in_days
  daily_quota_gb                          = var.daily_quota_gb
  # cmk_for_query_forced                    = var.cmk_for_query_forced
  # internet_ingestion_enabled              = var.internet_ingestion_enabled
  # internet_query_enabled                  = var.internet_query_enabled
  # reservation_capacity_in_gb_per_day      = var.reservation_capacity_in_gb_per_day
  # data_collection_rule_id                 = var.data_collection_rule_id
  immediate_data_purge_on_30_days_enabled = var.immediate_data_purge_on_30_days_enabled
  # tags                                    = var.tags
  # identity {
  #   type                                  = var.identity_type
  #   identity_ids                          = var.identity_ids
  # }
}
