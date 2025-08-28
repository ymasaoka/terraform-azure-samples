variable "log_rg_name" {
  type = string
}

variable "log_rg_location" {
  type = string
}

variable "log_analytics_workspace_name" {
  type = string
}

variable "log_local_authentication_enabled" {
  type    = bool
  default = true
}

variable "automation_rg_name" {
  type = string
}

variable "automation_rg_location" {
  type = string
}

variable "automation_account_name" {
  type = string
}

variable "automation_account_sku_name" {
  type = string
}

variable "automation_account_local_authentication_enabled" {
  type    = bool
  default = false
}

variable "automation_account_public_network_access_enabled" {
  type    = bool
  default = true
}

variable "automation_account_identity_type" {
  type    = string
  default = "SystemAssigned"
}

variable "automation_variable_string_encrypted_false" {
  type    = bool
  default = false
}

variable "automation_variable_string_sample_name" {
  type        = string
}

variable "automation_variable_string_sample_description" {
  type = string
}

variable "automation_variable_string_sample_value" {
  type        = string
}

variable "automation_runbook_type_powershell72" {
  type    = string
  default = "PowerShell72"
}

variable "automation_runbook_log_progress_false" {
  type    = bool
  default = false
}

variable "automation_runbook_log_verbose_false" {
  type    = bool
  default = false
}

variable "automation_runbook_log_activity_trace_level_0" {
  type    = number
  default = 0
}

variable "automation_runbook_sample_name" {
  type = string
}

variable "automation_runbook_sample_description" {
  type = string
}

variable "function_rg_name" {
  type = string
}

variable "function_rg_location" {
  type = string
}

variable "function_app_insights_name" {
  type = string
}

variable "function_app_insights_app_type" {
  type = string
}

variable "function_app_insights_sampling_percentage" {
  type    = number
  default = 0
}

variable "function_app_insights_local_authentication_enabled" {
  type    = bool
  default = true
}

variable "function_storage_account_name" {
  type = string
}

variable "function_storage_account_tier" {
  type = string
}

variable "function_storage_account_replication_type" {
  type = string
}

variable "function_storage_account_kind" {
  type = string
}

variable "function_storage_account_access_tier" {
  type = string
}

variable "function_storage_account_min_tls_version" {
  type = string
}

variable "function_storage_account_allow_nested_items_to_be_public" {
  type    = bool
  default = false
}

variable "function_storage_account_public_network_access_enabled" {
  type    = bool
  default = true
}

variable "function_storage_account_default_to_oauth_authentication" {
  type    = bool
  default = true
}

variable "function_storage_container_hosts_name" {
  type        = string
}

variable "function_storage_container_access_type" {
  type        = string
  default     = "private"
}

variable "function_storage_container_secrets_name" {
  type        = string
}

variable "function_storage_container_app_packages_name" {
  type        = string
}

variable "function_service_plan_name" {
  type        = string
}

variable "function_service_plan_os_type" {
  type        = string
}

variable "function_service_plan_sku_name" {
  type        = string
}

variable "function_app_settings" {
  type        = map(string)
}

variable "function_name" {
  type        = string
}

variable "function_storage_container_type" {
  type        = string
  default     = "blobContainer"
}

variable "function_storage_authentication_type" {
  type        = string
  default     = "SystemAssignedIdentity"
}

variable "function_runtime_name" {
  type        = string
  default     = "dotnet-isolated"
}

variable "function_runtime_version" {
  type        = string
  default     = "8.0"
}

variable "function_identity_type" {
  type        = string
  default     = "SystemAssigned"
}

variable "function_app_setting_names" {
  description = "Names of the application settings for the Function App"
  type        = list(string)
  default     = []
}

# From Actions
variable "azure_deployment_principal_id" {
  description = "The principal ID of the Azure deployment"
  type        = string
  default     = ""
}

variable "function_app_settings_additional" {
  description = "Additional application settings for the Function App"
  type        = string
  default     = ""
}
