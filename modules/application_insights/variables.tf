variable "name" {
  description = "The name of the Application Insights resource."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the Application Insights resource."
  type        = string
}

variable "location" {
  description = "The location in which to create the Application Insights resource."
  type        = string
}

variable "application_type" {
  description = "The type of application that the Application Insights resource will monitor (e.g., web, other)."
  type        = string
  default     = "web"
}

variable "sampling_percentage" {
  description = "The percentage of telemetry data to sample. Default is 0 (no sampling)."
  type        = number
  default     = 0
}

variable "workspace_id" {
  description = "The ID of the Log Analytics Workspace to link with Application Insights."
  type        = string
}

variable "local_authentication_disabled" {
  description = "Whether local authentication is disabled for the Application Insights resource."
  type        = bool
  default     = true
}
