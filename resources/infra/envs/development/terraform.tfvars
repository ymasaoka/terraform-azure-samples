# Logging and Monitoring
log_rg_name = "log-audit-rg"
log_rg_location = "japaneast"
log_analytics_workspace_name = "log-platform"
log_local_authentication_enabled = true

# Azure Automation
automation_rg_name = "sample-automation-rg"
automation_rg_location = "japaneast"

automation_account_name = "sample-automation-account"
automation_account_sku_name = "Basic"
automation_account_local_authentication_enabled = false
automation_account_public_network_access_enabled = true
automation_account_identity_type = "SystemAssigned"

automation_variable_string_sample_name = "Sample_Variable_String"
automation_variable_string_sample_description = "This is a sample variable string."
automation_variable_string_sample_value = "SampleValue"

automation_runbook_sample_name = "Test_Manual_Get_DateTime"
automation_runbook_sample_description = "This runbook retrieves the current date and time."

# Azure Functions
function_rg_name = "sample-function-rg"
function_rg_location = "japaneast"
function_app_insights_name = "function-app-insights"
function_app_insights_app_type = "web"
function_app_insights_sampling_percentage = 0
function_app_insights_local_authentication_enabled = true

function_storage_account_name = "functionstr4dev"
function_storage_account_tier = "Standard"
function_storage_account_replication_type = "LRS"
function_storage_account_kind = "StorageV2"
function_storage_account_access_tier = "Hot"
function_storage_account_min_tls_version = "TLS1_2"
function_storage_account_allow_nested_items_to_be_public = true
function_storage_account_public_network_access_enabled = true
function_storage_account_default_to_oauth_authentication = true

function_storage_container_hosts_name = "azure-webjobs-hosts"
function_storage_container_secrets_name = "azure-webjobs-secrets"
function_storage_container_app_packages_name = "azure-webjobs-app-packages-sample"
function_storage_container_access_type = "private"

function_service_plan_name = "ASP-function-sample"
function_service_plan_os_type = "Linux"
function_service_plan_sku_name = "FC1"

function_app_settings = {
  APPLICATIONINSIGHTS_AUTHENTICATION_STRING = "Authorization=AAD"
  AzureWebJobsStorage__credential = "managedidentity"
}
function_name = "sample-function-powershell"
function_storage_container_type = "blobContainer"
function_storage_authentication_type = "SystemAssignedIdentity"
function_runtime_name = "powershell"
function_runtime_version = "7.4"
function_identity_type = "SystemAssigned"
function_app_setting_names = [
  "APPINSIGHTS_INSTRUMENTATIONKEY",
  "APPLICATIONINSIGHTS_CONNECTION_STRING",
  "APPINSIGHTS_PROFILERFEATURE_VERSION",
  "APPINSIGHTS_SNAPSHOTFEATURE_VERSION",
  "ApplicationInsightsAgent_EXTENSION_VERSION",
  "XDT_MicrosoftApplicationInsights_BaseExtensions",
  "DiagnosticServices_EXTENSION_VERSION",
  "InstrumentationEngine_EXTENSION_VERSION",
  "SnapshotDebugger_EXTENSION_VERSION",
  "XDT_MicrosoftApplicationInsights_Mode",
  "XDT_MicrosoftApplicationInsights_PreemptSdk",
  "APPLICATIONINSIGHTS_CONFIGURATION_CONTENT",
  "XDT_MicrosoftApplicationInsightsJava",
  "XDT_MicrosoftApplicationInsights_NodeJS"
]
