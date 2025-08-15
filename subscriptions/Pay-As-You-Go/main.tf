### Sample: Logging and Monitoring
module "resource_group_log" {
  source     = "../../modules/resource_group"
  name       = var.log_rg_name
  location   = var.log_rg_location
}

module "log_analytics_workspace" {
  source                       = "../../modules/log_analytics_workspace"
  name                         = var.log_analytics_workspace_name
  resource_group_name          = var.log_rg_name
  location                     = var.log_rg_location
  local_authentication_enabled = var.log_local_authentication_enabled
  depends_on = [
    module.resource_group_log
  ]
}

output "log_analytics_workspace_id" {
  value = module.log_analytics_workspace.id
}

### Sample: Main Resources - Azure Functions
module "resource_group_function" {
  source   = "../../modules/resource_group"
  name     = var.function_rg_name
  location = var.function_rg_location
}

module "application_insights_function" {
  source                        = "../../modules/application_insights"
  name                          = var.function_app_insights_name
  resource_group_name           = var.function_rg_name
  location                      = var.function_rg_location
  application_type              = var.function_app_insights_app_type
  sampling_percentage           = var.function_app_insights_sampling_percentage
  workspace_id                  = module.log_analytics_workspace.id
  local_authentication_disabled = var.function_app_insights_local_authentication_enabled
  depends_on = [
    module.resource_group_function
  ]
}

output "application_insights_function_id" {
  value = module.application_insights_function.id
}

output "application_insights_function_connection_string" {
  value = module.application_insights_function.connection_string
  sensitive  = true
}

output "application_insights_function_instrumentation_key" {
  value = module.application_insights_function.instrumentation_key
  sensitive  = true
}

module "storage_account_function" {
  source                          = "../../modules/storage_account"
  name                            = var.function_storage_account_name
  resource_group_name             = var.function_rg_name
  location                        = var.function_rg_location
  account_tier                    = var.function_storage_account_tier
  account_replication_type        = var.function_storage_account_replication_type
  account_kind                    = var.function_storage_account_kind
  access_tier                     = var.function_storage_account_access_tier
  min_tls_version                 = var.function_storage_account_min_tls_version
  allow_nested_items_to_be_public = var.function_storage_account_allow_nested_items_to_be_public
  public_network_access_enabled   = var.function_storage_account_public_network_access_enabled
  default_to_oauth_authentication = var.function_storage_account_default_to_oauth_authentication
  depends_on = [
    module.resource_group_function
  ]
}

output "storage_account_function_id" {
  value = module.storage_account_function.id
}

output "storage_account_function_name" {
  value = module.storage_account_function.name
}

output "storage_account_function_primary_blob_endpoint" {
  value = module.storage_account_function.primary_blob_endpoint
}

output "storage_account_function_primary_queue_endpoint" {
  value = module.storage_account_function.primary_queue_endpoint
}

output "storage_account_function_primary_table_endpoint" {
  value = module.storage_account_function.primary_table_endpoint
}

module "storage_container_function_hosts" {
  source                = "../../modules/storage_container"
  name                  = var.function_storage_container_hosts_name
  storage_account_id    = module.storage_account_function.id
  container_access_type = var.function_storage_container_access_type
  storage_account_name  = module.storage_account_function.name
}

module "storage_container_function_secrets" {
  source                = "../../modules/storage_container"
  name                  = var.function_storage_container_secrets_name
  storage_account_id    = module.storage_account_function.id
  container_access_type = var.function_storage_container_access_type
  storage_account_name  = module.storage_account_function.name
}

module "storage_container_function_app_packages" {
  source                = "../../modules/storage_container"
  name                  = var.function_storage_container_app_packages_name
  storage_account_id    = module.storage_account_function.id
  container_access_type = var.function_storage_container_access_type
  storage_account_name  = module.storage_account_function.name
}

output "storage_container_function_app_packages_id" {
  value = module.storage_container_function_app_packages.id
}

output "storage_container_function_app_packages_endpoint" {
  value = module.storage_container_function_app_packages.storage_container_endpoint
}

module "service_plan_function" {
  source              = "../../modules/service_plan"
  name                = var.function_service_plan_name
  location            = var.function_rg_location
  os_type             = var.function_service_plan_os_type
  resource_group_name = var.function_rg_name
  sku_name            = var.function_service_plan_sku_name
  depends_on = [
    module.resource_group_function
  ]
}

output "service_plan_function_id" {
  value = module.service_plan_function.id
}

locals {
  app_settings = merge(
    var.function_app_settings,
    {
      AzureWebJobsStorage__blobServiceUri  = module.storage_account_function.primary_blob_endpoint
      AzureWebJobsStorage__queueServiceUri = module.storage_account_function.primary_queue_endpoint
      AzureWebJobsStorage__tableServiceUri = module.storage_account_function.primary_table_endpoint
      ADDITIONAL_APP_SETTINGS_VALUE        = var.function_app_settings_additional
    }
  )
}

module "function_app_flex_consumption_sample" {
  source                      = "../../modules/function_app_flex_consumption"
  location                    = var.function_rg_location
  name                        = var.function_name
  resource_group_name         = var.function_rg_name
  service_plan_id             = module.service_plan_function.id
  storage_container_type      = var.function_storage_container_type
  storage_container_endpoint  = module.storage_container_function_app_packages.storage_container_endpoint
  storage_authentication_type = var.function_storage_authentication_type
  runtime_name                = var.function_runtime_name
  runtime_version             = var.function_runtime_version
  # app_settings
  app_settings                = local.app_settings
  # site_config
  site_config_application_insights_connection_string  = module.application_insights_function.connection_string
  site_config_application_insights_key                = module.application_insights_function.instrumentation_key
  # identity
  identity_type      = var.function_identity_type
  # sticky_settings
  app_setting_names  = var.function_app_setting_names
  # tags
  tags = {
    "hidden-link: /app-insights-resource-id" = module.application_insights_function.id
  }
}
