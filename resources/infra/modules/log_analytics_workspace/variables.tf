variable "name" {
  description = "The name of the Log Analytics Workspace."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Log Analytics Workspace will be created."
  type        = string
}

variable "location" {
  description = "The location where the Log Analytics Workspace will be created."
  type        = string
}

variable "local_authentication_enabled" {
  description = "Whether to enable local authentication for the Log Analytics Workspace."
  type        = bool
  default     = true
}

variable "sku" {
  description = "The SKU of the Log Analytics Workspace."
  type        = string
  default     = "PerGB2018"
}

variable "retention_in_days" {
  description = "The retention period (in days) for the Log Analytics Workspace."
  type        = number
  default     = 30
}

variable "daily_quota_gb" {
  description = "The daily ingestion quota (in GB) for the Log Analytics Workspace."
  type        = number
  default     = -1
}

variable "immediate_data_purge_on_30_days_enabled" {
  description = "Whether to enable immediate data purge for the Log Analytics Workspace."
  type        = bool
  default     = true
}
