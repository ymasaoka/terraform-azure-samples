variable "location" {
  description = "The Azure region where the function app will be created."
  type        = string
}

variable "name" {
  description = "The name of the function app."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the function app will be created."
  type        = string
}

variable "service_plan_id" {
  description = "The ID of the service plan to use for the function app."
  type        = string
}

variable "storage_container_type" {
  description = "The type of storage container to use for the function app."
  type        = string
  default     = "blobContainer"
}

variable "storage_container_endpoint" {
  description = "The endpoint URL of the storage container to use for the function app."
  type        = string
}

variable "storage_authentication_type" {
  description = "The authentication type to use for the storage container."
  type        = string
  default     = "ManagedIdentity"
}

variable "runtime_name" {
  description = "The name of the runtime to use for the function app."
  type        = string
}

variable "runtime_version" {
  description = "The version of the runtime to use for the function app."
  type        = string
}

variable "app_settings" {
  description = "A map of application settings for the function app."
  type        = map(string)
}

variable "client_certificate_mode" {
  description = "The client certificate mode to use for the function app."
  type        = string
  default     = "Optional"
}

variable "https_only" {
  description = "Whether to allow only HTTPS traffic to the function app."
  type        = bool
  default     = false
}

variable "maximum_instance_count" {
  description = "The maximum number of instances for the function app."
  type        = number
  default     = 100
}

variable "instance_memory_in_mb" {
  description = "The amount of memory (in MB) allocated to each instance of the function app."
  type        = number
  default     = 2048
}

variable "tags" {
  description = "A map of tags to assign to the function app."
  type        = map(string)
  default     = {}
}

variable "webdeploy_publish_basic_authentication_enabled" {
  description = "Whether to enable basic authentication for web deploy publishing."
  type        = bool
  default     = true
}

# site_config
variable "site_config_application_insights_connection_string" {
  description = "The connection string for Application Insights."
  type        = string
  default     = null
}

variable "site_config_application_insights_key" {
  description = "The instrumentation key for Application Insights."
  type        = string
  default     = null
}

variable "site_config_container_registry_use_managed_identity" {
  description = "Whether to use managed identity for the container registry."
  type        = bool
  default     = false
}

variable "site_config_default_documents" {
  description = "The default documents for the function app."
  type        = list(string)
  default     = []
}

variable "site_config_http2_enabled" {
  description = "Whether to enable HTTP/2 for the function app."
  type        = bool
  default     = false
}

variable "site_config_load_balancing_mode" {
  description = "The load balancing mode for the function app."
  type        = string
  default     = "LeastRequests"
}

variable "site_config_managed_pipeline_mode" {
  description = "The managed pipeline mode for the function app."
  type        = string
  default     = "Integrated"
}

variable "site_config_minimum_tls_version" {
  description = "The minimum TLS version for the function app."
  type        = string
  default     = "1.2"
}

variable "site_config_remote_debugging_enabled" {
  description = "Whether to enable remote debugging for the function app."
  type        = bool
  default     = false
}

variable "site_config_remote_debugging_version" {
  description = "The version of the remote debugging for the function app."
  type        = string
  default     = "VS2022"
}

variable "site_config_runtime_scale_monitoring_enabled" {
  description = "Whether to enable runtime scale monitoring for the function app."
  type        = bool
  default     = false
}

variable "site_config_scm_minimum_tls_version" {
  description = "The minimum TLS version for the SCM endpoint."
  type        = string
  default     = "1.2"
}

variable "site_config_scm_use_main_ip_restriction" {
  description = "Whether to use the main IP restriction for the SCM endpoint."
  type        = bool
  default     = false
}

variable "site_config_use_32_bit_worker" {
  description = "Whether to use 32-bit worker processes for the function app."
  type        = bool
  default     = false
}

variable "site_config_websockets_enabled" {
  description = "Whether to enable WebSockets for the function app."
  type        = bool
  default     = false
}

variable "site_config_worker_count" {
  description = "The number of workers for the function app."
  type        = number
  default     = 1
}

# cors
variable "cors_allowed_origins" {
  description = "A list of allowed origins for CORS."
  type        = list(string)
  default     = ["https://portal.azure.com"]
}

variable "cors_support_credentials" {
  description = "Whether to support credentials for CORS."
  type        = bool
  default     = false
}

# identity
variable "identity_type" {
  description = "The type of identity to use for the function app."
  type        = string
  default     = "SystemAssigned"
}

variable "identity_ids" {
  description = "A list of user-assigned identity IDs to assign to the function app."
  type        = list(string)
  default     = []
}

# sticky_settings
variable "app_setting_names" {
  description = "A list of app setting names to stick to the function app."
  type        = list(string)
  default     = []
}
