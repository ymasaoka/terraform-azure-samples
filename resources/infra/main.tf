### Sample: Logging and Monitoring
module "resource_group_log" {
  source     = "../../modules/resource_group"
  name       = var.log_rg_name
  location   = var.log_rg_location
}

output "resource_group_log_name" {
  value = module.resource_group_log.name
}

output "resource_group_log_location" {
  value = module.resource_group_log.location
}

module "log_analytics_workspace" {
  source                       = "../../modules/log_analytics_workspace"
  name                         = var.log_analytics_workspace_name
  resource_group_name          = module.resource_group_log.name
  location                     = module.resource_group_log.location
  local_authentication_enabled = var.log_local_authentication_enabled
}

output "log_analytics_workspace_id" {
  value = module.log_analytics_workspace.id
}

### Sample: Main Resources - Azure Automation
module "resource_group_automation" {
  source   = "../../modules/resource_group"
  name     = var.automation_rg_name
  location = var.automation_rg_location
}

output "resource_group_automation_name" {
  value = module.resource_group_automation.name
}

output "resource_group_automation_location" {
  value = module.resource_group_automation.location
}

module "automation_account" {
  source                        = "../../modules/automation_account"
  name                          = var.automation_account_name
  resource_group_name           = module.resource_group_automation.name
  location                      = module.resource_group_automation.location
  sku_name                      = var.automation_account_sku_name
  local_authentication_enabled  = var.automation_account_local_authentication_enabled
  public_network_access_enabled = var.automation_account_public_network_access_enabled
  # identity
  identity_type                 = var.automation_account_identity_type
}

output "automation_account_name" {
  value = module.automation_account.name
}

module "automation_variable_string_sample" {
  source                  = "../../modules/automation_variable_string"
  name                    = var.automation_variable_string_sample_name
  resource_group_name     = module.resource_group_automation.name
  automation_account_name = module.automation_account.name
  # Optional
  description             = var.automation_variable_string_sample_description
  encrypted               = var.automation_variable_string_encrypted_false
  value                   = var.automation_variable_string_sample_value
}

module "automation_runbook_sample_manual" {
  source                    = "../../modules/automation_runbook"
  name                      = var.automation_runbook_sample_name
  location                  = module.resource_group_automation.location
  resource_group_name       = module.resource_group_automation.name
  automation_account_name   = module.automation_account.name
  runbook_type              = var.automation_runbook_type_powershell72
  log_progress              = var.automation_runbook_log_progress_false
  log_verbose               = var.automation_runbook_log_verbose_false
  description               = var.automation_runbook_sample_description
  content                   = file("${path.root}/../src/automation/manual/Test_Manual_Get_DateTime.ps1")
  log_activity_trace_level  = var.automation_runbook_log_activity_trace_level_0
}

### Sample: Main Resources - Azure Functions
module "resource_group_function" {
  source   = "../../modules/resource_group"
  name     = var.function_rg_name
  location = var.function_rg_location
}

output "resource_group_function_name" {
  value = module.resource_group_function.name
}

output "resource_group_function_location" {
  value = module.resource_group_function.location
}

module "application_insights_function" {
  source                        = "../../modules/application_insights"
  name                          = var.function_app_insights_name
  resource_group_name           = module.resource_group_function.name
  location                      = module.resource_group_function.location
  application_type              = var.function_app_insights_app_type
  sampling_percentage           = var.function_app_insights_sampling_percentage
  workspace_id                  = module.log_analytics_workspace.id
  local_authentication_disabled = var.function_app_insights_local_authentication_enabled
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
  resource_group_name             = module.resource_group_function.name
  location                        = module.resource_group_function.location
  account_tier                    = var.function_storage_account_tier
  account_replication_type        = var.function_storage_account_replication_type
  account_kind                    = var.function_storage_account_kind
  access_tier                     = var.function_storage_account_access_tier
  min_tls_version                 = var.function_storage_account_min_tls_version
  allow_nested_items_to_be_public = var.function_storage_account_allow_nested_items_to_be_public
  public_network_access_enabled   = var.function_storage_account_public_network_access_enabled
  default_to_oauth_authentication = var.function_storage_account_default_to_oauth_authentication
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
  location            = module.resource_group_function.location
  os_type             = var.function_service_plan_os_type
  resource_group_name = module.resource_group_function.name
  sku_name            = var.function_service_plan_sku_name
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
  location                    = module.resource_group_function.location
  name                        = var.function_name
  resource_group_name         = module.resource_group_function.name
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

output "function_app_flex_consumption_id" {
  value = module.function_app_flex_consumption_sample.id
}

output "function_app_flex_consumption_system_assigned_managed_identity_principal_id" {
  value = module.function_app_flex_consumption_sample.system_assigned_managed_identity_principal_id
}

### Sample: Azure RBAC - Managed identities for Function App
module "role_assignment_storage_blob_data_contributor_function_app" {
  source                = "../../modules/role_assignment"
  scope                 = module.storage_container_function_app_packages.id
  role_definition_name  = "Storage Blob Data Contributor"
  principal_id          = module.function_app_flex_consumption_sample.system_assigned_managed_identity_principal_id
  principal_type        = "ServicePrincipal"
}

module "role_assignment_monitoring_metrics_publisher_function_app" {
  source                = "../../modules/role_assignment"
  scope                 = module.application_insights_function.id
  role_definition_name  = "Monitoring Metrics Publisher"
  principal_id          = module.function_app_flex_consumption_sample.system_assigned_managed_identity_principal_id
  principal_type        = "ServicePrincipal"
}

module "role_assignment_website_contributor_function_app" {
  source                = "../../modules/role_assignment"
  scope                 = module.function_app_flex_consumption_sample.id
  role_definition_name  = "Website Contributor"
  principal_id          = var.azure_deployment_principal_id
  principal_type        = "ServicePrincipal"
}
